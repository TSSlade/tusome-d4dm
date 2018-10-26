
global wd = "C:/Dropbox/Berkeley MIDS/MIDS+/Tusome/tusome-d4dm"

local types = "Teacher_Data CSO_Data Director_Data"
foreach T of local types {
    display "`T'"

    import excel "C:\Dropbox\Kenya Tusome\other\Google.org Grant Research\data\Consolidated Data 2018-10-26.xlsm", sh("`T'") firstrow clear
    local t = strlower("`T'")
    display "`t'"
    gen instrument = .
        recode instrument (. = 1) if "`t'" == "teacher_data"
        recode instrument (. = 2) if "`t'" == "cso_data"
        recode instrument (. = 3) if "`t'" == "director_data"
    do "$wd/varlabels.do"
    do "$wd/varnormalization.do"
    do "$wd/vallabels.do"
    save "$wd/src/`t'.dta", replace
    quietly {
        preserve
            describe, replace
            list
            export excel using "$wd/var_details.xlsx", sheetreplace first(var) sh("`t'")
        restore
    }
}

di "Record count to date as follows:"
foreach dataset in teacher_data cso_data director_data {
    use "C:/Dropbox/Berkeley MIDS/MIDS+/Tusome/tusome-d4dm/src/`dataset'.dta", clear
    di "`dataset': "_N
    if "`dataset'"=="director_data" {
       tab designation
    }
}