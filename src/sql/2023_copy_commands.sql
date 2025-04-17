\copy ace (ACEDEPRS, ACEDRINK, ACEDRUGS, ACEPRISN, ACEDIVRC, ACEPUNCH, ACEHURT1, ACESWEAR, ACETOUCH, ACETTHEM, ACEHVSEX, ACEADSAF, ACEADNED) FROM '/docker-entrypoint-initdb.d/ace.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy alcohol_consumption (ALCDAY4, AVEDRNK3, DRNK3GE5, MAXDRNKS) FROM '/docker-entrypoint-initdb.d/alcohol_consumption.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy arthritis (ARTHEXER, ARTHEDU, LMTJOIN3, ARTHDIS2, JOINPAI2) FROM '/docker-entrypoint-initdb.d/arthritis.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy aspirin_cvd (ASPIRIN) FROM '/docker-entrypoint-initdb.d/aspirin_cvd.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy breast_cervical_cancer_screen (HADMAM, HOWLONG, CERVSCRN, CRVCLCNC, CRVCLPAP, CRVCLHPV, HADHYST2) FROM '/docker-entrypoint-initdb.d/breast_cervical_cancer_screen.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy calculated_race_variables (_MRACE1, _HISPANC, _RACE, _RACEG21, _RACEGR3, _RACEPRV) FROM '/docker-entrypoint-initdb.d/calculated_race_variables.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy calculated_variables_1 (_RFHLTH, _PHYS14D, _MENT14D, _HLTHPL1, _HCVU653, _TOTINDA, METVL12_, METVL22_, MAXVO21_, FC601_, ACTIN13_, ACTIN23_, PADUR1_, PADUR2_, PAFREQ1_, PAFREQ2_, _MINAC12, _MINAC22, STRFREQ_, PAMISS3_, PAMIN13_, PAMIN23_, PA3MIN_, PAVIG13_, PAVIG23_, PA3VIGM_, _PACAT3, _PAINDX3, _PA150R4, _PA300R4, _PA30023, _PASTRNG, _PAREC3, _PASTAE3, _RFHYPE6, _CHOLCH3, _RFCHOL3, _MICHD, _LTASTH1, _CASTHM1, _ASTHMS1, _DRDXAR2) FROM '/docker-entrypoint-initdb.d/calculated_variables_1.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy calculated_variables_2 (_SEX, _AGEG5YR, _AGE65YR, _AGE80, _AGE_G, HTIN4, HTM4, WTKG3, _BMI5, _BMI5CAT, _RFBMI5, _CHLDCNT, _EDUCAG, _INCOMG1, _SMOKER3, _RFSMOK3, _CURECI2, DRNKANY6, DROCDY4_, _RFBING6, _DRNKWK2, _RFDRHV8, _FLSHOT7, _PNEUMO3, _AIDTST4, _RFSEAT2, _RFSEAT3, _DRNKDRV) FROM '/docker-entrypoint-initdb.d/calculated_variables_2.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy cancer_survivor_pain (CSRVPAIN, CSRVCTL2) FROM '/docker-entrypoint-initdb.d/cancer_survivor_pain.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy cancer_survivor_treat (CSRVTRT3, CSRVDOC1, CSRVSUM, CSRVRTRN, CSRVINST, CSRVINSR, CSRVDEIN, CSRVCLIN) FROM '/docker-entrypoint-initdb.d/cancer_survivor_treat.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy cancer_survivor_type (CNCRDIFF, CNCRAGE, CNCRTYP2) FROM '/docker-entrypoint-initdb.d/cancer_survivor_type.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy caregiver (CAREGIV1, CRGVREL4, CRGVLNG1, CRGVHRS1, CRGVPRB3, CRGVALZD, CRGVPER1, CRGVHOU1, CRGVEXPT) FROM '/docker-entrypoint-initdb.d/caregiver.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy cell_phone_introduction (SAFETIME, CTELNUM1, CELLFONE5, CADULT1, CELLSEX2, PVTRESD3, CCLGHOUS, CSTATE1, LANDLINE, HHADULT) FROM '/docker-entrypoint-initdb.d/cell_phone_introduction.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy child_demographics (_CHISPNC, _CRACE1) FROM '/docker-entrypoint-initdb.d/child_demographics.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy child_weighting_variables (CAGEG, _CLLCPWT) FROM '/docker-entrypoint-initdb.d/child_weighting_variables.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy childhood_asthma (CASTHDX2, CASTHNO2) FROM '/docker-entrypoint-initdb.d/childhood_asthma.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy cholesterol (CHOLMED3) FROM '/docker-entrypoint-initdb.d/cholesterol.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy chronic_health_conditions (CVDINFR4, CVDCRHD4, CVDSTRK3, ASTHMA3, ASTHNOW, CHCSCNC1, CHCOCNC1, CHCCOPD3, ADDEPEV3, CHCKDNY2, HAVARTH4, DIABETE4, DIABAGE4) FROM '/docker-entrypoint-initdb.d/chronic_health_conditions.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy cognitive_decline (CIMEMLO1, CDWORRY, CDDISCU1, CDHOUS1, CDSOCIA1) FROM '/docker-entrypoint-initdb.d/cognitive_decline.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy colorectal_cancer_screen (HADSIGM4, COLNSIGM, COLNTES1, SIGMTES1, LASTSIG4, COLNCNCR, VIRCOLO1, VCLNTES2, SMALSTOL, STOLTEST, STOOLDN2, BLDSTFIT, SDNATES1) FROM '/docker-entrypoint-initdb.d/colorectal_cancer_screen.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy covid_vaccination (COVIDVA1, COVACGE1, COVIDNU2) FROM '/docker-entrypoint-initdb.d/covid_vaccination.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy demographics (MARITAL, EDUCA, RENTHOM1, NUMHHOL4, NUMPHON4, CPDEMO1C, VETERAN3, EMPLOY1, CHILDREN, INCOME3, PREGNANT, WEIGHT2, HEIGHT3) FROM '/docker-entrypoint-initdb.d/demographics.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy diabetes (DIABTYPE, INSULIN1, CHKHEMO3, EYEEXAM1, DIABEYE1, DIABEDU1, FEETSORE) FROM '/docker-entrypoint-initdb.d/diabetes.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy disability (DEAF, BLIND, DECIDE, DIFFWALK, DIFFDRES, DIFFALON) FROM '/docker-entrypoint-initdb.d/disability.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy excess_sun_exposure (NUMBURN3, SUNPRTCT, WKDAYOUT, WKENDOUT) FROM '/docker-entrypoint-initdb.d/excess_sun_exposure.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy exercise (EXERANY2, EXRACT12, EXEROFT1, EXERHMM1, EXRACT22, EXEROFT2, EXERHMM2, STRENGTH) FROM '/docker-entrypoint-initdb.d/exercise.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy falls (FALL12MN, FALLINJ5) FROM '/docker-entrypoint-initdb.d/falls.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy firearm_safety (FIREARM5, GUNLOAD, LOADULK2) FROM '/docker-entrypoint-initdb.d/firearm_safety.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy flu_vaccination (IMFVPLA4) FROM '/docker-entrypoint-initdb.d/flu_vaccination.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy health_care_access (PRIMINS1, PERSDOC3, MEDCOST1, CHECKUP1) FROM '/docker-entrypoint-initdb.d/health_care_access.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy health_status (GENHLTH) FROM '/docker-entrypoint-initdb.d/health_status.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy healthy_days (PHYSHLTH, MENTHLTH, POORHLTH) FROM '/docker-entrypoint-initdb.d/healthy_days.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy heart_attack_stroke (HASYMP1, HASYMP2, HASYMP3, HASYMP4, HASYMP5, HASYMP6, STRSYMP1, STRSYMP2, STRSYMP3, STRSYMP4, STRSYMP5, STRSYMP6, FIRSTAID) FROM '/docker-entrypoint-initdb.d/heart_attack_stroke.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy hiv_aids (HIVTST7, HIVTSTD3) FROM '/docker-entrypoint-initdb.d/hiv_aids.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy hpv_vaccination (HPVADVC4, HPVADSHT) FROM '/docker-entrypoint-initdb.d/hpv_vaccination.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy hypertension (BPHIGH6, BPMEDS1, CHOLCHK3, TOLDHI3) FROM '/docker-entrypoint-initdb.d/hypertension.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy immunization (FLUSHOT7, FLSHTMY3, PNEUVAC4, SHINGLE2) FROM '/docker-entrypoint-initdb.d/immunization.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy indoor_tan (INDORTAN) FROM '/docker-entrypoint-initdb.d/indoor_tan.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy land_line_introduction (CTELENM1, PVTRESD1, COLGHOUS, STATERE1, CELPHON1, LADULT1, NUMADULT, RESPSLC1, LANDSEX2) FROM '/docker-entrypoint-initdb.d/land_line_introduction.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy long_term_covid (COVIDPO1, COVIDSM1, COVIDACT) FROM '/docker-entrypoint-initdb.d/long_term_covid.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy lung_cancer_screen (LCSFIRST, LCSLAST, LCSNUMCG, LCSCTSC1, LCSSCNCR, LCSCTWHN) FROM '/docker-entrypoint-initdb.d/lung_cancer_screen.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy marijuana_use (MARIJAN1, MARJSMOK, MARJEAT, MARJVAPE, MARJDAB, MARJOTHR) FROM '/docker-entrypoint-initdb.d/marijuana_use.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy other_tabacco_use (MENTCIGS, MENTECIG, HEATTBCO) FROM '/docker-entrypoint-initdb.d/other_tabacco_use.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy pre_diabetes (PDIABTS1, PREDIAB2) FROM '/docker-entrypoint-initdb.d/pre_diabetes.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy prostate_cancer_screen (PSATEST1, PSATIME1, PCPSARS2, PSASUGS1, PCSTALK2) FROM '/docker-entrypoint-initdb.d/prostate_cancer_screen.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy questionnaire_lang (QSTLANG) FROM '/docker-entrypoint-initdb.d/questionnaire_lang.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy questionnaire_ver (QSTVER) FROM '/docker-entrypoint-initdb.d/questionnaire_ver.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy race_reactions (RRCLASS3, RRCOGNT2, RRTREAT, RRATWRK2, RRHCARE4, RRPHYSM2) FROM '/docker-entrypoint-initdb.d/race_reactions.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy random_child_select (RCSRLTN2) FROM '/docker-entrypoint-initdb.d/random_child_select.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy record_identification (_STATE, FMONTH, IDATE, IMONTH, IDAY, IYEAR, DISPCODE, SEQNO, _PSU) FROM '/docker-entrypoint-initdb.d/record_identification.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy respondent_sex (SEXVAR) FROM '/docker-entrypoint-initdb.d/respondent_sex.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy seatbelt_drink_drive (SEATBELT, DRNKDRI2) FROM '/docker-entrypoint-initdb.d/seatbelt_drink_drive.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy sexual_orientation (SOMALE, SOFEMALE) FROM '/docker-entrypoint-initdb.d/sexual_orientation.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy social_determinants (LSATISFY, EMTSUPRT, SDLONELY, SDHEMPLY, FOODSTMP, SDHFOOD1, SDHBILLS, SDHUTILS, SDHTRNSP, SDHSTRE1) FROM '/docker-entrypoint-initdb.d/social_determinants.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy tabacco_cessation (LASTSMK2, STOPSMK2) FROM '/docker-entrypoint-initdb.d/tabacco_cessation.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy tabacco_use (SMOKE100, SMOKDAY2, USENOW3, ECIGNOW2) FROM '/docker-entrypoint-initdb.d/tabacco_use.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy tdap_adults (TETANUS1) FROM '/docker-entrypoint-initdb.d/tdap_adults.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy urban_rural (_METSTAT, _URBSTAT) FROM '/docker-entrypoint-initdb.d/urban_rural.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy weighting_variables_1 (MSCODE, _STSTR, _STRWT, _RAWRAKE, _WT2RAKE, _IMPRACE) FROM '/docker-entrypoint-initdb.d/weighting_variables_1.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');

\copy weighting_variables_2 (_DUALUSE, _DUALCOR, _LLCPWT2, _LLCPWT) FROM '/docker-entrypoint-initdb.d/weighting_variables_2.csv' WITH (FORMAT CSV, HEADER, NULL 'NA');
