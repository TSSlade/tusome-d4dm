if instrument == 1 {
    label var county "County"
    label var zone "Zone/Cluster"
    label var vis_before "Has a CSO visited before today?"
    label var vis_before_freq "How many times this year has a CSO visited before today?"
    label var vis_act_kids "CSO activity during visit: assessed children"
    label var vis_act_ht "CSO activity during visit: talk to HT"
    label var vis_act_fdbk "CSO activity during visit: gave lesson feedback"
    label var vis_act_gen "CSO activity during visit: had a general talk"
    label var vis_act_other "CSO activity during visit: other"
    label var vis_act_other_det "CSO activity during visit: details of other"
    label var vis_act_na "N/A: CSO has never visited before today"
    label var cso_usetab_yn "Did the CSO use the tablet during the observation?"
    label var cso_usepcl_yn "Did the CSO use pencil/paper during the observation?"
    label var cso_usetab_pup_yn "Did the CSO use the tablet to record kids' performance?"
    label var cso_gave_fdbk_yn "Last visit, did the CSO give feedback on the lesson?"
    label var cso_usetab_fdbk_yn "Last visit, did the CSO use the tablet to give feedback?"
    label var cso_fdbk_remember "Tchr can remember some of CSO's feedback from last visit"
    label var cso_fdbk_det "Example of the feedback the Tchr received from the CSO last visit"
    label var cso_fdbk_showtab_yn "CSO has shown Tchr something on the tablet"
    label var cso_shw_tips "CSO showed Tchr sthing on tablet: teaching tips"
    label var cso_shw_fluency "CSO showed Tchr sthing on tablet: pupil fluency"
    label var cso_shw_video "CSO showed Tchr sthing on tablet: video"
    label var cso_shw_lsnd "CSO showed Tchr sthing on tablet: played letter sound"
    label var cso_shw_other "CSO showed Tchr sthing on tablet: other"
    label var cso_shw_other_det "CSO showed Tchr sthing on tablet: details of other"
    label var cso_shw_na "N/A: CSO has never showed Tchr sthing on tablet"
    label var cso_ref_prev_fdbk_yn "CSO refers to feedback from previous visits"
    label var cso_fdbk_better_tus "CSO feedback has improved tching of Tusome subjects"
    label var cso_fdbk_better_nont "CSO feedback has improved tching of other subjects"
    label var cso_fdbk_better_det "Details of feedback Tchr has received from CSO"
    label var cso_fdbk_discfluency "CSO feedback specifically refers to pupil fluency"
    label var cso_fdbk_flu_useful "CSO feedback re: pupil fluency is useful"
    label var cso_fdbk_flu_dowith "What Tchr does with CSO feedback re: pupil fluency"
    label var cso_tab_distract_yn "Tchr finds CSO tablet use during observation distracting"
    label var cso_tab_distract_why "Reason Tchr finds CSO tablet use during observation distracting"
    label var cso_tab_fdbk_distrac "Tchr finds CSO tablet use during feedback distracting"
    label var cso_fdbk_tab_diswhy "Reason Tchr finds CSO tablet use during feedback distracting"
    label var cso_pres_ass_tab "Tchr was present during CSO assessment of pupil fluency"
    label var cso_pup_distract_ass "Pupils find CSO tablet use during assessment distracting"
    label var cso_pup_dist_why "Reason pupils find CSO tablet use during assessment distracting"
    label var tchr_ass_pup_flu_yn "Tchr assesses pupils' fluency levels"
    label var tchr_ass_pup_tools "Tools Tchr uses to assess pupils' fluency"
    label var tch_mob_phone "Tchr has mobile phone"
    label var tch_has_android "Tchr's mobile phone is Android"
    label var tch_wants_assess "Tchr would like a phone-based tool to assess pupils"
    label var filename "Source file"
}

if instrument == 2 {
    label var county "County"
    label var zone "Zone"
    label var designation "Designation"
    label var tablet_yn "Tusome has issued tablet"
    label var recd_tab_yr "Year tablet received"
    label var recd_tab_month "Month tablet received"
    label var freqapps_unprompt "Unprompted list of apps used to support Tchrs"
    label var freqapps_tt_promp "Apps frequently used to support Tchrs: Tutor"
    label var freqapps_papaya_promp "Apps frequently used to support Tchrs: Papaya"
    label var freqapps_bks_promp "Apps frequently used to support Tchrs: Digital books"
    label var freqapps_vids_promp "Apps frequently used to support Tchrs: Videos"
    label var app_freq1 "Most-frequently used app: #1"
    label var app_freq2 "Most-frequently used app: #2"
    label var app_freq3 "Most-frequently used app: #3"
    label var app_freq4 "Most-frequently used app: #4"
    label var changes_prev_lesson "Changes to Tangerine app noticed: prev lesson record"
    label var changes_schvis_rep "Changes to Tangerine app noticed: school visit report"
    label var changes_other "Changes to Tangerine app noticed: other"
    label var changes_other_det "Changes to Tangerine app noticed: details of other"
    label var useful_tang_open "Things CSO finds useful about Tangerine app for observations"
    label var ref_tang_fdbk "CSO refers to Tangerine during feedback"
    label var ref_tang_fdbk_det "Details of what CSO refers to from Tangerine during feedback"
    label var ref_tang_fdbk_maxuse "What CSO finds most useful from Tangerine during feedback"
    label var tang_fdbk_notuseful "Any items of feedback report not useful?"
    label var tang_fdbk_notuse_det "Details of not useful elements in feedback report"
    label var refer_tang_nonobs "CSO refers to Tangerine to help plan work"
    label var tang_nonobs_decision "Examples of how CSO uses Tangerine to help plan work"
    label var freq_refer_tang_plan "Frequency with which CSO refers to Tangerine for planning"
    label var tang_nonobs_nowhynot "Reason CSO doesn't refer to Tangerine for planning"
    label var db_chk_prevterm_freq "# of times CSO checked TangDB"
    label var cdir_comm_reres "County Dir communicates about TangDB results"
    label var cdir_comms_topic "Topic of County Dir communication re TangDB results"
    label var cdir_comms_inf_ex "Comms from County Dir influences work"
    label var relx_better_tchr "Relationship has changed for the better: Tchr"
    label var relx_worse_tchr "Relationship has changed for the worse: Tchr"
    label var relx_nochg_tchr "Relationship is unchanged: Tchr"
    label var relx_better_ht "Relationship has changed for the better: HT"
    label var relx_worse_ht "Relationship has changed for the worse: HT"
    label var relx_nochg_ht "Relationship is unchanged: HT"
    label var relx_better_tscscd "Relationship has changed for the better: TSC-Subcounty Dir"
    label var relx_worse_tscscd "Relationship has changed for the worse: TSC-Subcounty Dir"
    label var relx_nochg_tscscd "Relationship is unchanged: TSC-Subcounty Dir"
    label var relx_better_tsccd "Relationship has changed for the better: TSC-County Dir"
    label var relx_worse_tsccd "Relationship has changed for the worse: TSC-County Dir"
    label var relx_nochg_tsccd "Relationship is unchanged: TSC-County Dir"
    label var relx_better_moescd "Relationship has changed for the better:MOE-Subcounty Dir"
    label var relx_worse_moescd "Relationship has changed for the worse:MOE-Subcounty Dir"
    label var relx_nochg_moescd "Relationship is unchanged: MOE-Subcounty Dir"
    label var relx_better_moecd "Relationship has changed for the better: MOE-County Dir"
    label var relx_worse_moecd "Relationship has changed for the worse: MOE-County Dir"
    label var relx_nochg_moecd "Relationship is unchanged: MOE-County Dir"
    label var prof_relx_chg_det "Details of how professional relationships have changed"
    label var db_part_inf_dec "TangDB element that influences decision-making"
    label var tang_new_tab "New function/report/data desired for Tang on tablet"
    label var tang_new_db "New function/report/data desired for TangDB"
    label var cdir_conseq_yn "County Dir has announced consequences b/c of TangDB"
    label var cdir_conseq_det "Details of consequence"
    label var filename "Source file"
    }

if instrument == 3 {
    label var county "County"
    label var zone "Zone"
    label var designation "Interviewee role"
    label var desig_other_det "Role other than listed"
    label var intro_db_yr "Year introduced to Dashboard"
    label var intro_db_month "Month introduced to Dashboard"
    label var src_pre_db_decaid "Pre-TangDB info source for mgmt decisions"
    label var get_link_yn "Receives link"
    label var get_link_freq "Frequency with which link received"
    label var get_link_modality "Mechanism by which link is received"
    label var db_lnk_chk_sday "Checks link the same day it's received"
    label var db_lnk_chk_sweek "Checks link the same week it's received"
    label var db_lnk_chk_smonth "Checks link the same month it's received"
    label var db_lnk_chk_dont "Doesn't check link once received"
    label var db_lnk_chk_dont_why "Reason doesn't check the link"
    label var db_lnk_chk_na "N/A: doesn't receive link"
    label var db_unp_devices "Unprompted listing of devices used to receive link"
    label var db_prmp_dev_phone "Link received on phone"
    label var db_prmp_dev_tab "Link received on tablet"
    label var db_prmp_dev_laptop "Link received on laptop"
    label var db_prmp_dev_desktop "Link received on desktop"
    label var db_prmp_dev_colleague "Link received on colleague's computer"
    label var db_prmp_dev_other "Link received on other device"
    label var db_prmp_dev_other_det "Link received on other device (details)"
    label var db_dev_access_na "N/A: doesn't access DB"
    label var db_lnk_frm_other_yn "Receives link from non-RTI employee"
    label var db_lnk_frm_other_det "Non-RTI link source"
    label var no_lnk_wnt_yn "If doesn't receive link, would like to get one?"
    label var no_lnk_wnt_freq "Frequency with which would like to receive link"
    label var del_mech_unprompted "Unprompted preferred mechanism to receive link"
    label var del_mech_prp_sms "Preferred mechanism to receive DB access: SMS"
    label var del_mech_prp_wa "Preferred mechanism to receive DB access: WhatsApp"
    label var del_mech_prp_email "Preferred mechanism to receive DB access: Email"
    label var del_mech_prp_app "Preferred mechanism to receive DB access: Dedicated App"
    label var del_mech_prp_other "Preferred mechanism to receive DB access: Other"
    label var del_mech_prp_det "Preferred mechanism to receive DB access: Specifics of Other"
    label var db_sect_consulted "Sections of TangDB consulted most often"
    label var db_chk_freq "Frequency checks TangDB"
    label var mgmt_dec_from_db "Mgmt decisions based on TangDB"
    label var db_info_wnt_yn "Is there data desired but not on TangDB?"
    label var db_info_wnt_det "Details of desired-but-not-available data"
    label var diff_mgmt_nodata_yn "Are there daily mgmt decisions difficult b/c lack of data?"
    label var diff_mgmt_nodata_det "Details of difficult daily mgmt decisions"
    label var db_rev_feat_det "Desired TangDB revisions"
    label var filename "Source file"
}