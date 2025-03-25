-- Auto-generated init.sql

-- Table: record_identification
CREATE TABLE IF NOT EXISTS record_identification (
    id SERIAL PRIMARY KEY,
    _state INT,
    fmonth VARCHAR(255),
    idate VARCHAR(255),
    imonth VARCHAR(255),
    iday VARCHAR(255),
    iyear INT,
    dispcode VARCHAR(255),
    seqno INT,
);

COPY record_identification (_state, fmonth, idate, imonth, iday, iyear, dispcode, seqno)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: land_line_introduction
CREATE TABLE IF NOT EXISTS land_line_introduction (
    id SERIAL PRIMARY KEY,
    _psu INT,
    ctelenm1 INT,
    pvtresd1 INT,
    colghous INT,
    statere1 INT,
    celphon1 INT,
    ladult1 INT,
    colgsex1 INT,
    numadult INT,
    landsex1 INT,
    nummen INT,
    numwomen INT,
);

COPY land_line_introduction (_psu, ctelenm1, pvtresd1, colghous, statere1, celphon1, ladult1, colgsex1, numadult, landsex1, nummen, numwomen)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: cell_phone_introduction
CREATE TABLE IF NOT EXISTS cell_phone_introduction (
    id SERIAL PRIMARY KEY,
    respslct INT,
    safetime INT,
    ctelnum1 INT,
    cellfon5 INT,
    cadult1 INT,
    cellsex1 INT,
    pvtresd3 INT,
    cclghous INT,
    cstate1 INT,
    landline INT,
);

COPY cell_phone_introduction (respslct, safetime, ctelnum1, cellfon5, cadult1, cellsex1, pvtresd3, cclghous, cstate1, landline)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: respondent_sex
CREATE TABLE IF NOT EXISTS respondent_sex (
    id SERIAL PRIMARY KEY,
    hhadult INT,
);

COPY respondent_sex (hhadult)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_status
CREATE TABLE IF NOT EXISTS health_status (
    id SERIAL PRIMARY KEY,
    sexvar INT,
);

COPY health_status (sexvar)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: healthy_days
CREATE TABLE IF NOT EXISTS healthy_days (
    id SERIAL PRIMARY KEY,
    genhlth INT,
    physhlth INT,
    menthlth INT,
);

COPY healthy_days (genhlth, physhlth, menthlth)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_care_access
CREATE TABLE IF NOT EXISTS health_care_access (
    id SERIAL PRIMARY KEY,
    poorhlth INT,
    priminsr INT,
    persdoc3 INT,
    medcost1 INT,
);

COPY health_care_access (poorhlth, priminsr, persdoc3, medcost1)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: exercise
CREATE TABLE IF NOT EXISTS exercise (
    id SERIAL PRIMARY KEY,
    checkup1 INT,
);

COPY exercise (checkup1)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: inadequate_sleep
CREATE TABLE IF NOT EXISTS inadequate_sleep (
    id SERIAL PRIMARY KEY,
    exerany2 INT,
);

COPY inadequate_sleep (exerany2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: oral_health
CREATE TABLE IF NOT EXISTS oral_health (
    id SERIAL PRIMARY KEY,
    sleptim1 INT,
    lastden4 INT,
);

COPY oral_health (sleptim1, lastden4)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: chronic_health_conditions
CREATE TABLE IF NOT EXISTS chronic_health_conditions (
    id SERIAL PRIMARY KEY,
    rmvteth4 INT,
    cvdinfr4 INT,
    cvdcrhd4 INT,
    cvdstrk3 INT,
    asthma3 INT,
    asthnow INT,
    chcscnc1 INT,
    chcocnc1 INT,
    chccopd3 INT,
    addepev3 INT,
    chckdny2 INT,
    havarth4 INT,
);

COPY chronic_health_conditions (rmvteth4, cvdinfr4, cvdcrhd4, cvdstrk3, asthma3, asthnow, chcscnc1, chcocnc1, chccopd3, addepev3, chckdny2, havarth4)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: demographics
CREATE TABLE IF NOT EXISTS demographics (
    id SERIAL PRIMARY KEY,
    diabete4 INT,
    marital INT,
    educa INT,
    renthom1 INT,
    numhhol4 INT,
    veteran3 INT,
    employ1 INT,
    children INT,
    income3 INT,
    pregnant INT,
    weight2 INT,
);

COPY demographics (diabete4, marital, educa, renthom1, numhhol4, veteran3, employ1, children, income3, pregnant, weight2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: disability
CREATE TABLE IF NOT EXISTS disability (
    id SERIAL PRIMARY KEY,
    height3 INT,
    deaf INT,
    blind INT,
    decide INT,
    diffwalk INT,
    diffdres INT,
);

COPY disability (height3, deaf, blind, decide, diffwalk, diffdres)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: breast_and_cervical_cancer_screening
CREATE TABLE IF NOT EXISTS breast_and_cervical_cancer_screening (
    id SERIAL PRIMARY KEY,
    diffalon INT,
    hadmam INT,
    howlong INT,
    cervscrn INT,
    crvclcnc INT,
    crvclpap INT,
    crvclhpv INT,
);

COPY breast_and_cervical_cancer_screening (diffalon, hadmam, howlong, cervscrn, crvclcnc, crvclpap, crvclhpv)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: colorectal_cancer_screening
CREATE TABLE IF NOT EXISTS colorectal_cancer_screening (
    id SERIAL PRIMARY KEY,
    hadhyst2 INT,
    hadsigm4 INT,
    colnsigm INT,
    colntes1 INT,
    sigmtes1 INT,
    lastsig4 INT,
    colncncr INT,
    vircolo1 INT,
    vclntes2 INT,
    smalstol INT,
    stoltest INT,
    stooldn2 INT,
    bldstfit INT,
);

COPY colorectal_cancer_screening (hadhyst2, hadsigm4, colnsigm, colntes1, sigmtes1, lastsig4, colncncr, vircolo1, vclntes2, smalstol, stoltest, stooldn2, bldstfit)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_use
CREATE TABLE IF NOT EXISTS tobacco_use (
    id SERIAL PRIMARY KEY,
    sdnates1 INT,
    smoke100 INT,
    smokday2 INT,
    usenow3 INT,
);

COPY tobacco_use (sdnates1, smoke100, smokday2, usenow3)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: lung_cancer_screening
CREATE TABLE IF NOT EXISTS lung_cancer_screening (
    id SERIAL PRIMARY KEY,
    ecignow2 INT,
    lcsfirst INT,
    lcslast INT,
    lcsnumcg INT,
    lcsctsc1 INT,
    lcsscncr INT,
);

COPY lung_cancer_screening (ecignow2, lcsfirst, lcslast, lcsnumcg, lcsctsc1, lcsscncr)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: alcohol_consumption
CREATE TABLE IF NOT EXISTS alcohol_consumption (
    id SERIAL PRIMARY KEY,
    lcsctwhn INT,
    alcday4 INT,
    avedrnk3 INT,
    drnk3ge5 INT,
);

COPY alcohol_consumption (lcsctwhn, alcday4, avedrnk3, drnk3ge5)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: immunization
CREATE TABLE IF NOT EXISTS immunization (
    id SERIAL PRIMARY KEY,
    maxdrnks INT,
    flushot7 INT,
    flshtmy3 INT,
    pneuvac4 INT,
);

COPY immunization (maxdrnks, flushot7, flshtmy3, pneuvac4)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: hiv/aids
CREATE TABLE IF NOT EXISTS hiv/aids (
    id SERIAL PRIMARY KEY,
    tetanus1 INT,
    hivtst7 INT,
    hivtstd3 INT,
);

COPY hiv/aids (tetanus1, hivtst7, hivtstd3)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: long-term_covid_effects
CREATE TABLE IF NOT EXISTS long-term_covid_effects (
    id SERIAL PRIMARY KEY,
    hivrisk5 INT,
    covidpos INT,
    covidsmp INT,
);

COPY long-term_covid_effects (hivrisk5, covidpos, covidsmp)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: pre-diabetes
CREATE TABLE IF NOT EXISTS pre-diabetes (
    id SERIAL PRIMARY KEY,
    covidprm INT,
    pdiabts1 INT,
);

COPY pre-diabetes (covidprm, pdiabts1)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: diabetes
CREATE TABLE IF NOT EXISTS diabetes (
    id SERIAL PRIMARY KEY,
    prediab2 INT,
    diabtype INT,
    insulin1 INT,
    chkhemo3 INT,
    eyeexam1 INT,
    diabeye1 INT,
    diabedu1 INT,
);

COPY diabetes (prediab2, diabtype, insulin1, chkhemo3, eyeexam1, diabeye1, diabedu1)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: me/cfs
CREATE TABLE IF NOT EXISTS me/cfs (
    id SERIAL PRIMARY KEY,
    feetsore INT,
    toldcfs INT,
    havecfs INT,
);

COPY me/cfs (feetsore, toldcfs, havecfs)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: place_of_flu_vaccination
CREATE TABLE IF NOT EXISTS place_of_flu_vaccination (
    id SERIAL PRIMARY KEY,
    workcfs INT,
);

COPY place_of_flu_vaccination (workcfs)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: hpv_vaccination
CREATE TABLE IF NOT EXISTS hpv_vaccination (
    id SERIAL PRIMARY KEY,
    imfvpla3 INT,
    hpvadvc4 INT,
);

COPY hpv_vaccination (imfvpla3, hpvadvc4)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: shingles_vaccination
CREATE TABLE IF NOT EXISTS shingles_vaccination (
    id SERIAL PRIMARY KEY,
    hpvadsht INT,
);

COPY shingles_vaccination (hpvadsht)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: covid_vaccination
CREATE TABLE IF NOT EXISTS covid_vaccination (
    id SERIAL PRIMARY KEY,
    shingle2 INT,
    covidva1 INT,
    covacget INT,
    covidnu1 INT,
    covidint INT,
    covidfs1 INT,
);

COPY covid_vaccination (shingle2, covidva1, covacget, covidnu1, covidint, covidfs1)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: respiratory_health
CREATE TABLE IF NOT EXISTS respiratory_health (
    id SERIAL PRIMARY KEY,
    covidse1 INT,
    copdcogh INT,
    copdflem INT,
    copdbrth INT,
    copdbtst INT,
);

COPY respiratory_health (covidse1, copdcogh, copdflem, copdbrth, copdbtst)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivorship:_type_of_cancer
CREATE TABLE IF NOT EXISTS cancer_survivorship:_type_of_cancer (
    id SERIAL PRIMARY KEY,
    copdsmok INT,
    cncrdiff INT,
    cncrage INT,
);

COPY cancer_survivorship:_type_of_cancer (copdsmok, cncrdiff, cncrage)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivorship:_course_of_treatment
CREATE TABLE IF NOT EXISTS cancer_survivorship:_course_of_treatment (
    id SERIAL PRIMARY KEY,
    cncrtyp2 INT,
    csrvtrt3 INT,
    csrvdoc1 INT,
    csrvsum INT,
    csrvrtrn INT,
    csrvinst INT,
    csrvinsr INT,
    csrvdein INT,
);

COPY cancer_survivorship:_course_of_treatment (cncrtyp2, csrvtrt3, csrvdoc1, csrvsum, csrvrtrn, csrvinst, csrvinsr, csrvdein)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivorship:_pain_management
CREATE TABLE IF NOT EXISTS cancer_survivorship:_pain_management (
    id SERIAL PRIMARY KEY,
    csrvclin INT,
    csrvpain INT,
);

COPY cancer_survivorship:_pain_management (csrvclin, csrvpain)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: prostate_cancer_screening
CREATE TABLE IF NOT EXISTS prostate_cancer_screening (
    id SERIAL PRIMARY KEY,
    csrvctl2 INT,
    psatest1 INT,
    psatime1 INT,
    pcpsars2 INT,
    psasugst INT,
);

COPY prostate_cancer_screening (csrvctl2, psatest1, psatime1, pcpsars2, psasugst)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: cognitive_decline
CREATE TABLE IF NOT EXISTS cognitive_decline (
    id SERIAL PRIMARY KEY,
    pcstalk1 INT,
    cimemlos INT,
    cdhouse INT,
    cdassist INT,
    cdhelp INT,
    cdsocial INT,
);

COPY cognitive_decline (pcstalk1, cimemlos, cdhouse, cdassist, cdhelp, cdsocial)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: caregiver
CREATE TABLE IF NOT EXISTS caregiver (
    id SERIAL PRIMARY KEY,
    cddiscus INT,
    caregiv1 INT,
    crgvrel4 INT,
    crgvlng1 INT,
    crgvhrs1 INT,
    crgvprb3 INT,
    crgvalzd INT,
    crgvper1 INT,
    crgvhou1 INT,
);

COPY caregiver (cddiscus, caregiv1, crgvrel4, crgvlng1, crgvhrs1, crgvprb3, crgvalzd, crgvper1, crgvhou1)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: adverse_childhood_experiences
CREATE TABLE IF NOT EXISTS adverse_childhood_experiences (
    id SERIAL PRIMARY KEY,
    crgvexpt INT,
    acedeprs INT,
    acedrink INT,
    acedrugs INT,
    aceprisn INT,
    acedivrc INT,
    acepunch INT,
    acehurt1 INT,
    aceswear INT,
    acetouch INT,
    acetthem INT,
    acehvsex INT,
    aceadsaf INT,
);

COPY adverse_childhood_experiences (crgvexpt, acedeprs, acedrink, acedrugs, aceprisn, acedivrc, acepunch, acehurt1, aceswear, acetouch, acetthem, acehvsex, aceadsaf)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: social_determinants_and_health_equity
CREATE TABLE IF NOT EXISTS social_determinants_and_health_equity (
    id SERIAL PRIMARY KEY,
    aceadned INT,
    lsatisfy INT,
    emtsuprt INT,
    sdhisolt INT,
    sdhemply INT,
    foodstmp INT,
    sdhfood1 INT,
    sdhbills INT,
    sdhutils INT,
    sdhtrnsp INT,
);

COPY social_determinants_and_health_equity (aceadned, lsatisfy, emtsuprt, sdhisolt, sdhemply, foodstmp, sdhfood1, sdhbills, sdhutils, sdhtrnsp)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: marijuana_use
CREATE TABLE IF NOT EXISTS marijuana_use (
    id SERIAL PRIMARY KEY,
    sdhstre1 INT,
    marijan1 INT,
    marjsmok INT,
    marjeat INT,
    marjvape INT,
    marjdab INT,
);

COPY marijuana_use (sdhstre1, marijan1, marjsmok, marjeat, marjvape, marjdab)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_cessation
CREATE TABLE IF NOT EXISTS tobacco_cessation (
    id SERIAL PRIMARY KEY,
    marjothr INT,
    lastsmk2 INT,
);

COPY tobacco_cessation (marjothr, lastsmk2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: other_tobacco_use
CREATE TABLE IF NOT EXISTS other_tobacco_use (
    id SERIAL PRIMARY KEY,
    stopsmk2 INT,
    mentcigs INT,
    mentecig INT,
);

COPY other_tobacco_use (stopsmk2, mentcigs, mentecig)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: alcohol_screening_&_brief_intervention_(asbi)
CREATE TABLE IF NOT EXISTS alcohol_screening_&_brief_intervention_(asbi) (
    id SERIAL PRIMARY KEY,
    heattbco INT,
    asbialch INT,
    asbidrnk INT,
    asbibing INT,
    asbiadvc INT,
);

COPY alcohol_screening_&_brief_intervention_(asbi) (heattbco, asbialch, asbidrnk, asbibing, asbiadvc)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: firearm_safety
CREATE TABLE IF NOT EXISTS firearm_safety (
    id SERIAL PRIMARY KEY,
    asbirduc INT,
    firearm5 INT,
    gunload INT,
);

COPY firearm_safety (asbirduc, firearm5, gunload)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: random_child_selection
CREATE TABLE IF NOT EXISTS random_child_selection (
    id SERIAL PRIMARY KEY,
    loadulk2 INT,
    rcsgend1 INT,
    rcsxbrth INT,
);

COPY random_child_selection (loadulk2, rcsgend1, rcsxbrth)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: childhood_asthma_prevalence
CREATE TABLE IF NOT EXISTS childhood_asthma_prevalence (
    id SERIAL PRIMARY KEY,
    rcsrltn2 INT,
    casthdx2 INT,
);

COPY childhood_asthma_prevalence (rcsrltn2, casthdx2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: sex_at_birth
CREATE TABLE IF NOT EXISTS sex_at_birth (
    id SERIAL PRIMARY KEY,
    casthno2 INT,
);

COPY sex_at_birth (casthno2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: sexual_orientation_and_gender_identity_(sogi)
CREATE TABLE IF NOT EXISTS sexual_orientation_and_gender_identity_(sogi) (
    id SERIAL PRIMARY KEY,
    birthsex INT,
    somale INT,
    sofemale INT,
);

COPY sexual_orientation_and_gender_identity_(sogi) (birthsex, somale, sofemale)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: family_planning
CREATE TABLE IF NOT EXISTS family_planning (
    id SERIAL PRIMARY KEY,
    trnsgndr INT,
    hadsex INT,
    pfpprvn4 INT,
    typcntr9 INT,
    brthcnt4 INT,
    whereget INT,
    nobcuse8 INT,
);

COPY family_planning (trnsgndr, hadsex, pfpprvn4, typcntr9, brthcnt4, whereget, nobcuse8)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: reactions_to_race
CREATE TABLE IF NOT EXISTS reactions_to_race (
    id SERIAL PRIMARY KEY,
    bcprefer INT,
    rrclass3 INT,
    rrcognt2 INT,
    rrtreat INT,
    rratwrk2 INT,
    rrhcare4 INT,
);

COPY reactions_to_race (bcprefer, rrclass3, rrcognt2, rrtreat, rratwrk2, rrhcare4)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_version
CREATE TABLE IF NOT EXISTS questionnaire_version (
    id SERIAL PRIMARY KEY,
    rrphysm2 INT,
);

COPY questionnaire_version (rrphysm2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_language
CREATE TABLE IF NOT EXISTS questionnaire_language (
    id SERIAL PRIMARY KEY,
    qstver INT,
);

COPY questionnaire_language (qstver)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: urban_rural
CREATE TABLE IF NOT EXISTS urban_rural (
    id SERIAL PRIMARY KEY,
    qstlang INT,
    _metstat INT,
);

COPY urban_rural (qstlang, _metstat)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: weighting_variables
CREATE TABLE IF NOT EXISTS weighting_variables (
    id SERIAL PRIMARY KEY,
    _urbstat INT,
    mscode INT,
    _ststr INT,
    _strwt INT,
    _rawrake INT,
    _wt2rake INT,
);

COPY weighting_variables (_urbstat, mscode, _ststr, _strwt, _rawrake, _wt2rake)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_demographic_variables
CREATE TABLE IF NOT EXISTS child_demographic_variables (
    id SERIAL PRIMARY KEY,
    _imprace INT,
    _chispnc INT,
    _crace2 INT,
);

COPY child_demographic_variables (_imprace, _chispnc, _crace2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_weighting_variables
CREATE TABLE IF NOT EXISTS child_weighting_variables (
    id SERIAL PRIMARY KEY,
    _cprace2 INT,
    cageg INT,
);

COPY child_weighting_variables (_cprace2, cageg)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: weighting_variables
CREATE TABLE IF NOT EXISTS weighting_variables (
    id SERIAL PRIMARY KEY,
    _cllcpwt INT,
    _dualuse INT,
    _dualcor INT,
    _llcpwt2 INT,
);

COPY weighting_variables (_cllcpwt, _dualuse, _dualcor, _llcpwt2)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_variables
CREATE TABLE IF NOT EXISTS calculated_variables (
    id SERIAL PRIMARY KEY,
    _llcpwt INT,
    _rfhlth INT,
    _phys14d INT,
    _ment14d INT,
    _hlthpln INT,
    _hcvu652 INT,
    _totinda INT,
    _exteth3 INT,
    _alteth3 INT,
    _denvst3 INT,
    _michd INT,
    _ltasth1 INT,
    _casthm1 INT,
    _asthms1 INT,
);

COPY calculated_variables (_llcpwt, _rfhlth, _phys14d, _ment14d, _hlthpln, _hcvu652, _totinda, _exteth3, _alteth3, _denvst3, _michd, _ltasth1, _casthm1, _asthms1)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_race_variables
CREATE TABLE IF NOT EXISTS calculated_race_variables (
    id SERIAL PRIMARY KEY,
    _drdxar2 INT,
    _prace2 INT,
    _mrace2 INT,
    _hispanc INT,
    _race1 INT,
    _raceg22 INT,
    _racegr4 INT,
);

COPY calculated_race_variables (_drdxar2, _prace2, _mrace2, _hispanc, _race1, _raceg22, _racegr4)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_variables
CREATE TABLE IF NOT EXISTS calculated_variables (
    id SERIAL PRIMARY KEY,
    _racepr1 INT,
    _sex INT,
    _ageg5yr INT,
    _age65yr INT,
    _age80 INT,
    _age_g INT,
    htin4 INT,
    htm4 INT,
    wtkg3 INT,
    _bmi5 INT,
    _bmi5cat INT,
    _rfbmi5 INT,
    _chldcnt INT,
    _educag INT,
    _incomg1 INT,
    _rfmam22 INT,
    _mam5023 INT,
    _hadcoln INT,
    _clnscp1 INT,
    _hadsigm INT,
    _sgmscp1 INT,
    _sgms101 INT,
    _rfblds5 INT,
    _stoldn1 INT,
    _vircol1 INT,
    _sbonti1 INT,
    _crcrec2 INT,
    _smoker3 INT,
    _rfsmok3 INT,
    _cureci2 INT,
    _yrssmok INT,
    _packday INT,
    _packyrs INT,
    _yrsquit INT,
    _smokgrp INT,
    _lcsrec INT,
    drnkany6 INT,
    drocdy4_ INT,
    _rfbing6 INT,
    _drnkwk2 INT,
    _rfdrhv8 INT,
    _flshot7 INT,
    _pneumo3 INT,
);

COPY calculated_variables (_racepr1, _sex, _ageg5yr, _age65yr, _age80, _age_g, htin4, htm4, wtkg3, _bmi5, _bmi5cat, _rfbmi5, _chldcnt, _educag, _incomg1, _rfmam22, _mam5023, _hadcoln, _clnscp1, _hadsigm, _sgmscp1, _sgms101, _rfblds5, _stoldn1, _vircol1, _sbonti1, _crcrec2, _smoker3, _rfsmok3, _cureci2, _yrssmok, _packday, _packyrs, _yrsquit, _smokgrp, _lcsrec, drnkany6, drocdy4_, _rfbing6, _drnkwk2, _rfdrhv8, _flshot7, _pneumo3)
FROM '/docker-entrypoint-initdb.d/brfss_2022.csv'
DELIMITER ','
CSV HEADER;