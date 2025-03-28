-- Table: record_identification
CREATE TABLE IF NOT EXISTS record_identification (
    id SERIAL PRIMARY KEY,
    _state INTEGER,
    fmonth VARCHAR(255),
    idate VARCHAR(255),
    imonth VARCHAR(255),
    iday VARCHAR(255),
    iyear INTEGER,
    dispcode VARCHAR(255),
    seqno NUMERIC,
    _psu NUMERIC
);

COPY record_identification ("_state", "fmonth", "idate", "imonth", "iday", "iyear", "dispcode", "seqno", "_psu")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: land_line_introduction
CREATE TABLE IF NOT EXISTS land_line_introduction (
    id SERIAL PRIMARY KEY,
    ctelenm1 NUMERIC,
    pvtresd1 NUMERIC,
    colghous NUMERIC,
    statere1 NUMERIC,
    celphon1 NUMERIC,
    ladult1 NUMERIC,
    numadult NUMERIC,
    respslc1 NUMERIC,
    landsex2 NUMERIC
);

COPY land_line_introduction ("ctelenm1", "pvtresd1", "colghous", "statere1", "celphon1", "ladult1", "numadult", "respslc1", "landsex2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cell_phone_introduction
CREATE TABLE IF NOT EXISTS cell_phone_introduction (
    id SERIAL PRIMARY KEY,
    safetime NUMERIC,
    ctelnum1 NUMERIC,
    cellfon5 NUMERIC,
    cadult1 NUMERIC,
    cellsex2 NUMERIC,
    pvtresd3 NUMERIC,
    cclghous NUMERIC,
    cstate1 NUMERIC,
    landline NUMERIC,
    hhadult NUMERIC
);

COPY cell_phone_introduction ("safetime", "ctelnum1", "cellfon5", "cadult1", "cellsex2", "pvtresd3", "cclghous", "cstate1", "landline", "hhadult")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: respondent_sex
CREATE TABLE IF NOT EXISTS respondent_sex (
    id SERIAL PRIMARY KEY,
    sexvar NUMERIC
);

COPY respondent_sex ("sexvar")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_status
CREATE TABLE IF NOT EXISTS health_status (
    id SERIAL PRIMARY KEY,
    genhlth NUMERIC
);

COPY health_status ("genhlth")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: healthy_days
CREATE TABLE IF NOT EXISTS healthy_days (
    id SERIAL PRIMARY KEY,
    physhlth NUMERIC,
    menthlth NUMERIC,
    poorhlth NUMERIC
);

COPY healthy_days ("physhlth", "menthlth", "poorhlth")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_care_access
CREATE TABLE IF NOT EXISTS health_care_access (
    id SERIAL PRIMARY KEY,
    primins1 NUMERIC,
    persdoc3 NUMERIC,
    medcost1 NUMERIC,
    checkup1 NUMERIC
);

COPY health_care_access ("primins1", "persdoc3", "medcost1", "checkup1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: exercise
CREATE TABLE IF NOT EXISTS exercise (
    id SERIAL PRIMARY KEY,
    exerany2 NUMERIC,
    exract12 NUMERIC,
    exeroft1 NUMERIC,
    exerhmm1 NUMERIC,
    exract22 NUMERIC,
    exeroft2 NUMERIC,
    exerhmm2 NUMERIC,
    strength NUMERIC
);

COPY exercise ("exerany2", "exract12", "exeroft1", "exerhmm1", "exract22", "exeroft2", "exerhmm2", "strength")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hypertension
CREATE TABLE IF NOT EXISTS hypertension (
    id SERIAL PRIMARY KEY,
    bphigh6 NUMERIC,
    bpmeds1 NUMERIC
);

COPY hypertension ("bphigh6", "bpmeds1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cholesterol
CREATE TABLE IF NOT EXISTS cholesterol (
    id SERIAL PRIMARY KEY,
    cholchk3 NUMERIC,
    toldhi3 NUMERIC,
    cholmed3 NUMERIC
);

COPY cholesterol ("cholchk3", "toldhi3", "cholmed3")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: chronic_health_conditions
CREATE TABLE IF NOT EXISTS chronic_health_conditions (
    id SERIAL PRIMARY KEY,
    cvdinfr4 NUMERIC,
    cvdcrhd4 NUMERIC,
    cvdstrk3 NUMERIC,
    asthma3 NUMERIC,
    asthnow NUMERIC,
    chcscnc1 NUMERIC,
    chcocnc1 NUMERIC,
    chccopd3 NUMERIC,
    addepev3 NUMERIC,
    chckdny2 NUMERIC,
    havarth4 NUMERIC,
    diabete4 NUMERIC,
    diabage4 NUMERIC
);

COPY chronic_health_conditions ("cvdinfr4", "cvdcrhd4", "cvdstrk3", "asthma3", "asthnow", "chcscnc1", "chcocnc1", "chccopd3", "addepev3", "chckdny2", "havarth4", "diabete4", "diabage4")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: demographics
CREATE TABLE IF NOT EXISTS demographics (
    id SERIAL PRIMARY KEY,
    marital NUMERIC,
    educa NUMERIC,
    renthom1 NUMERIC,
    numhhol4 NUMERIC,
    numphon4 NUMERIC,
    cpdemo1c NUMERIC,
    veteran3 NUMERIC,
    employ1 NUMERIC,
    children NUMERIC,
    income3 NUMERIC,
    pregnant NUMERIC,
    weight2 NUMERIC,
    height3 NUMERIC
);

COPY demographics ("marital", "educa", "renthom1", "numhhol4", "numphon4", "cpdemo1c", "veteran3", "employ1", "children", "income3", "pregnant", "weight2", "height3")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: disability
CREATE TABLE IF NOT EXISTS disability (
    id SERIAL PRIMARY KEY,
    deaf NUMERIC,
    blind NUMERIC,
    decide NUMERIC,
    diffwalk NUMERIC,
    diffdres NUMERIC,
    diffalon NUMERIC
);

COPY disability ("deaf", "blind", "decide", "diffwalk", "diffdres", "diffalon")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: falls
CREATE TABLE IF NOT EXISTS falls (
    id SERIAL PRIMARY KEY,
    fall12mn NUMERIC,
    fallinj5 NUMERIC
);

COPY falls ("fall12mn", "fallinj5")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_use
CREATE TABLE IF NOT EXISTS tobacco_use (
    id SERIAL PRIMARY KEY,
    smoke100 NUMERIC,
    smokday2 NUMERIC,
    usenow3 NUMERIC,
    ecignow2 NUMERIC
);

COPY tobacco_use ("smoke100", "smokday2", "usenow3", "ecignow2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: alcohol_consumption
CREATE TABLE IF NOT EXISTS alcohol_consumption (
    id SERIAL PRIMARY KEY,
    alcday4 NUMERIC,
    avedrnk3 NUMERIC,
    drnk3ge5 NUMERIC,
    maxdrnks NUMERIC
);

COPY alcohol_consumption ("alcday4", "avedrnk3", "drnk3ge5", "maxdrnks")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: immunization
CREATE TABLE IF NOT EXISTS immunization (
    id SERIAL PRIMARY KEY,
    flushot7 NUMERIC,
    flshtmy3 NUMERIC,
    pneuvac4 NUMERIC,
    shingle2 NUMERIC
);

COPY immunization ("flushot7", "flshtmy3", "pneuvac4", "shingle2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hiv_aids
CREATE TABLE IF NOT EXISTS hiv_aids (
    id SERIAL PRIMARY KEY,
    hivtst7 NUMERIC,
    hivtstd3 NUMERIC
);

COPY hiv_aids ("hivtst7", "hivtstd3")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: seatbelt_drink_drive
CREATE TABLE IF NOT EXISTS seatbelt_drink_drive (
    id SERIAL PRIMARY KEY,
    seatbelt NUMERIC,
    drnkdri2 NUMERIC
);

COPY seatbelt_drink_drive ("seatbelt", "drnkdri2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: long_term_covid
CREATE TABLE IF NOT EXISTS long_term_covid (
    id SERIAL PRIMARY KEY,
    covidpo1 NUMERIC,
    covidsm1 NUMERIC,
    covidact NUMERIC
);

COPY long_term_covid ("covidpo1", "covidsm1", "covidact")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: pre_diabetes
CREATE TABLE IF NOT EXISTS pre_diabetes (
    id SERIAL PRIMARY KEY,
    pdiabts1 NUMERIC,
    prediab2 NUMERIC
);

COPY pre_diabetes ("pdiabts1", "prediab2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: diabetes
CREATE TABLE IF NOT EXISTS diabetes (
    id SERIAL PRIMARY KEY,
    diabtype NUMERIC,
    insulin1 NUMERIC,
    chkhemo3 NUMERIC,
    eyeexam1 NUMERIC,
    diabeye1 NUMERIC,
    diabedu1 NUMERIC,
    feetsore NUMERIC
);

COPY diabetes ("diabtype", "insulin1", "chkhemo3", "eyeexam1", "diabeye1", "diabedu1", "feetsore")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: arthritis
CREATE TABLE IF NOT EXISTS arthritis (
    id SERIAL PRIMARY KEY,
    arthexer NUMERIC,
    arthedu NUMERIC,
    lmtjoin3 NUMERIC,
    arthdis2 NUMERIC,
    joinpai2 NUMERIC
);

COPY arthritis ("arthexer", "arthedu", "lmtjoin3", "arthdis2", "joinpai2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: lung_cancer_screen
CREATE TABLE IF NOT EXISTS lung_cancer_screen (
    id SERIAL PRIMARY KEY,
    lcsfirst NUMERIC,
    lcslast NUMERIC,
    lcsnumcg NUMERIC,
    lcsctsc1 NUMERIC,
    lcsscncr NUMERIC,
    lcsctwhn NUMERIC
);

COPY lung_cancer_screen ("lcsfirst", "lcslast", "lcsnumcg", "lcsctsc1", "lcsscncr", "lcsctwhn")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: breast_cervical_cancer_screen
CREATE TABLE IF NOT EXISTS breast_cervical_cancer_screen (
    id SERIAL PRIMARY KEY,
    hadmam NUMERIC,
    howlong NUMERIC,
    cervscrn NUMERIC,
    crvclcnc NUMERIC,
    crvclpap NUMERIC,
    crvclhpv NUMERIC,
    hadhyst2 NUMERIC
);

COPY breast_cervical_cancer_screen ("hadmam", "howlong", "cervscrn", "crvclcnc", "crvclpap", "crvclhpv", "hadhyst2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: prostate_cancer_screen
CREATE TABLE IF NOT EXISTS prostate_cancer_screen (
    id SERIAL PRIMARY KEY,
    psatest1 NUMERIC,
    psatime1 NUMERIC,
    pcpsars2 NUMERIC,
    psasugs1 NUMERIC,
    pcstalk2 NUMERIC
);

COPY prostate_cancer_screen ("psatest1", "psatime1", "pcpsars2", "psasugs1", "pcstalk2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: colorectal_cancer_screen
CREATE TABLE IF NOT EXISTS colorectal_cancer_screen (
    id SERIAL PRIMARY KEY,
    hadsigm4 NUMERIC,
    colnsigm NUMERIC,
    colntes1 NUMERIC,
    sigmtes1 NUMERIC,
    lastsig4 NUMERIC,
    colncncr NUMERIC,
    vircolo1 NUMERIC,
    vclntes2 NUMERIC,
    smalstol NUMERIC,
    stoltest NUMERIC,
    stooldn2 NUMERIC,
    bldstfit NUMERIC,
    sdnates1 NUMERIC
);

COPY colorectal_cancer_screen ("hadsigm4", "colnsigm", "colntes1", "sigmtes1", "lastsig4", "colncncr", "vircolo1", "vclntes2", "smalstol", "stoltest", "stooldn2", "bldstfit", "sdnates1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivor_type
CREATE TABLE IF NOT EXISTS cancer_survivor_type (
    id SERIAL PRIMARY KEY,
    cncrdiff NUMERIC,
    cncrage NUMERIC,
    cncrtyp2 NUMERIC
);

COPY cancer_survivor_type ("cncrdiff", "cncrage", "cncrtyp2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivor_treat
CREATE TABLE IF NOT EXISTS cancer_survivor_treat (
    id SERIAL PRIMARY KEY,
    csrvtrt3 NUMERIC,
    csrvdoc1 NUMERIC,
    csrvsum NUMERIC,
    csrvrtrn NUMERIC,
    csrvinst NUMERIC,
    csrvinsr NUMERIC,
    csrvdein NUMERIC,
    csrvclin NUMERIC
);

COPY cancer_survivor_treat ("csrvtrt3", "csrvdoc1", "csrvsum", "csrvrtrn", "csrvinst", "csrvinsr", "csrvdein", "csrvclin")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivor_pain
CREATE TABLE IF NOT EXISTS cancer_survivor_pain (
    id SERIAL PRIMARY KEY,
    csrvpain NUMERIC,
    csrvctl2 NUMERIC
);

COPY cancer_survivor_pain ("csrvpain", "csrvctl2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: indoor_tan
CREATE TABLE IF NOT EXISTS indoor_tan (
    id SERIAL PRIMARY KEY,
     indortan NUMERIC  
);

COPY indoor_tan ("indortan")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: excess_sun_exposure
CREATE TABLE IF NOT EXISTS excess_sun_exposure (
    id SERIAL PRIMARY KEY,
    numburn3 NUMERIC,
    sunprtct NUMERIC,
    wkdayout NUMERIC,
    wkendout NUMERIC
);

COPY excess_sun_exposure ("numburn3", "sunprtct", "wkdayout", "wkendout")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cognitive_decline
CREATE TABLE IF NOT EXISTS cognitive_decline (
    id SERIAL PRIMARY KEY,
    cimemlo1 NUMERIC,
    cdworry NUMERIC,
    cddiscu1 NUMERIC,
    cdhous1 NUMERIC,
    cdsocia1 NUMERIC
);

COPY cognitive_decline ("cimemlo1", "cdworry", "cddiscu1", "cdhous1", "cdsocia1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: caregiver
CREATE TABLE IF NOT EXISTS caregiver (
    id SERIAL PRIMARY KEY,
    caregiv1 NUMERIC,
    crgvrel4 NUMERIC,
    crgvlng1 NUMERIC,
    crgvhrs1 NUMERIC,
    crgvprb3 NUMERIC,
    crgvalzd NUMERIC,
    crgvper1 NUMERIC,
    crgvhou1 NUMERIC,
    crgvexpt NUMERIC
);

COPY caregiver ("caregiv1", "crgvrel4", "crgvlng1", "crgvhrs1", "crgvprb3", "crgvalzd", "crgvper1", "crgvhou1", "crgvexpt")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_cessation
CREATE TABLE IF NOT EXISTS tobacco_cessation (
    id SERIAL PRIMARY KEY,
    lastsmk2 NUMERIC,
    stopsmk2 NUMERIC
);

COPY tobacco_cessation ("lastsmk2", "stopsmk2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: other_tobacco_use
CREATE TABLE IF NOT EXISTS other_tobacco_use (
    id SERIAL PRIMARY KEY,
    mentcigs NUMERIC,
    mentecig NUMERIC,
    heattbco NUMERIC
);

COPY other_tobacco_use ("mentcigs", "mentecig", "heattbco")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: firearm_safety
CREATE TABLE IF NOT EXISTS firearm_safety (
    id SERIAL PRIMARY KEY,
    firearm5 NUMERIC,
    gunload NUMERIC,
    loadulk2 NUMERIC
);

COPY firearm_safety ("firearm5", "gunload", "loadulk2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: heart_attack_stroke
CREATE TABLE IF NOT EXISTS heart_attack_stroke (
    id SERIAL PRIMARY KEY,
    hasymp1 NUMERIC,
    hasymp2 NUMERIC,
    hasymp3 NUMERIC,
    hasymp4 NUMERIC,
    hasymp5 NUMERIC,
    hasymp6 NUMERIC,
    strsymp1 NUMERIC,
    strsymp2 NUMERIC,
    strsymp3 NUMERIC,
    strsymp4 NUMERIC,
    strsymp5 NUMERIC,
    strsymp6 NUMERIC,
    firstaid NUMERIC
);

COPY heart_attack_stroke ("hasymp1", "hasymp2", "hasymp3", "hasymp4", "hasymp5", "hasymp6", "strsymp1", "strsymp2", "strsymp3", "strsymp4", "strsymp5", "strsymp6", "firstaid")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: aspirin_cvd
CREATE TABLE IF NOT EXISTS aspirin_cvd (
    id SERIAL PRIMARY KEY,
    aspirin NUMERIC
);

COPY aspirin_cvd ("aspirin")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: sexual_orientation
CREATE TABLE IF NOT EXISTS sexual_orientation (
    id SERIAL PRIMARY KEY,
    somale NUMERIC,
    sofemale NUMERIC
);

COPY sexual_orientation ("somale", "sofemale")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: marijuana_use
CREATE TABLE IF NOT EXISTS marijuana_use (
    id SERIAL PRIMARY KEY,
    marijan1 NUMERIC,
    marjsmok NUMERIC,
    marjeat NUMERIC,
    marjvape NUMERIC,
    marjdab NUMERIC,
    marjothr NUMERIC
);

COPY marijuana_use ("marijan1", "marjsmok", "marjeat", "marjvape", "marjdab", "marjothr")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: ace
CREATE TABLE IF NOT EXISTS ace (
    id SERIAL PRIMARY KEY,
    acedeprs NUMERIC,
    acedrink NUMERIC,
    acedrugs NUMERIC,
    aceprisn NUMERIC,
    acedivrc NUMERIC,
    acepunch NUMERIC,
    acehurt1 NUMERIC,
    aceswear NUMERIC,
    acetouch NUMERIC,
    acetthem NUMERIC,
    acehvsex NUMERIC,
    aceadsaf NUMERIC,
    aceadned NUMERIC
);

COPY ace ("acedeprs", "acedrink", "acedrugs", "aceprisn", "acedivrc", "acepunch", "acehurt1", "aceswear", "acetouch", "acetthem", "acehvsex", "aceadsaf", "aceadned")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: flu_vaccination
CREATE TABLE IF NOT EXISTS flu_vaccination (
    id SERIAL PRIMARY KEY,
    imfvpla4 NUMERIC
);

COPY flu_vaccination ("imfvpla4")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hpv_vaccination
CREATE TABLE IF NOT EXISTS hpv_vaccination (
    id SERIAL PRIMARY KEY,
    hpvadvc4 NUMERIC,
    hpvadsht NUMERIC
);

COPY hpv_vaccination ("hpvadvc4", "hpvadsht")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tdap_adults
CREATE TABLE IF NOT EXISTS tdap_adults (
    id SERIAL PRIMARY KEY,
    tetanus1 NUMERIC
);

COPY tdap_adults ("tetanus1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: covid_vaccination
CREATE TABLE IF NOT EXISTS covid_vaccination (
    id SERIAL PRIMARY KEY,
    covidva1 NUMERIC,
    covacge1 NUMERIC,
    covidnu2 NUMERIC
);

COPY covid_vaccination ("covidva1", "covacge1", "covidnu2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: social_determinants
CREATE TABLE IF NOT EXISTS social_determinants (
    id SERIAL PRIMARY KEY,
    lsatisfy NUMERIC,
    emtsuprt NUMERIC,
    sdlonely NUMERIC,
    sdhemply NUMERIC,
    foodstmp NUMERIC,
    sdhfood1 NUMERIC,
    sdhbills NUMERIC,
    sdhutils NUMERIC,
    sdhtrnsp NUMERIC,
    sdhstre1 NUMERIC
);

COPY social_determinants ("lsatisfy", "emtsuprt", "sdlonely", "sdhemply", "foodstmp", "sdhfood1", "sdhbills", "sdhutils", "sdhtrnsp", "sdhstre1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: race_reactions
CREATE TABLE IF NOT EXISTS race_reactions (
    id SERIAL PRIMARY KEY,
    rrclass3 NUMERIC,
    rrcognt2 NUMERIC,
    rrtreat NUMERIC,
    rratwrk2 NUMERIC,
    rrhcare4 NUMERIC,
    rrphysm2 NUMERIC
);

COPY race_reactions ("rrclass3", "rrcognt2", "rrtreat", "rratwrk2", "rrhcare4", "rrphysm2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: random_child_select
CREATE TABLE IF NOT EXISTS random_child_select (
    id SERIAL PRIMARY KEY,
    rcsrltn2 NUMERIC
);

COPY random_child_select ("rcsrltn2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: childhood_asthma
CREATE TABLE IF NOT EXISTS childhood_asthma (
    id SERIAL PRIMARY KEY,
    casthdx2 NUMERIC,
    casthno2 NUMERIC
);

COPY childhood_asthma ("casthdx2", "casthno2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_ver
CREATE TABLE IF NOT EXISTS questionnaire_ver (
    id SERIAL PRIMARY KEY,
    qstver NUMERIC
);

COPY questionnaire_ver ("qstver")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_lang
CREATE TABLE IF NOT EXISTS questionnaire_lang (
    id SERIAL PRIMARY KEY,
    qstlang NUMERIC
);

COPY questionnaire_lang ("qstlang")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: urban_rural
CREATE TABLE IF NOT EXISTS urban_rural (
    id SERIAL PRIMARY KEY,
    _metstat NUMERIC,
    _urbstat NUMERIC
);

COPY urban_rural ("_metstat", "_urbstat")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: weighting_variables_1
CREATE TABLE IF NOT EXISTS weighting_variables_1 (
    id SERIAL PRIMARY KEY,
    mscode NUMERIC,
    _ststr NUMERIC,
    _strwt NUMERIC,
    _rawrake NUMERIC,
    _wt2rake NUMERIC,
    _imprace NUMERIC
);

COPY weighting_variables_1 ("mscode", "_ststr", "_strwt", "_rawrake", "_wt2rake", "_imprace")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_demographics
CREATE TABLE IF NOT EXISTS child_demographics (
    id SERIAL PRIMARY KEY,
    _chispnc NUMERIC,
    _crace1 NUMERIC
);

COPY child_demographics ("_chispnc", "_crace1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_weighting_variables
CREATE TABLE IF NOT EXISTS child_weighting_variables (
    id SERIAL PRIMARY KEY,
    cageg NUMERIC,
    _cllcpwt NUMERIC
);

COPY child_weighting_variables ("cageg", "_cllcpwt")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: weighting_variables_2
CREATE TABLE IF NOT EXISTS weighting_variables_2 (
    id SERIAL PRIMARY KEY,
    _dualuse NUMERIC,
    _dualcor NUMERIC,
    _llcpwt2 NUMERIC,
    _llcpwt NUMERIC
);

COPY weighting_variables_2 ("_dualuse", "_dualcor", "_llcpwt2", "_llcpwt")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_variables_1
CREATE TABLE IF NOT EXISTS calculated_variables_1 (
    id SERIAL PRIMARY KEY,
    _rfhlth NUMERIC,
    _phys14d NUMERIC,
    _ment14d NUMERIC,
    _hlthpl1 NUMERIC,
    _hcvu653 NUMERIC,
    _totinda NUMERIC,
    metvl12_ NUMERIC,
    metvl22_ NUMERIC,
    maxvo21_ NUMERIC,
    fc601_ NUMERIC,
    actin13_ NUMERIC,
    actin23_ NUMERIC,
    padur1_ NUMERIC,
    padur2_ NUMERIC,
    pafreq1_ NUMERIC,
    pafreq2_ NUMERIC,
    _minac12 NUMERIC,
    _minac22 NUMERIC,
    strfreq_ NUMERIC,
    pamiss3_ NUMERIC,
    pamin13_ NUMERIC,
    pamin23_ NUMERIC,
    pa3min_ NUMERIC,
    pavig13_ NUMERIC,
    pavig23_ NUMERIC,
    pa3vigm_ NUMERIC,
    _pacat3 NUMERIC,
    _paindx3 NUMERIC,
    _pa150r4 NUMERIC,
    _pa300r4 NUMERIC,
    _pa30023 NUMERIC,
    _pastrng NUMERIC,
    _parec3 NUMERIC,
    _pastae3 NUMERIC,
    _rfhype6 NUMERIC,
    _cholch3 NUMERIC,
    _rfchol3 NUMERIC,
    _michd NUMERIC,
    _ltasth1 NUMERIC,
    _casthm1 NUMERIC,
    _asthms1 NUMERIC,
    _drdxar2 NUMERIC
);

COPY calculated_variables_1 ("_rfhlth", "_phys14d", "_ment14d", "_hlthpl1", "_hcvu653", "_totinda", "metvl12_", "metvl22_", "maxvo21_", "fc601_", "actin13_", "actin23_", "padur1_", "padur2_", "pafreq1_", "pafreq2_", "_minac12", "_minac22", "strfreq_", "pamiss3_", "pamin13_", "pamin23_", "pa3min_", "pavig13_", "pavig23_", "pa3vigm_", "_pacat3", "_paindx3", "_pa150r4", "_pa300r4", "_pa30023", "_pastrng", "_parec3", "_pastae3", "_rfhype6", "_cholch3", "_rfchol3", "_michd", "_ltasth1", "_casthm1", "_asthms1", "_drdxar2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_race_variables
CREATE TABLE IF NOT EXISTS calculated_race_variables (
    id SERIAL PRIMARY KEY,
    _mrace1 NUMERIC,
    _hispanc NUMERIC,
    _race NUMERIC,
    _raceg21 NUMERIC,
    _racegr3 NUMERIC,
    _raceprv NUMERIC
);

COPY calculated_race_variables ("_mrace1", "_hispanc", "_race", "_raceg21", "_racegr3", "_raceprv")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: calculated_variables_2
CREATE TABLE IF NOT EXISTS calculated_variables_2 (
    id SERIAL PRIMARY KEY,
    _sex NUMERIC,
    _ageg5yr NUMERIC,
    _age65yr NUMERIC,
    _age80 NUMERIC,
    _age_g NUMERIC,
    htin4 NUMERIC,
    htm4 NUMERIC,
    wtkg3 NUMERIC,
    _bmi5 NUMERIC,
    _bmi5cat NUMERIC,
    _rfbmi5 NUMERIC,
    _chldcnt NUMERIC,
    _educag NUMERIC,
    _incomg1 NUMERIC,
    _smoker3 NUMERIC,
    _rfsmok3 NUMERIC,
    _cureci2 NUMERIC,
    drnkany6 NUMERIC,
    drocdy4_ NUMERIC,
    _rfbing6 NUMERIC,
    _drnkwk2 NUMERIC,
    _rfdrhv8 NUMERIC,
    _flshot7 NUMERIC,
    _pneumo3 NUMERIC,
    _aidtst4 NUMERIC,
    _rfseat2 NUMERIC,
    _rfseat3 NUMERIC,
    _drnkdrv NUMERIC
);

COPY calculated_variables_2 ("_sex", "_ageg5yr", "_age65yr", "_age80", "_age_g", "htin4", "htm4", "wtkg3", "_bmi5", "_bmi5cat", "_rfbmi5", "_chldcnt", "_educag", "_incomg1", "_smoker3", "_rfsmok3", "_cureci2", "drnkany6", "drocdy4_", "_rfbing6", "_drnkwk2", "_rfdrhv8", "_flshot7", "_pneumo3", "_aidtst4", "_rfseat2", "_rfseat3", "_drnkdrv")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

