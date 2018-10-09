
global wd = "C:/Dropbox/Berkeley MIDS/MIDS+/Tusome/tusome-d4dm"

local types = "Teacher_Data CSO_Data Director_Data"
foreach T of local types {
    display "`T'"
    import excel "C:\Dropbox\Kenya Tusome\other\Google.org Grant Research\data\Consolidated Data 2018-10-09.xlsm", sh("`T'") firstrow clear
    local t = strlower("`T'")
    display "`t'"
    gen instrument = .
        recode instrument (. = 1) if "`t'" == "teacher_data"
        recode instrument (. = 2) if "`t'" == "cso_data"
        recode instrument (. = 3) if "`t'" == "director_data"
    do "$wd/varlabels.do"
    do "$wd/vallabels.do"
    save "$wd/`t'.dta", replace
}

