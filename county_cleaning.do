replace county = strtrim(upper(county))

replace county = "??"            if inlist(county, "COUNTY", "I D", "")
replace county = "Baringo"       if inlist(county, "BARINGO COUNTY", "BARINGO")
replace county = "Bomet"         if inlist(county, "BOMET")
replace county = "Bungoma"       if inlist(county, "BUNGOMA")
replace county = "Embu"          if inlist(county, "EMBU")
replace county = "Garissa"       if inlist(county, "GARISSA")
replace county = "Homa Bay"      if inlist(county, "HOMA BAY", "HOMABAY", "HOMA BAY-RANGWE SUB COUNTY", "HOMA BAY-RACHUONYO SOUTH")
replace county = "Isiolo"        if inlist(county, "ISIOLO")
replace county = "Kajiado"       if inlist(county, "KAJIADO")
replace county = "Kakamega"      if inlist(county, "KAKAMEGA,", "KAKAMEGA", "KAKEMGA", "KAKAMEGE")
replace county = "Kericho"       if inlist(county, "KERICHO COUNTY", "KERICHO")
replace county = "Kiambu"        if inlist(county, "KIAMBU", "KIMBU")
replace county = "Kilifi"        if inlist(county, "KILIFI")
replace county = "Kirinyaga"     if inlist(county, "KIRINYAGA")
replace county = "Kisii"         if inlist(county, "KISII", "KISI")
replace county = "Kisumu"        if inlist(county, "KISUMU")
replace county = "Kitui"         if inlist(county, "KITUI")
replace county = "Kwale"         if inlist(county, "KWALE")
replace county = "Laikipia"      if inlist(county, "LAIKIPIA", "LAIKPIA", "LAKIPIA", "LAIKIPIA COUNTY", "LAIKIPA")
replace county = "Lamu"          if inlist(county, "LAMU")
replace county = "Machakos"      if inlist(county, "MACHAKOS")
replace county = "Makueni"       if inlist(county, "MAKUENI", "MAKEUNI")
replace county = "Mandera"       if inlist(county, "MANDERA")
replace county = "Marsabit"      if inlist(county, "MARSABIT", "MARASBIT", "MARSABIT COUNTY")
replace county = "Meru"          if inlist(county, "MERU")
replace county = "Migori"        if inlist(county, "MIGORI")
replace county = "Mombasa"       if inlist(county, "MOMBASA", "MOMBAS")
replace county = "Murang'a"      if inlist(county, "MURANG'A", "MURANGA", "MURUNGA")
replace county = "Nairobi"       if inlist(county, "NAIROBI")
replace county = "Nakuru"        if inlist(county, "NAKURU")
replace county = "Nandi"         if inlist(county, "NANDI")
replace county = "Narok"         if inlist(county, "NAROK")
replace county = "Nyamira"       if inlist(county, "NYAMIRA")
replace county = "Nyandarua"     if inlist(county, "NYANADRUA", "NYANDARUA")
replace county = "Nyeri"         if inlist(county, "NYERI")
replace county = "Samburu"       if inlist(county, "SAMBURU")
replace county = "Siaya"         if inlist(county, "SIAYA")
replace county = "Taita Taveta"  if inlist(county, "TAITA TAVETA")
replace county = "Tana River"    if inlist(county, "TANA RIVER")
replace county = "Tharaka Nithi" if inlist(county, "THARAKA NITHI")
replace county = "Trans-Nzoia"   if inlist(county, "TRANS-NZOIA")
replace county = "Turkana"       if inlist(county, "TURKANA COUNTY", "TURKANA", "TURKAN COUNTY")
replace county = "Uasin Gishu"   if inlist(county, "UASIN GISHU")
replace county = "Vihiga"        if inlist(county, "VIHIGA")
replace county = "Wajir"         if inlist(county, "WAJIR", "AWAJIR")
replace county = "West Pokot"    if inlist(county, "WEST POKOT", "WEST POKOOT")
