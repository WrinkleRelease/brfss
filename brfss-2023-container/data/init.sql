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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
    numadult INT,
    respslc1 INT,
);

COPY land_line_introduction (_psu, ctelenm1, pvtresd1, colghous, statere1, celphon1, ladult1, numadult, respslc1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cell_phone_introduction
CREATE TABLE IF NOT EXISTS cell_phone_introduction (
    id SERIAL PRIMARY KEY,
    landsex2 INT,
    safetime INT,
    ctelnum1 INT,
    cellfon5 INT,
    cadult1 INT,
    cellsex2 INT,
    pvtresd3 INT,
    cclghous INT,
    cstate1 INT,
    landline INT,
);

COPY cell_phone_introduction (landsex2, safetime, ctelnum1, cellfon5, cadult1, cellsex2, pvtresd3, cclghous, cstate1, landline)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: respondent_sex
CREATE TABLE IF NOT EXISTS respondent_sex (
    id SERIAL PRIMARY KEY,
    hhadult INT,
);

COPY respondent_sex (hhadult)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_status
CREATE TABLE IF NOT EXISTS health_status (
    id SERIAL PRIMARY KEY,
    sexvar INT,
);

COPY health_status (sexvar)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_care_access
CREATE TABLE IF NOT EXISTS health_care_access (
    id SERIAL PRIMARY KEY,
    poorhlth INT,
    primins1 INT,
    persdoc3 INT,
    medcost1 INT,
);

COPY health_care_access (poorhlth, primins1, persdoc3, medcost1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: exercise_(physical_activity)
CREATE TABLE IF NOT EXISTS exercise_(physical_activity) (
    id SERIAL PRIMARY KEY,
    checkup1 INT,
    exerany2 INT,
    exract12 INT,
    exeroft1 INT,
    exerhmm1 INT,
    exract22 INT,
    exeroft2 INT,
    exerhmm2 INT,
);

COPY exercise_(physical_activity) (checkup1, exerany2, exract12, exeroft1, exerhmm1, exract22, exeroft2, exerhmm2)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hypertension_awareness
CREATE TABLE IF NOT EXISTS hypertension_awareness (
    id SERIAL PRIMARY KEY,
    strength INT,
    bphigh6 INT,
);

COPY hypertension_awareness (strength, bphigh6)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cholesterol_awareness
CREATE TABLE IF NOT EXISTS cholesterol_awareness (
    id SERIAL PRIMARY KEY,
    bpmeds1 INT,
    cholchk3 INT,
    toldhi3 INT,
);

COPY cholesterol_awareness (bpmeds1, cholchk3, toldhi3)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: chronic_health_conditions
CREATE TABLE IF NOT EXISTS chronic_health_conditions (
    id SERIAL PRIMARY KEY,
    cholmed3 INT,
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
    diabete4 INT,
);

COPY chronic_health_conditions (cholmed3, cvdinfr4, cvdcrhd4, cvdstrk3, asthma3, asthnow, chcscnc1, chcocnc1, chccopd3, addepev3, chckdny2, havarth4, diabete4)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: demographics
CREATE TABLE IF NOT EXISTS demographics (
    id SERIAL PRIMARY KEY,
    diabage4 INT,
    marital INT,
    educa INT,
    renthom1 INT,
    numhhol4 INT,
    numphon4 INT,
    cpdemo1c INT,
    veteran3 INT,
    employ1 INT,
    children INT,
    income3 INT,
    pregnant INT,
    weight2 INT,
);

COPY demographics (diabage4, marital, educa, renthom1, numhhol4, numphon4, cpdemo1c, veteran3, employ1, children, income3, pregnant, weight2)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: falls
CREATE TABLE IF NOT EXISTS falls (
    id SERIAL PRIMARY KEY,
    diffalon INT,
    fall12mn INT,
);

COPY falls (diffalon, fall12mn)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_use
CREATE TABLE IF NOT EXISTS tobacco_use (
    id SERIAL PRIMARY KEY,
    fallinj5 INT,
    smoke100 INT,
    smokday2 INT,
    usenow3 INT,
);

COPY tobacco_use (fallinj5, smoke100, smokday2, usenow3)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: alcohol_consumption
CREATE TABLE IF NOT EXISTS alcohol_consumption (
    id SERIAL PRIMARY KEY,
    ecignow2 INT,
    alcday4 INT,
    avedrnk3 INT,
    drnk3ge5 INT,
);

COPY alcohol_consumption (ecignow2, alcday4, avedrnk3, drnk3ge5)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hiv/aids
CREATE TABLE IF NOT EXISTS hiv/aids (
    id SERIAL PRIMARY KEY,
    shingle2 INT,
    hivtst7 INT,
);

COPY hiv/aids (shingle2, hivtst7)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: seatbelt_use_and_drinking_and_driving
CREATE TABLE IF NOT EXISTS seatbelt_use_and_drinking_and_driving (
    id SERIAL PRIMARY KEY,
    hivtstd3 INT,
    seatbelt INT,
);

COPY seatbelt_use_and_drinking_and_driving (hivtstd3, seatbelt)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: long-term_covid_effects
CREATE TABLE IF NOT EXISTS long-term_covid_effects (
    id SERIAL PRIMARY KEY,
    drnkdri2 INT,
    covidpo1 INT,
    covidsm1 INT,
);

COPY long-term_covid_effects (drnkdri2, covidpo1, covidsm1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: pre-diabetes
CREATE TABLE IF NOT EXISTS pre-diabetes (
    id SERIAL PRIMARY KEY,
    covidact INT,
    pdiabts1 INT,
);

COPY pre-diabetes (covidact, pdiabts1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: arthritis
CREATE TABLE IF NOT EXISTS arthritis (
    id SERIAL PRIMARY KEY,
    feetsore INT,
    arthexer INT,
    arthedu INT,
    lmtjoin3 INT,
    arthdis2 INT,
);

COPY arthritis (feetsore, arthexer, arthedu, lmtjoin3, arthdis2)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: lung_cancer_screening
CREATE TABLE IF NOT EXISTS lung_cancer_screening (
    id SERIAL PRIMARY KEY,
    joinpai2 INT,
    lcsfirst INT,
    lcslast INT,
    lcsnumcg INT,
    lcsctsc1 INT,
    lcsscncr INT,
);

COPY lung_cancer_screening (joinpai2, lcsfirst, lcslast, lcsnumcg, lcsctsc1, lcsscncr)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: breast_and_cervical_cancer_screening
CREATE TABLE IF NOT EXISTS breast_and_cervical_cancer_screening (
    id SERIAL PRIMARY KEY,
    lcsctwhn INT,
    hadmam INT,
    howlong INT,
    cervscrn INT,
    crvclcnc INT,
    crvclpap INT,
    crvclhpv INT,
);

COPY breast_and_cervical_cancer_screening (lcsctwhn, hadmam, howlong, cervscrn, crvclcnc, crvclpap, crvclhpv)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: prostate_cancer_screening
CREATE TABLE IF NOT EXISTS prostate_cancer_screening (
    id SERIAL PRIMARY KEY,
    hadhyst2 INT,
    psatest1 INT,
    psatime1 INT,
    pcpsars2 INT,
    psasugs1 INT,
);

COPY prostate_cancer_screening (hadhyst2, psatest1, psatime1, pcpsars2, psasugs1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: colorectal_cancer_screening
CREATE TABLE IF NOT EXISTS colorectal_cancer_screening (
    id SERIAL PRIMARY KEY,
    pcstalk2 INT,
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

COPY colorectal_cancer_screening (pcstalk2, hadsigm4, colnsigm, colntes1, sigmtes1, lastsig4, colncncr, vircolo1, vclntes2, smalstol, stoltest, stooldn2, bldstfit)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivorship:_type_of_cancer
CREATE TABLE IF NOT EXISTS cancer_survivorship:_type_of_cancer (
    id SERIAL PRIMARY KEY,
    sdnates1 INT,
    cncrdiff INT,
    cncrage INT,
);

COPY cancer_survivorship:_type_of_cancer (sdnates1, cncrdiff, cncrage)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivorship:_pain_management
CREATE TABLE IF NOT EXISTS cancer_survivorship:_pain_management (
    id SERIAL PRIMARY KEY,
    csrvclin INT,
    csrvpain INT,
);

COPY cancer_survivorship:_pain_management (csrvclin, csrvpain)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: indoor_tanning
CREATE TABLE IF NOT EXISTS indoor_tanning (
    id SERIAL PRIMARY KEY,
    csrvctl2 INT,
);

COPY indoor_tanning (csrvctl2)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: excess_sun_exposure
CREATE TABLE IF NOT EXISTS excess_sun_exposure (
    id SERIAL PRIMARY KEY,
    indortan INT,
    numburn3 INT,
    sunprtct INT,
    wkdayout INT,
);

COPY excess_sun_exposure (indortan, numburn3, sunprtct, wkdayout)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cognitive_decline
CREATE TABLE IF NOT EXISTS cognitive_decline (
    id SERIAL PRIMARY KEY,
    wkendout INT,
    cimemlo1 INT,
    cdworry INT,
    cddiscu1 INT,
    cdhous1 INT,
);

COPY cognitive_decline (wkendout, cimemlo1, cdworry, cddiscu1, cdhous1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: caregiver
CREATE TABLE IF NOT EXISTS caregiver (
    id SERIAL PRIMARY KEY,
    cdsocia1 INT,
    caregiv1 INT,
    crgvrel4 INT,
    crgvlng1 INT,
    crgvhrs1 INT,
    crgvprb3 INT,
    crgvalzd INT,
    crgvper1 INT,
    crgvhou1 INT,
);

COPY caregiver (cdsocia1, caregiv1, crgvrel4, crgvlng1, crgvhrs1, crgvprb3, crgvalzd, crgvper1, crgvhou1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_cessation
CREATE TABLE IF NOT EXISTS tobacco_cessation (
    id SERIAL PRIMARY KEY,
    crgvexpt INT,
    lastsmk2 INT,
);

COPY tobacco_cessation (crgvexpt, lastsmk2)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: firearm_safety
CREATE TABLE IF NOT EXISTS firearm_safety (
    id SERIAL PRIMARY KEY,
    heattbco INT,
    firearm5 INT,
    gunload INT,
);

COPY firearm_safety (heattbco, firearm5, gunload)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: heart_attack_and_stroke
CREATE TABLE IF NOT EXISTS heart_attack_and_stroke (
    id SERIAL PRIMARY KEY,
    loadulk2 INT,
    hasymp1 INT,
    hasymp2 INT,
    hasymp3 INT,
    hasymp4 INT,
    hasymp5 INT,
    hasymp6 INT,
    strsymp1 INT,
    strsymp2 INT,
    strsymp3 INT,
    strsymp4 INT,
    strsymp5 INT,
    strsymp6 INT,
);

COPY heart_attack_and_stroke (loadulk2, hasymp1, hasymp2, hasymp3, hasymp4, hasymp5, hasymp6, strsymp1, strsymp2, strsymp3, strsymp4, strsymp5, strsymp6)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: aspirin_for_cvd_prevention
CREATE TABLE IF NOT EXISTS aspirin_for_cvd_prevention (
    id SERIAL PRIMARY KEY,
    firstaid INT,
);

COPY aspirin_for_cvd_prevention (firstaid)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: sexual_orientation
CREATE TABLE IF NOT EXISTS sexual_orientation (
    id SERIAL PRIMARY KEY,
    aspirin INT,
    somale INT,
);

COPY sexual_orientation (aspirin, somale)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: marijuana_use
CREATE TABLE IF NOT EXISTS marijuana_use (
    id SERIAL PRIMARY KEY,
    sofemale INT,
    marijan1 INT,
    marjsmok INT,
    marjeat INT,
    marjvape INT,
    marjdab INT,
);

COPY marijuana_use (sofemale, marijan1, marjsmok, marjeat, marjvape, marjdab)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: adverse_childhood_experiences
CREATE TABLE IF NOT EXISTS adverse_childhood_experiences (
    id SERIAL PRIMARY KEY,
    marjothr INT,
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

COPY adverse_childhood_experiences (marjothr, acedeprs, acedrink, acedrugs, aceprisn, acedivrc, acepunch, acehurt1, aceswear, acetouch, acetthem, acehvsex, aceadsaf)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: place_of_flu_vaccination
CREATE TABLE IF NOT EXISTS place_of_flu_vaccination (
    id SERIAL PRIMARY KEY,
    aceadned INT,
);

COPY place_of_flu_vaccination (aceadned)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hpv_vaccination
CREATE TABLE IF NOT EXISTS hpv_vaccination (
    id SERIAL PRIMARY KEY,
    imfvpla4 INT,
    hpvadvc4 INT,
);

COPY hpv_vaccination (imfvpla4, hpvadvc4)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tetanus_diphtheria_(tdap)_(adults)
CREATE TABLE IF NOT EXISTS tetanus_diphtheria_(tdap)_(adults) (
    id SERIAL PRIMARY KEY,
    hpvadsht INT,
);

COPY tetanus_diphtheria_(tdap)_(adults) (hpvadsht)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: covid_vaccination
CREATE TABLE IF NOT EXISTS covid_vaccination (
    id SERIAL PRIMARY KEY,
    tetanus1 INT,
    covidva1 INT,
    covacge1 INT,
);

COPY covid_vaccination (tetanus1, covidva1, covacge1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: social_determinants
CREATE TABLE IF NOT EXISTS social_determinants (
    id SERIAL PRIMARY KEY,
    covidnu2 INT,
    lsatisfy INT,
    emtsuprt INT,
    sdlonely INT,
    sdhemply INT,
    foodstmp INT,
    sdhfood1 INT,
    sdhbills INT,
    sdhutils INT,
    sdhtrnsp INT,
);

COPY social_determinants (covidnu2, lsatisfy, emtsuprt, sdlonely, sdhemply, foodstmp, sdhfood1, sdhbills, sdhutils, sdhtrnsp)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: reactions_to_race
CREATE TABLE IF NOT EXISTS reactions_to_race (
    id SERIAL PRIMARY KEY,
    sdhstre1 INT,
    rrclass3 INT,
    rrcognt2 INT,
    rrtreat INT,
    rratwrk2 INT,
    rrhcare4 INT,
);

COPY reactions_to_race (sdhstre1, rrclass3, rrcognt2, rrtreat, rratwrk2, rrhcare4)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: random_child_selection
CREATE TABLE IF NOT EXISTS random_child_selection (
    id SERIAL PRIMARY KEY,
    rrphysm2 INT,
    rcsborg1 INT,
);

COPY random_child_selection (rrphysm2, rcsborg1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: childhood_asthma_prevalence
CREATE TABLE IF NOT EXISTS childhood_asthma_prevalence (
    id SERIAL PRIMARY KEY,
    rcsrltn2 INT,
    casthdx2 INT,
);

COPY childhood_asthma_prevalence (rcsrltn2, casthdx2)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_version
CREATE TABLE IF NOT EXISTS questionnaire_version (
    id SERIAL PRIMARY KEY,
    casthno2 INT,
);

COPY questionnaire_version (casthno2)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_language
CREATE TABLE IF NOT EXISTS questionnaire_language (
    id SERIAL PRIMARY KEY,
    qstver INT,
);

COPY questionnaire_language (qstver)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: urban_rural
CREATE TABLE IF NOT EXISTS urban_rural (
    id SERIAL PRIMARY KEY,
    qstlang INT,
    _metstat INT,
);

COPY urban_rural (qstlang, _metstat)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_demographic_variables
CREATE TABLE IF NOT EXISTS child_demographic_variables (
    id SERIAL PRIMARY KEY,
    _imprace INT,
    _chispnc INT,
);

COPY child_demographic_variables (_imprace, _chispnc)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_weighting_variables
CREATE TABLE IF NOT EXISTS child_weighting_variables (
    id SERIAL PRIMARY KEY,
    _crace1 INT,
    cageg INT,
);

COPY child_weighting_variables (_crace1, cageg)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
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
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_variables
CREATE TABLE IF NOT EXISTS calculated_variables (
    id SERIAL PRIMARY KEY,
    _llcpwt INT,
    _rfhlth INT,
    _phys14d INT,
    _ment14d INT,
    _hlthpl1 INT,
    _hcvu653 INT,
    _totinda INT,
    metvl12_ INT,
    metvl22_ INT,
    maxvo21_ INT,
    fc601_ INT,
    actin13_ INT,
    actin23_ INT,
    padur1_ INT,
    padur2_ INT,
    pafreq1_ INT,
    pafreq2_ INT,
    _minac12 INT,
    _minac22 INT,
    strfreq_ INT,
    pamiss3_ INT,
    pamin13_ INT,
    pamin23_ INT,
    pa3min_ INT,
    pavig13_ INT,
    pavig23_ INT,
    pa3vigm_ INT,
    _pacat3 INT,
    _paindx3 INT,
    _pa150r4 INT,
    _pa300r4 INT,
    _pa30023 INT,
    _pastrng INT,
    _parec3 INT,
    _pastae3 INT,
    _rfhype6 INT,
    _cholch3 INT,
    _rfchol3 INT,
    _michd INT,
    _ltasth1 INT,
    _casthm1 INT,
    _asthms1 INT,
);

COPY calculated_variables (_llcpwt, _rfhlth, _phys14d, _ment14d, _hlthpl1, _hcvu653, _totinda, metvl12_, metvl22_, maxvo21_, fc601_, actin13_, actin23_, padur1_, padur2_, pafreq1_, pafreq2_, _minac12, _minac22, strfreq_, pamiss3_, pamin13_, pamin23_, pa3min_, pavig13_, pavig23_, pa3vigm_, _pacat3, _paindx3, _pa150r4, _pa300r4, _pa30023, _pastrng, _parec3, _pastae3, _rfhype6, _cholch3, _rfchol3, _michd, _ltasth1, _casthm1, _asthms1)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_race_variables
CREATE TABLE IF NOT EXISTS calculated_race_variables (
    id SERIAL PRIMARY KEY,
    _drdxar2 INT,
    _mrace1 INT,
    _hispanc INT,
    _race INT,
    _raceg21 INT,
    _racegr3 INT,
);

COPY calculated_race_variables (_drdxar2, _mrace1, _hispanc, _race, _raceg21, _racegr3)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_variables
CREATE TABLE IF NOT EXISTS calculated_variables (
    id SERIAL PRIMARY KEY,
    _raceprv INT,
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
    _smoker3 INT,
    _rfsmok3 INT,
    _cureci2 INT,
    drnkany6 INT,
    drocdy4_ INT,
    _rfbing6 INT,
    _drnkwk2 INT,
    _rfdrhv8 INT,
    _flshot7 INT,
    _pneumo3 INT,
    _aidtst4 INT,
    _rfseat2 INT,
    _rfseat3 INT,
);

COPY calculated_variables (_raceprv, _sex, _ageg5yr, _age65yr, _age80, _age_g, htin4, htm4, wtkg3, _bmi5, _bmi5cat, _rfbmi5, _chldcnt, _educag, _incomg1, _smoker3, _rfsmok3, _cureci2, drnkany6, drocdy4_, _rfbing6, _drnkwk2, _rfdrhv8, _flshot7, _pneumo3, _aidtst4, _rfseat2, _rfseat3)
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

