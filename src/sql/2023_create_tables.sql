CREATE TABLE IF NOT EXISTS ace (
    ACEDEPRS NUMERIC,
    ACEDRINK NUMERIC,
    ACEDRUGS NUMERIC,
    ACEPRISN NUMERIC,
    ACEDIVRC NUMERIC,
    ACEPUNCH NUMERIC,
    ACEHURT1 NUMERIC,
    ACESWEAR NUMERIC,
    ACETOUCH NUMERIC,
    ACETTHEM NUMERIC,
    ACEHVSEX NUMERIC,
    ACEADSAF NUMERIC,
    ACEADNED NUMERIC
);

CREATE TABLE IF NOT EXISTS alcohol_consumption (
    ALCDAY4 NUMERIC,
    AVEDRNK3 NUMERIC,
    DRNK3GE5 NUMERIC,
    MAXDRNKS NUMERIC
);

CREATE TABLE IF NOT EXISTS arthritis (
    ARTHEXER NUMERIC,
    ARTHEDU NUMERIC,
    LMTJOIN3 NUMERIC,
    ARTHDIS2 NUMERIC,
    JOINPAI2 NUMERIC
);

CREATE TABLE IF NOT EXISTS aspirin_cvd (
    ASPIRIN NUMERIC
);

CREATE TABLE IF NOT EXISTS breast_cervical_cancer_screen (
    HADMAM NUMERIC,
    HOWLONG NUMERIC,
    CERVSCRN NUMERIC,
    CRVCLCNC NUMERIC,
    CRVCLPAP NUMERIC,
    CRVCLHPV NUMERIC,
    HADHYST2 NUMERIC
);

CREATE TABLE IF NOT EXISTS calculated_race_variables (
    _MRACE1 NUMERIC,
    _HISPANC NUMERIC,
    _RACE NUMERIC,
    _RACEG21 NUMERIC,
    _RACEGR3 NUMERIC,
    _RACEPRV NUMERIC
);

CREATE TABLE IF NOT EXISTS calculated_variables_1 (
    _RFHLTH NUMERIC,
    _PHYS14D NUMERIC,
    _MENT14D NUMERIC,
    _HLTHPL1 NUMERIC,
    _HCVU653 NUMERIC,
    _TOTINDA NUMERIC,
    METVL12_ NUMERIC,
    METVL22_ NUMERIC,
    MAXVO21_ NUMERIC,
    FC601_ NUMERIC,
    ACTIN13_ NUMERIC,
    ACTIN23_ NUMERIC,
    PADUR1_ NUMERIC,
    PADUR2_ NUMERIC,
    PAFREQ1_ NUMERIC,
    PAFREQ2_ NUMERIC,
    _MINAC12 NUMERIC,
    _MINAC22 NUMERIC,
    STRFREQ_ NUMERIC,
    PAMISS3_ NUMERIC,
    PAMIN13_ NUMERIC,
    PAMIN23_ NUMERIC,
    PA3MIN_ NUMERIC,
    PAVIG13_ NUMERIC,
    PAVIG23_ NUMERIC,
    PA3VIGM_ NUMERIC,
    _PACAT3 NUMERIC,
    _PAINDX3 NUMERIC,
    _PA150R4 NUMERIC,
    _PA300R4 NUMERIC,
    _PA30023 NUMERIC,
    _PASTRNG NUMERIC,
    _PAREC3 NUMERIC,
    _PASTAE3 NUMERIC,
    _RFHYPE6 NUMERIC,
    _CHOLCH3 NUMERIC,
    _RFCHOL3 NUMERIC,
    _MICHD NUMERIC,
    _LTASTH1 NUMERIC,
    _CASTHM1 NUMERIC,
    _ASTHMS1 NUMERIC,
    _DRDXAR2 NUMERIC
);

CREATE TABLE IF NOT EXISTS calculated_variables_2 (
    _SEX NUMERIC,
    _AGEG5YR NUMERIC,
    _AGE65YR NUMERIC,
    _AGE80 NUMERIC,
    _AGE_G NUMERIC,
    HTIN4 NUMERIC,
    HTM4 NUMERIC,
    WTKG3 NUMERIC,
    _BMI5 NUMERIC,
    _BMI5CAT NUMERIC,
    _RFBMI5 NUMERIC,
    _CHLDCNT NUMERIC,
    _EDUCAG NUMERIC,
    _INCOMG1 NUMERIC,
    _SMOKER3 NUMERIC,
    _RFSMOK3 NUMERIC,
    _CURECI2 NUMERIC,
    DRNKANY6 NUMERIC,
    DROCDY4_ NUMERIC,
    _RFBING6 NUMERIC,
    _DRNKWK2 NUMERIC,
    _RFDRHV8 NUMERIC,
    _FLSHOT7 NUMERIC,
    _PNEUMO3 NUMERIC,
    _AIDTST4 NUMERIC,
    _RFSEAT2 NUMERIC,
    _RFSEAT3 NUMERIC,
    _DRNKDRV NUMERIC
);

CREATE TABLE IF NOT EXISTS cancer_survivor_pain (
    CSRVPAIN NUMERIC,
    CSRVCTL2 NUMERIC
);

CREATE TABLE IF NOT EXISTS cancer_survivor_treat (
    CSRVTRT3 NUMERIC,
    CSRVDOC1 NUMERIC,
    CSRVSUM NUMERIC,
    CSRVRTRN NUMERIC,
    CSRVINST NUMERIC,
    CSRVINSR NUMERIC,
    CSRVDEIN NUMERIC,
    CSRVCLIN NUMERIC
);

CREATE TABLE IF NOT EXISTS cancer_survivor_type (
    CNCRDIFF NUMERIC,
    CNCRAGE NUMERIC,
    CNCRTYP2 NUMERIC
);

CREATE TABLE IF NOT EXISTS caregiver (
    CAREGIV1 NUMERIC,
    CRGVREL4 NUMERIC,
    CRGVLNG1 NUMERIC,
    CRGVHRS1 NUMERIC,
    CRGVPRB3 NUMERIC,
    CRGVALZD NUMERIC,
    CRGVPER1 NUMERIC,
    CRGVHOU1 NUMERIC,
    CRGVEXPT NUMERIC
);

CREATE TABLE IF NOT EXISTS cell_phone_introduction (
    SAFETIME NUMERIC,
    CTELNUM1 NUMERIC,
    CELLFONE5 NUMERIC,
    CADULT1 NUMERIC,
    CELLSEX2 NUMERIC,
    PVTRESD3 NUMERIC,
    CCLGHOUS NUMERIC,
    CSTATE1 NUMERIC,
    LANDLINE NUMERIC,
    HHADULT NUMERIC
);

CREATE TABLE IF NOT EXISTS child_demographics (
    _CHISPNC NUMERIC,
    _CRACE1 NUMERIC
);

CREATE TABLE IF NOT EXISTS child_weighting_variables (
    CAGEG NUMERIC,
    _CLLCPWT NUMERIC
);

CREATE TABLE IF NOT EXISTS childhood_asthma (
    CASTHDX2 NUMERIC,
    CASTHNO2 NUMERIC
);

CREATE TABLE IF NOT EXISTS cholesterol (
    CHOLMED3 NUMERIC
);

CREATE TABLE IF NOT EXISTS chronic_health_conditions (
    CVDINFR4 NUMERIC,
    CVDCRHD4 NUMERIC,
    CVDSTRK3 NUMERIC,
    ASTHMA3 NUMERIC,
    ASTHNOW NUMERIC,
    CHCSCNC1 NUMERIC,
    CHCOCNC1 NUMERIC,
    CHCCOPD3 NUMERIC,
    ADDEPEV3 NUMERIC,
    CHCKDNY2 NUMERIC,
    HAVARTH4 NUMERIC,
    DIABETE4 NUMERIC,
    DIABAGE4 NUMERIC
);

CREATE TABLE IF NOT EXISTS cognitive_decline (
    CIMEMLO1 NUMERIC,
    CDWORRY NUMERIC,
    CDDISCU1 NUMERIC,
    CDHOUS1 NUMERIC,
    CDSOCIA1 NUMERIC
);

CREATE TABLE IF NOT EXISTS colorectal_cancer_screen (
    HADSIGM4 NUMERIC,
    COLNSIGM NUMERIC,
    COLNTES1 NUMERIC,
    SIGMTES1 NUMERIC,
    LASTSIG4 NUMERIC,
    COLNCNCR NUMERIC,
    VIRCOLO1 NUMERIC,
    VCLNTES2 NUMERIC,
    SMALSTOL NUMERIC,
    STOLTEST NUMERIC,
    STOOLDN2 NUMERIC,
    BLDSTFIT NUMERIC,
    SDNATES1 NUMERIC
);

CREATE TABLE IF NOT EXISTS covid_vaccination (
    COVIDVA1 NUMERIC,
    COVACGE1 NUMERIC,
    COVIDNU2 NUMERIC
);

CREATE TABLE IF NOT EXISTS demographics (
    MARITAL NUMERIC,
    EDUCA NUMERIC,
    RENTHOM1 NUMERIC,
    NUMHHOL4 NUMERIC,
    NUMPHON4 NUMERIC,
    CPDEMO1C NUMERIC,
    VETERAN3 NUMERIC,
    EMPLOY1 NUMERIC,
    CHILDREN NUMERIC,
    INCOME3 NUMERIC,
    PREGNANT NUMERIC,
    WEIGHT2 NUMERIC,
    HEIGHT3 NUMERIC
);

CREATE TABLE IF NOT EXISTS diabetes (
    DIABTYPE NUMERIC,
    INSULIN1 NUMERIC,
    CHKHEMO3 NUMERIC,
    EYEEXAM1 NUMERIC,
    DIABEYE1 NUMERIC,
    DIABEDU1 NUMERIC,
    FEETSORE NUMERIC
);

CREATE TABLE IF NOT EXISTS disability (
    DEAF NUMERIC,
    BLIND NUMERIC,
    DECIDE NUMERIC,
    DIFFWALK NUMERIC,
    DIFFDRES NUMERIC,
    DIFFALON NUMERIC
);

CREATE TABLE IF NOT EXISTS excess_sun_exposure (
    NUMBURN3 NUMERIC,
    SUNPRTCT NUMERIC,
    WKDAYOUT NUMERIC,
    WKENDOUT NUMERIC
);

CREATE TABLE IF NOT EXISTS exercise (
    EXERANY2 NUMERIC,
    EXRACT12 NUMERIC,
    EXEROFT1 NUMERIC,
    EXERHMM1 NUMERIC,
    EXRACT22 NUMERIC,
    EXEROFT2 NUMERIC,
    EXERHMM2 NUMERIC,
    STRENGTH NUMERIC
);

CREATE TABLE IF NOT EXISTS falls (
    FALL12MN NUMERIC,
    FALLINJ5 NUMERIC
);

CREATE TABLE IF NOT EXISTS firearm_safety (
    FIREARM5 NUMERIC,
    GUNLOAD NUMERIC,
    LOADULK2 NUMERIC
);

CREATE TABLE IF NOT EXISTS flu_vaccination (
    IMFVPLA4 NUMERIC
);

CREATE TABLE IF NOT EXISTS health_care_access (
    PRIMINS1 NUMERIC,
    PERSDOC3 NUMERIC,
    MEDCOST1 NUMERIC,
    CHECKUP1 NUMERIC
);

CREATE TABLE IF NOT EXISTS health_status (
    GENHLTH NUMERIC
);

CREATE TABLE IF NOT EXISTS healthy_days (
    PHYSHLTH NUMERIC,
    MENTHLTH NUMERIC,
    POORHLTH NUMERIC
);

CREATE TABLE IF NOT EXISTS heart_attack_stroke (
    HASYMP1 NUMERIC,
    HASYMP2 NUMERIC,
    HASYMP3 NUMERIC,
    HASYMP4 NUMERIC,
    HASYMP5 NUMERIC,
    HASYMP6 NUMERIC,
    STRSYMP1 NUMERIC,
    STRSYMP2 NUMERIC,
    STRSYMP3 NUMERIC,
    STRSYMP4 NUMERIC,
    STRSYMP5 NUMERIC,
    STRSYMP6 NUMERIC,
    FIRSTAID NUMERIC
);

CREATE TABLE IF NOT EXISTS hiv_aids (
    HIVTST7 NUMERIC,
    HIVTSTD3 NUMERIC
);

CREATE TABLE IF NOT EXISTS hpv_vaccination (
    HPVADVC4 NUMERIC,
    HPVADSHT NUMERIC
);

CREATE TABLE IF NOT EXISTS hypertension (
    BPHIGH6 NUMERIC,
    BPMEDS1 NUMERIC,
    CHOLCHK3 NUMERIC,
    TOLDHI3 NUMERIC
);

CREATE TABLE IF NOT EXISTS immunization (
    FLUSHOT7 NUMERIC,
    FLSHTMY3 NUMERIC,
    PNEUVAC4 NUMERIC,
    SHINGLE2 NUMERIC
);

CREATE TABLE IF NOT EXISTS indoor_tan (
    INDORTAN NUMERIC
);

CREATE TABLE IF NOT EXISTS land_line_introduction (
    CTELENM1 NUMERIC,
    PVTRESD1 NUMERIC,
    COLGHOUS NUMERIC,
    STATERE1 NUMERIC,
    CELPHON1 NUMERIC,
    LADULT1 NUMERIC,
    NUMADULT NUMERIC,
    RESPSLC1 NUMERIC,
    LANDSEX2 NUMERIC
);

CREATE TABLE IF NOT EXISTS long_term_covid (
    COVIDPO1 NUMERIC,
    COVIDSM1 NUMERIC,
    COVIDACT NUMERIC
);

CREATE TABLE IF NOT EXISTS lung_cancer_screen (
    LCSFIRST NUMERIC,
    LCSLAST NUMERIC,
    LCSNUMCG NUMERIC,
    LCSCTSC1 NUMERIC,
    LCSSCNCR NUMERIC,
    LCSCTWHN NUMERIC
);

CREATE TABLE IF NOT EXISTS marijuana_use (
    MARIJAN1 NUMERIC,
    MARJSMOK NUMERIC,
    MARJEAT NUMERIC,
    MARJVAPE NUMERIC,
    MARJDAB NUMERIC,
    MARJOTHR NUMERIC
);

CREATE TABLE IF NOT EXISTS other_tabacco_use (
    MENTCIGS NUMERIC,
    MENTECIG NUMERIC,
    HEATTBCO NUMERIC
);

CREATE TABLE IF NOT EXISTS pre_diabetes (
    PDIABTS1 NUMERIC,
    PREDIAB2 NUMERIC
);

CREATE TABLE IF NOT EXISTS prostate_cancer_screen (
    PSATEST1 NUMERIC,
    PSATIME1 NUMERIC,
    PCPSARS2 NUMERIC,
    PSASUGS1 NUMERIC,
    PCSTALK2 NUMERIC
);

CREATE TABLE IF NOT EXISTS questionnaire_lang (
    QSTLANG NUMERIC
);

CREATE TABLE IF NOT EXISTS questionnaire_ver (
    QSTVER NUMERIC
);

CREATE TABLE IF NOT EXISTS race_reactions (
    RRCLASS3 NUMERIC,
    RRCOGNT2 NUMERIC,
    RRTREAT NUMERIC,
    RRATWRK2 NUMERIC,
    RRHCARE4 NUMERIC,
    RRPHYSM2 NUMERIC
);

CREATE TABLE IF NOT EXISTS random_child_select (
    RCSRLTN2 NUMERIC
);

CREATE TABLE IF NOT EXISTS record_identification (
    _STATE NUMERIC,
    FMONTH VARCHAR(255),
    IDATE VARCHAR(255),
    IMONTH VARCHAR(255),
    IDAY VARCHAR(255),
    IYEAR NUMERIC,
    DISPCODE VARCHAR(255),
    SEQNO NUMERIC,
    _PSU NUMERIC
);

CREATE TABLE IF NOT EXISTS respondent_sex (
    SEXVAR NUMERIC
);

CREATE TABLE IF NOT EXISTS seatbelt_drink_drive (
    SEATBELT NUMERIC,
    DRNKDRI2 NUMERIC
);

CREATE TABLE IF NOT EXISTS sexual_orientation (
    SOMALE NUMERIC,
    SOFEMALE NUMERIC
);

CREATE TABLE IF NOT EXISTS social_determinants (
    LSATISFY NUMERIC,
    EMTSUPRT NUMERIC,
    SDLONELY NUMERIC,
    SDHEMPLY NUMERIC,
    FOODSTMP NUMERIC,
    SDHFOOD1 NUMERIC,
    SDHBILLS NUMERIC,
    SDHUTILS NUMERIC,
    SDHTRNSP NUMERIC,
    SDHSTRE1 NUMERIC
);

CREATE TABLE IF NOT EXISTS tabacco_cessation (
    LASTSMK2 NUMERIC,
    STOPSMK2 NUMERIC
);

CREATE TABLE IF NOT EXISTS tabacco_use (
    SMOKE100 NUMERIC,
    SMOKDAY2 NUMERIC,
    USENOW3 NUMERIC,
    ECIGNOW2 NUMERIC
);

CREATE TABLE IF NOT EXISTS tdap_adults (
    TETANUS1 NUMERIC
);

CREATE TABLE IF NOT EXISTS urban_rural (
    _METSTAT NUMERIC,
    _URBSTAT NUMERIC
);

CREATE TABLE IF NOT EXISTS weighting_variables_1 (
    MSCODE NUMERIC,
    _STSTR NUMERIC,
    _STRWT NUMERIC,
    _RAWRAKE NUMERIC,
    _WT2RAKE NUMERIC,
    _IMPRACE NUMERIC
);

CREATE TABLE IF NOT EXISTS weighting_variables_2 (
    _DUALUSE NUMERIC,
    _DUALCOR NUMERIC,
    _LLCPWT2 NUMERIC,
    _LLCPWT NUMERIC
);

