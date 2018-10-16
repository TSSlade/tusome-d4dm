# Analysis Plan for Tusome Data for Decision-Making Study

The proposed analyses are laid out below by instrument type.

## Teachers

Teachers are 

## Curriculum Support Officers (CSOs)

Curriculum Support Officers (CSOs) are the key personnel in the _Tangerine:Tutor_ data generation and consumption loop. They carry the tablets on which the _Tangerine:Tutor_ app is loaded. They complete the _Tutor_ instruments while observing the teachers, review the feedback statements _Tutor_ provides at the end of each lesson, deliver their own feedback to teachers, and plan their coaching routing plans on the basis of teachers' and schools' performance.

Our analysis of the CSO data will include the following:

1. Convert `recd_tab_yr_` and `recd_tab_month` into a duration (in months) of active tablet usage.
2. A report showing the _proportion_ of respondents saying they use each of the tools (`freqapps_*` variables)

```
freqapps_tt_promp
freqapps_papaya_promp
freqapps_bks_promp
freqapps_vids_promp
```

3. A report showing the _proportion_ of respondents who refer to Tangerine for fedback (`ref_tang_fdbk`)
4. A report showing the _proportion_ of respondents who use Tangerine to plan their work (`ref_tang_nonobs`)
5. A stacked bar chart of users who use Tangerine to plan their work, by frequency of reference to the application (`freq_refer_tang_plan`)
6. A histogram of the number of times the CSOs looked at the Dashboard last term (`db_check_prevterm_freq`), faceted by whether they use Tangerine to plan (`ref_tang_nonobs`) and whether the County Director communicates about the Dashboard results (`cdir_comm_reres`)
7. A report of the proportion of CSOs whose County Director communicates about the Dashboard results (`cdir_comm_reres`)
8. A stacked bar chart of respondents saying their relationship has {improved|remained the same|deteriorated} for each coworker type

```
relx_better_tchr
relx_worse_tchr
relx_nochg_tchr
relx_better_ht
relx_worse_ht
relx_nochg_ht
relx_better_tscscd
relx_worse_tscscd
relx_nochg_tscscd
relx_better_tsccd
relx_worse_tsccd
relx_nochg_tsccd
relx_better_moescd
relx_worse_moescd
relx_nochg_moescd
relx_better_moecd
relx_worse_moecd
relx_nochg_moecd
```

9. A report of the proportion of CSOs whose County Director has announced serious consequences (`cdir_conseq_yn`)

## Directors