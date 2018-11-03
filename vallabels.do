disp as error "Entering value labels .do file"
/************************
// Defining the labels //
************************/

label define lbl_yn 0 "No" 1 "Yes" 2 "Don't know"
label define lbl_pvisits 0 "CSO has never visited" 1 "1 prior visits" 2 "2 prior visits" 3 "3 prior visits" 4 "4 prior visits" 55 ">4 prior visits" .b "Missing: answer left blank" .u "Missing: unknown"
label define lbl_designation 1 "Teacher" 2 "Head Teacher" 11 "CSO [Z]" 12 "CSO-SNE [Z]" 13 "Instructional Coach [Z]" 21 "MOE Subcounty Dir [SC]" 22 "TSC Subcounty Dir [SC]" 23 "Quality Assurance and Standards Officer (QASO) [SC]" 31 "MOE County Dir [C]" 32 "TSC County Dir [C]" 33 "County QASO [C]" 34 "Subcounty HR Officer [SC]" 35 "Regional Coord of Edu [R]" 36 "County Project Coord [C]" 37 "Deputy County Dir [C]" 38 "Chief Edu Officer [SC]" 39 "Asst Dir QAS [N]" 88 "Other"
label define lbl_planningchk 1 "At least daily" 2 "At least weekly" 3 "At least monthly" 4 "At least termly" 88 "Other" .n "N/A: Does not check app"
label define lbl_instrument 1 "teacher" 2 "cso" 3 "director"
label define lbl_lnk_rec_freq 0 "Does not receive" 1 "At least daily" 2 "At least weekly" 3 "At least monthly" 4 "At least termly" 5 "At least yearly" 6 "Infrequently or once" .n "Not Applicable"
label define lbl_tangdb_chk_freq 1 "Daily" 2 "Weekly" 3 "Monthly" 4 "Termly"

/************************
// Applying the labels //
************************/

label var instrument lbl_instrument

if instrument[1] == 1 {
    local ynvals "vis_before vis_act_kids vis_act_ht vis_act_fdbk vis_act_gen vis_act_other vis_act_na cso_usetab_yn cso_usepcl_yn cso_usetab_pup_yn cso_gave_fdbk_yn cso_usetab_fdbk_yn cso_fdbk_remember cso_fdbk_showtab_yn cso_shw_tips cso_shw_fluency cso_shw_video cso_shw_lsnd cso_shw_other cso_shw_na cso_ref_prev_fdbk_yn cso_fdbk_better_tus cso_fdbk_better_nont cso_fdbk_discfluency cso_fdbk_flu_useful cso_tab_distract_yn cso_tab_fdbk_distrac cso_pres_ass_tab cso_pup_distract_ass tchr_ass_pup_flu_yn tch_mob_phone tch_has_android tch_wants_assess"
    foreach item of local ynvals {
        label val `item' lbl_yn
    }
    disp "Here's where we're choking..."
    label val vis_before_freq lbl_pvisits
}

if instrument[1] == 2 {
    local ynvals "tablet_yn freqapps_tt_promp freqapps_papaya_promp freqapps_bks_promp freqapps_vids_promp changes_prev_lesson changes_schvis_rep changes_other ref_tang_fdbk tang_fdbk_notuseful refer_tang_nonobs cdir_comm_reres relx_better_tchr relx_worse_tchr relx_nochg_tchr relx_better_ht relx_worse_ht relx_nochg_ht relx_better_tscscd relx_worse_tscscd relx_nochg_tscscd relx_better_tsccd relx_worse_tsccd relx_nochg_tsccd relx_better_moescd relx_worse_moescd relx_nochg_moescd relx_better_moecd relx_worse_moecd relx_nochg_moecd cdir_conseq_yn"
    foreach item of local ynvals {
        label val `item' lbl_yn
    }
    label val designation lbl_designation
    label val freq_refer_tang_plan lbl_planningchk
}

if instrument[1] == 3 {
    local ynvals "get_link_yn db_lnk_frm_other_yn no_lnk_wnt_yn db_info_wnt_yn diff_mgmt_nodata_yn db_lnk_chk_sday db_lnk_chk_sweek db_lnk_chk_smonth db_lnk_chk_dont db_lnk_chk_na db_prmp_dev_phone db_prmp_dev_tab db_prmp_dev_laptop db_prmp_dev_desktop db_prmp_dev_colleague db_prmp_dev_other db_dev_access_na del_mech_prp_sms del_mech_prp_wa del_mech_prp_email del_mech_prp_app del_mech_prp_other"
    foreach item of local ynvals {
        label val `item' lbl_yn
    }
    // label val get_link_freq lbl_lnk_rec_freq
    capture confirm numeric var db_chk_freq
    if _rc == 0 {
        label val db_chk_freq lbl_tangdb_chk_freq
    }
    label val designation lbl_designation
}
