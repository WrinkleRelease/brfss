-- These are psql commands. I'm not sure they'd work as a batch in a SQL server. I ran them in terminal.

\copy ace (ACEDEPRS, ACEDRINK, ACEDRUGS, ACEPRISN, ACEDIVRC, ACEPUNCH, ACEHURT1, ACESWEAR, ACETOUCH, ACETTHEM, ACEHVSEX, ACEADSAF, ACEADNED) FROM '/docker-entrypoint-initdb.d/ace.csv' CSV HEADER;

\copy alcohol_consumption (ALCDAY4, AVEDRNK3, DRNK3GE5, MAXDRNKS) FROM '/docker-entrypoint-initdb.d/alcohol_consumption.csv' CSV HEADER;

\copy arthritis (ARTHEXER, ARTHEDU, LMTJOIN3, ARTHDIS2, JOINPAI2) FROM '/docker-entrypoint-initdb.d/arthritis.csv' CSV HEADER;

\copy aspirin_cvd (ASPIRIN) FROM '/docker-entrypoint-initdb.d/aspirin_cvd.csv' CSV HEADER;

\copy breast_cervical_cancer_screen (HADMAM, HOWLONG, CERVSCRN, CRVCLCNC, CRVCLPAP, CRVCLHPV, HADHYST2) FROM '/docker-entrypoint-initdb.d/breast_cervical_cancer_screen.csv' CSV HEADER;

\copy calculated_race_variables (_MRACE1, _HISPANC, _RACE, _RACEG21, _RACEGR3, _RACEPRV) FROM '/docker-entrypoint-initdb.d/calculated_race_variables.csv' CSV HEADER;

\copy calculated_variables_1 (_RFHLTH, _PHYS14D, _MENT14D, _HLTHPL1, _HCVU653, _TOTINDA, METVL12_, METVL22_, MAXVO21_, FC601_, ACTIN13_, ACTIN23_, PADUR1_, PADUR2_, PAFREQ1_, PAFREQ2_, _MINAC12, _MINAC22, STRFREQ_, PAMISS3_, PAMIN13_, PAMIN23_, PA3MIN_, PAVIG13_, PAVIG23_, PA3VIGM_, _PACAT3, _PAINDX3, _PA150R4, _PA300R4, _PA30023, _PASTRNG, _PAREC3, _PASTAE3, _RFHYPE6, _CHOLCH3, _RFCHOL3, _MICHD, _LTASTH1, _CASTHM1, _ASTHMS1, _DRDXAR2) FROM '/docker-entrypoint-initdb.d/calculated_variables_1.csv' CSV HEADER;

\copy calculated_variables_2 (_SEX, _AGEG5YR, _AGE65YR, _AGE80, _AGE_G, HTIN4, HTM4, WTKG3, _BMI5, _BMI5CAT, _RFBMI5, _CHLDCNT, _EDUCAG, _INCOMG1, _SMOKER3, _RFSMOK3, _CURECI2, DRNKANY6, DROCDY4_, _RFBING6, _DRNKWK2, _RFDRHV8, _FLSHOT7, _PNEUMO3, _AIDTST4, _RFSEAT2, _RFSEAT3, _DRNKDRV) FROM '/docker-entrypoint-initdb.d/calculated_variables_2.csv' CSV HEADER;

\copy cancer_survivor_pain (CSRVPAIN, CSRVCTL2) FROM '/docker-entrypoint-initdb.d/cancer_survivor_pain.csv' CSV HEADER;

\copy cancer_survivor_treat (CSRVTRT3, CSRVDOC1, CSRVSUM, CSRVRTRN, CSRVINST, CSRVINSR, CSRVDEIN, CSRVCLIN) FROM '/docker-entrypoint-initdb.d/cancer_survivor_treat.csv' CSV HEADER;

\copy cancer_survivor_type (CNCRDIFF, CNCRAGE, CNCRTYP2) FROM '/docker-entrypoint-initdb.d/cancer_survivor_type.csv' CSV HEADER;

\copy caregiver (CAREGIV1, CRGVREL4, CRGVLNG1, CRGVHRS1, CRGVPRB3, CRGVALZD, CRGVPER1, CRGVHOU1, CRGVEXPT) FROM '/docker-entrypoint-initdb.d/caregiver.csv' CSV HEADER;

\copy cell_phone_introduction (SAFETIME, CTELNUM1, CELLFON5, CADULT1, CELLSEX2, PVTRESD3, CCLGHOUS, CSTATE1, LANDLINE, HHADULT) FROM '/docker-entrypoint-initdb.d/cell_phone_introduction.csv' CSV HEADER;

\copy child_demographics (_CHISPNC, _CRACE1) FROM '/docker-entrypoint-initdb.d/child_demographics.csv' CSV HEADER;

\copy child_weighting_variables (CAGEG, _CLLCPWT) FROM '/docker-entrypoint-initdb.d/child_weighting_variables.csv' CSV HEADER;

\copy childhood_asthma (CASTHDX2, CASTHNO2) FROM '/docker-entrypoint-initdb.d/childhood_asthma.csv' CSV HEADER;

\copy cholesterol (CHOLMED3) FROM '/docker-entrypoint-initdb.d/cholesterol.csv' CSV HEADER;

\copy chronic_health_conditions (CVDINFR4, CVDCRHD4, CVDSTRK3, ASTHMA3, ASTHNOW, CHCSCNC1, CHCOCNC1, CHCCOPD3, ADDEPEV3, CHCKDNY2, HAVARTH4, DIABETE4, DIABAGE4) FROM '/docker-entrypoint-initdb.d/chronic_health_conditions.csv' CSV HEADER;

\copy cognitive_decline (CIMEMLO1, CDWORRY, CDDISCU1, CDHOUS1, CDSOCIA1) FROM '/docker-entrypoint-initdb.d/cognitive_decline.csv' CSV HEADER;

\copy colorectal_cancer_screen (HADSIGM4, COLNSIGM, COLNTES1, SIGMTES1, LASTSIG4, COLNCNCR, VIRCOLO1, VCLNTES2, SMALSTOL, STOLTEST, STOOLDN2, BLDSTFIT, SDNATES1) FROM '/docker-entrypoint-initdb.d/colorectal_cancer_screen.csv' CSV HEADER;

\copy covid_vaccination (COVIDVA1, COVACGE1, COVIDNU2) FROM '/docker-entrypoint-initdb.d/covid_vaccination.csv' CSV HEADER;

\copy demographics (MARITAL, EDUCA, RENTHOM1, NUMHHOL4, NUMPHON4, CPDEMO1C, VETERAN3, EMPLOY1, CHILDREN, INCOME3, PREGNANT, WEIGHT2, HEIGHT3) FROM '/docker-entrypoint-initdb.d/demographics.csv' CSV HEADER;

\copy diabetes (DIABTYPE, INSULIN1, CHKHEMO3, EYEEXAM1, DIABEYE1, DIABEDU1, FEETSORE) FROM '/docker-entrypoint-initdb.d/diabetes.csv' CSV HEADER;

\copy disability (DEAF, BLIND, DECIDE, DIFFWALK, DIFFDRES, DIFFALON) FROM '/docker-entrypoint-initdb.d/disability.csv' CSV HEADER;

\copy excess_sun_exposure (NUMBURN3, SUNPRTCT, WKDAYOUT, WKENDOUT) FROM '/docker-entrypoint-initdb.d/excess_sun_exposure.csv' CSV HEADER;

\copy exercise (EXERANY2, EXRACT12, EXEROFT1, EXERHMM1, EXRACT22, EXEROFT2, EXERHMM2, STRENGTH) FROM '/docker-entrypoint-initdb.d/exercise.csv' CSV HEADER;

\copy falls (FALL12MN, FALLINJ5) FROM '/docker-entrypoint-initdb.d/falls.csv' CSV HEADER;

\copy firearm_safety (FIREARM5, GUNLOAD, LOADULK2) FROM '/docker-entrypoint-initdb.d/firearm_safety.csv' CSV HEADER;

\copy flu_vaccination (IMFVPLA4) FROM '/docker-entrypoint-initdb.d/flu_vaccination.csv' CSV HEADER;

\copy health_care_access (PRIMINS1, PERSDOC3, MEDCOST1, CHECKUP1) FROM '/docker-entrypoint-initdb.d/health_care_access.csv' CSV HEADER;

\copy health_status (GENHLTH) FROM '/docker-entrypoint-initdb.d/health_status.csv' CSV HEADER;

\copy healthy_days (PHYSHLTH, MENTHLTH, POORHLTH) FROM '/docker-entrypoint-initdb.d/healthy_days.csv' CSV HEADER;

\copy heart_attack_stroke (HASYMP1, HASYMP2, HASYMP3, HASYMP4, HASYMP5, HASYMP6, STRSYMP1, STRSYMP2, STRSYMP3, STRSYMP4, STRSYMP5, STRSYMP6, FIRSTAID) FROM '/docker-entrypoint-initdb.d/heart_attack_stroke.csv' CSV HEADER;

\copy hiv_aids (HIVTST7, HIVTSTD3) FROM '/docker-entrypoint-initdb.d/hiv_aids.csv' CSV HEADER;

\copy hpv_vaccination (HPVADVC4, HPVADSHT) FROM '/docker-entrypoint-initdb.d/hpv_vaccination.csv' CSV HEADER;

\copy hypertension (BPHIGH6, BPMEDS1, CHOLCHK3, TOLDHI3) FROM '/docker-entrypoint-initdb.d/hypertension.csv' CSV HEADER;

\copy immunization (FLUSHOT7, FLSHTMY3, PNEUVAC4, SHINGLE2) FROM '/docker-entrypoint-initdb.d/immunization.csv' CSV HEADER;

\copy indoor_tan (INDORTAN) FROM '/docker-entrypoint-initdb.d/indoor_tan.csv' CSV HEADER;

\copy land_line_introduction (CTELENM1, PVTRESD1, COLGHOUS, STATERE1, CELPHON1, LADULT1, NUMADULT, RESPSLC1, LANDSEX2) FROM '/docker-entrypoint-initdb.d/land_line_introduction.csv' CSV HEADER;

\copy long_term_covid (COVIDPO1, COVIDSM1, COVIDACT) FROM '/docker-entrypoint-initdb.d/long_term_covid.csv' CSV HEADER;

\copy lung_cancer_screen (LCSFIRST, LCSLAST, LCSNUMCG, LCSCTSC1, LCSSCNCR, LCSCTWHN) FROM '/docker-entrypoint-initdb.d/lung_cancer_screen.csv' CSV HEADER;

\copy marijuana_use (MARIJAN1, MARJSMOK, MARJEAT, MARJVAPE, MARJDAB, MARJOTHR) FROM '/docker-entrypoint-initdb.d/marijuana_use.csv' CSV HEADER;

\copy other_tabacco_use (MENTCIGS, MENTECIG, HEATTBCO) FROM '/docker-entrypoint-initdb.d/other_tabacco_use.csv' CSV HEADER;

\copy pre_diabetes (PDIABTS1, PREDIAB2) FROM '/docker-entrypoint-initdb.d/pre_diabetes.csv' CSV HEADER;

\copy prostate_cancer_screen (PSATEST1, PSATIME1, PCPSARS2, PSASUGS1, PCSTALK2) FROM '/docker-entrypoint-initdb.d/prostate_cancer_screen.csv' CSV HEADER;

\copy questionnaire_lang (QSTLANG) FROM '/docker-entrypoint-initdb.d/questionnaire_lang.csv' CSV HEADER;

\copy questionnaire_ver (QSTVER) FROM '/docker-entrypoint-initdb.d/questionnaire_ver.csv' CSV HEADER;

\copy race_reactions (RRCLASS3, RRCOGNT2, RRTREAT, RRATWRK2, RRHCARE4, RRPHYSM2) FROM '/docker-entrypoint-initdb.d/race_reactions.csv' CSV HEADER;

\copy random_child_select (RCSRLTN2) FROM '/docker-entrypoint-initdb.d/random_child_select.csv' CSV HEADER;

\copy record_identification (_STATE, FMONTH, IDATE, IMONTH, IDAY, IYEAR, DISPCODE, SEQNO, _PSU) FROM '/docker-entrypoint-initdb.d/record_identification.csv' CSV HEADER;

\copy respondent_sex (SEXVAR) FROM '/docker-entrypoint-initdb.d/respondent_sex.csv' CSV HEADER;

\copy seatbelt_drink_drive (SEATBELT, DRNKDRI2) FROM '/docker-entrypoint-initdb.d/seatbelt_drink_drive.csv' CSV HEADER;

\copy sexual_orientation (SOMALE, SOFEMALE) FROM '/docker-entrypoint-initdb.d/sexual_orientation.csv' CSV HEADER;

\copy social_determinants (LSATISFY, EMTSUPRT, SDLONELY, SDHEMPLY, FOODSTMP, SDHFOOD1, SDHBILLS, SDHUTILS, SDHTRNSP, SDHSTRE1) FROM '/docker-entrypoint-initdb.d/social_determinants.csv' CSV HEADER;

\copy tabacco_cessation (LASTSMK2, STOPSMK2) FROM '/docker-entrypoint-initdb.d/tabacco_cessation.csv' CSV HEADER;

\copy tabacco_use (SMOKE100, SMOKDAY2, USENOW3, ECIGNOW2) FROM '/docker-entrypoint-initdb.d/tabacco_use.csv' CSV HEADER;

\copy tdap_adults (TETANUS1) FROM '/docker-entrypoint-initdb.d/tdap_adults.csv' CSV HEADER;

\copy urban_rural (_METSTAT, _URBSTAT) FROM '/docker-entrypoint-initdb.d/urban_rural.csv' CSV HEADER;

\copy weighting_variables_1 (MSCODE, _STSTR, _STRWT, _RAWRAKE, _WT2RAKE, _IMPRACE) FROM '/docker-entrypoint-initdb.d/weighting_variables_1.csv' CSV HEADER;

\copy weighting_variables_2 (_DUALUSE, _DUALCOR, _LLCPWT2, _LLCPWT) FROM '/docker-entrypoint-initdb.d/weighting_variables_2.csv' CSV HEADER;
