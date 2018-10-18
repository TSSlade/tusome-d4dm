
disp as error "Entering variable normalization .do file"

unab fullvarlist: *
foreach f of loc fullvarlist {
    capture confirm str var `f'
    if _rc == 0 {
        replace `f' = subinstr(`f', "[", "", .)
        replace `f' = subinstr(`f', "]", "", .)
        replace `f' = subinstr(`f', "pls record details", "", .)
        replace `f' = subinword(`f', "NA", "N/A", .)
    }
}

if instrument[1] == 1 {
    local ynvals "vis_before vis_act_kids vis_act_ht vis_act_fdbk vis_act_gen vis_act_other vis_act_na cso_usetab_yn cso_usepcl_yn cso_usetab_pup_yn cso_gave_fdbk_yn cso_usetab_fdbk_yn cso_fdbk_remember cso_fdbk_showtab_yn cso_shw_tips cso_shw_fluency cso_shw_video cso_shw_lsnd cso_shw_other cso_shw_na cso_ref_prev_fdbk_yn cso_fdbk_better_tus cso_fdbk_better_nont cso_fdbk_discfluency cso_fdbk_flu_useful cso_tab_distract_yn cso_tab_fdbk_distrac cso_pres_ass_tab cso_pup_distract_ass tchr_ass_pup_flu_yn tch_mob_phone tch_has_android tch_wants_assess"
    foreach item of local ynvals {
        capture confirm str var `item'
        if _rc == 0 {
            replace `item' = "0" if upper(`item') == "NO"
            replace `item' = "1" if upper(`item') == "YES"
            replace `item' = ".m" if `item' == "pls make selection"
            //replace `item' = ".s" if `item' == "[pls record details]"
            replace `item' = ".v" if `item' == "N/A; has never been visited by CSO"
            replace `item' = ".f" if `item' == "N/A; CSO has not provided feedback"
            replace `item' = ".n" if inlist(`item', `"N/A; CSO has not used a tablet during feedback"', `"N/A; CSO has not used a tablet during observation"', `"N/A; CSO has not assessed pupils"')
            replace `item' = ".s" if inlist(`item', `"N/A; Answer to 26 was "No" or "N/A""', `"N/A; answer to 9 was "No""', `"N/A; Answer to 19 was "No""', `"N/A; Answer to 31 was "No""')
            // replace `item' = "." if `item' == ""
        }
        destring `item', replace
    }
    replace vis_before_freq = "1" if vis_before_freq == "1x"
    replace vis_before_freq = "2" if vis_before_freq == "2x"
    replace vis_before_freq = "3" if vis_before_freq == "3x"
    replace vis_before_freq = "4" if vis_before_freq == "4x"
    replace vis_before_freq = "55" if vis_before_freq == "More than 4 x"
    replace vis_before_freq = ".b" if inlist(vis_before_freq, "", "pls make selection")
    replace vis_before_freq = "0" if vis_before_freq == "N/A; CSO has never visited"
    replace vis_before_freq = ".u" if vis_before_freq == "Don't Know"
    destring vis_before_freq, replace

    local narratives "vis_act_other_det cso_fdbk_det cso_shw_other_det cso_fdbk_better_det cso_fdbk_flu_dowith cso_tab_distract_why cso_fdbk_tab_diswhy cso_pup_dist_why tchr_ass_pup_tools"
    foreach item of loc narratives {
        replace `item' = "" if inlist(upper(`item'), "N/A", "N/A.")
        replace `item' = strtrim(stritrim(`item'))
    }
}

if instrument[1] == 2 {
    local ynvals "tablet_yn freqapps_tt_promp freqapps_papaya_promp freqapps_bks_promp freqapps_vids_promp changes_prev_lesson changes_schvis_rep changes_other ref_tang_fdbk tang_fdbk_notuseful refer_tang_nonobs cdir_comm_reres relx_better_tchr relx_worse_tchr relx_nochg_tchr relx_better_ht relx_worse_ht relx_nochg_ht relx_better_tscscd relx_worse_tscscd relx_nochg_tscscd relx_better_tsccd relx_worse_tsccd relx_nochg_tsccd relx_better_moescd relx_worse_moescd relx_nochg_moescd relx_better_moecd relx_worse_moecd relx_nochg_moecd cdir_conseq_yn"
    foreach item of local ynvals {
        capture confirm str var `item'
        if _rc == 0 {
            replace `item' = "0" if upper(`item') == "NO"
            replace `item' = "1" if upper(`item') == "YES"
            replace `item' = "2" if upper(`item') == "DON'T KNOW" & inlist("`item'", "cdir_conseq_yn", "cdir_comm_reres")
            replace `item' = ".m" if `item' == "pls make selection"
            replace `item' = ".n" if `item' == "N/A"
            replace `item' = ".s" if inlist(`item', `"N/A; Answer to 11 was "No""') & inlist("`item'", "tang_fdbk_notuseful")
        }
        destring `item', replace
    }
    replace designation = "11" if designation == "CSO"
    replace designation = "13" if designation == "Instructional Coach"
    replace designation = "" if designation == "pls make selection"
    replace designation = "11" if filename == "Jonah Kisioh - CSO Tool Form 2018-10-12-GASAMBI kASSIM1.docx"
    destring designation, replace

    replace recd_tab_month = "" if inlist(recd_tab_month, " ", "pls make selection")
    destring recd_tab_yr recd_tab_month, replace

    unab usage_rankings: app_freq*
    foreach item of loc usage_rankings {
        replace `item' = "" if inlist(`item', "pls make selection", "None of the Options")
    }

    replace freq_refer_tang_plan = "1" if freq_refer_tang_plan == "At least 1x per day"
    replace freq_refer_tang_plan = "2" if freq_refer_tang_plan == "At least 1x per week"
    replace freq_refer_tang_plan = "3" if freq_refer_tang_plan == "At least 1x per month"
    replace freq_refer_tang_plan = "4" if freq_refer_tang_plan == "At least 1x per term"
    replace freq_refer_tang_plan = ".n" if freq_refer_tang_plan == `"N/A; Answer to 16 was "No""'
    replace freq_refer_tang_plan = "88" if freq_refer_tang_plan == "Other"
    replace freq_refer_tang_plan = ".m" if freq_refer_tang_plan == "pls make selection"
    destring freq_refer_tang_plan, replace

    destring db_chk_prevterm_freq, replace
    local narratives "tang_fdbk_notuse_det tang_nonobs_decision tang_nonobs_nowhynot cdir_comms_topic cdir_comms_inf_ex prof_relx_chg_det db_part_inf_dec tang_new_tab tang_new_db cdir_conseq_det"
    foreach item of loc narratives {
        replace `item' = "" if inlist(upper(`item'), "N/A")
        replace `item' = strtrim(stritrim(`item'))
    }
}

if instrument[1] == 3 {
    local ynvals "get_link_yn db_lnk_frm_other_yn no_lnk_wnt_yn db_info_wnt_yn diff_mgmt_nodata_yn db_lnk_chk_sday db_lnk_chk_sweek db_lnk_chk_smonth db_lnk_chk_dont db_lnk_chk_na db_prmp_dev_phone db_prmp_dev_tab db_prmp_dev_laptop db_prmp_dev_desktop db_prmp_dev_colleague db_prmp_dev_other db_dev_access_na del_mech_prp_sms del_mech_prp_wa del_mech_prp_email del_mech_prp_app del_mech_prp_other"
    foreach item of local ynvals {
        capture confirm str var `item'
        if _rc == 0 {
            replace `item' = "0" if upper(`item') == "NO"
            replace `item' = "1" if upper(`item') == "YES"
            replace `item' = ".l" if upper(`item') == "N/A; RECEIVES A LINK TO THE TUSOME DASHBOARD"
            replace `item' = ".m" if upper(`item') == "PLS MAKE SELECTION"
            replace `item' = ".n" if upper(`item') == "N/A"
        }
        destring `item', replace
    }
    replace designation = "21" if designation == "MOE-SubCounty Dir"
    replace designation = "22" if designation == "TSC-SubCounty Dir"
    replace designation = "23" if designation == "QASO"
    replace designation = "31" if designation == "MOE-CD"
    replace designation = "32" if designation == "TSC-CD"
    replace designation = "88" if designation == "Other"
    replace designation = ".m" if designation == "pls make selection"
    destring designation, replace

    replace desig_other_det = "N/A" if inlist(desig_other_det, "n/a", "")

    replace intro_db_yr = "" if intro_db_yr == "pls make selection"
    replace intro_db_month = "" if intro_db_month == "pls make selection"
    destring intro_db_yr intro_db_month, replace

    local frequencies "get_link_freq no_lnk_wnt_freq db_chk_freq"
    foreach item of loc frequencies {
        replace `item' = "1" if inlist(upper(`item'), "DAILY")
        replace `item' = "2" if inlist(upper(`item'), "WEEKLY")
        replace `item' = "3" if inlist(upper(`item'), "MONTHLY")
        replace `item' = "4" if inlist(upper(`item'), "TERMLY")
        replace `item' = ".n" if inlist(upper(`item'), "N/A", "NA")
        destring `item', replace
    }

    local narratives "src_pre_db_decaid get_link_modality db_lnk_chk_dont_why db_unp_devices db_prmp_dev_other_det db_lnk_frm_other_det no_lnk_wnt_freq del_mech_prp_det db_sect_consulted mgmt_dec_from_db db_info_wnt_det diff_mgmt_nodata_det db_rev_feat_det"
    foreach item of loc narratives {
        replace `item' = "" if inlist(upper(`item'), "N/A")
        replace `item' = strtrim(stritrim(`item'))
    }
}