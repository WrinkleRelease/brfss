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
    _psu INT
);

COPY record_identification ("_state", "fmonth", "idate", "imonth", "iday", "iyear", "dispcode", "seqno", "_psu")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: land_line_introduction
CREATE TABLE IF NOT EXISTS land_line_introduction (
    id SERIAL PRIMARY KEY,
    ctelenm1 INT,
    pvtresd1 INT,
    colghous INT,
    statere1 INT,
    celphon1 INT,
    ladult1 INT,
    numadult INT,
    respslc1 INT,
    landsex2 INT
);

COPY land_line_introduction ("ctelenm1", "pvtresd1", "colghous", "statere1", "celphon1", "ladult1", "numadult", "respslc1", "landsex2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cell_phone_introduction
CREATE TABLE IF NOT EXISTS cell_phone_introduction (
    id SERIAL PRIMARY KEY,
    safetime INT,
    ctelnum1 INT,
    cellfon5 INT,
    cadult1 INT,
    cellsex2 INT,
    pvtresd3 INT,
    cclghous INT,
    cstate1 INT,
    landline INT,
    hhadult INT
);

COPY cell_phone_introduction ("safetime", "ctelnum1", "cellfon5", "cadult1", "cellsex2", "pvtresd3", "cclghous", "cstate1", "landline", "hhadult")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: respondent_sex
CREATE TABLE IF NOT EXISTS respondent_sex (
    id SERIAL PRIMARY KEY,
    sexvar INT
);

COPY respondent_sex ("sexvar")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_status
CREATE TABLE IF NOT EXISTS health_status (
    id SERIAL PRIMARY KEY,
    genhealth INT
);

COPY health_status ("genhealth")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: healthy_days
CREATE TABLE IF NOT EXISTS healthy_days (
    id SERIAL PRIMARY KEY,
    physhlth INT,
    menthlth INT,
    poorhlth INT
);

COPY healthy_days ("physhlth", "menthlth", "poorhlth")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: health_care_access
CREATE TABLE IF NOT EXISTS health_care_access (
    id SERIAL PRIMARY KEY,
    primins1 INT,
    persdoc3 INT,
    medcost1 INT,
    checkup1 INT
);

COPY health_care_access ("primins1", "persdoc3", "medcost1", "checkup1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: exercise
CREATE TABLE IF NOT EXISTS exercise (
    id SERIAL PRIMARY KEY,
    exerany2 INT,
    exract12 INT,
    exeroft1 INT,
    exerhmm1 INT,
    exract22 INT,
    exeroft2 INT,
    exerhmm2 INT,
    strength INT
);

COPY exercise ("exerany2", "exract12", "exeroft1", "exerhmm1", "exract22", "exeroft2", "exerhmm2", "strength")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hypertension
CREATE TABLE IF NOT EXISTS hypertension (
    id SERIAL PRIMARY KEY,
    bphigh6 INT,
    bpmeds1 INT
);

COPY hypertension ("bphigh6", "bpmeds1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cholesterol
CREATE TABLE IF NOT EXISTS cholesterol (
    id SERIAL PRIMARY KEY,
    cholchk3 INT,
    toldhi3 INT,
    cholmed3 INT
);

COPY cholesterol ("cholchk3", "toldhi3", "colmed3")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: chronic_health_conditions
CREATE TABLE IF NOT EXISTS chronic_health_conditions (
    id SERIAL PRIMARY KEY,
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
    diabage4 INT
);

COPY chronic_health_conditions ("cvdinfr4", "cvdcrhd4", "cvdstrk3", "asthma3", "asthnow", "chcscnc1", "chcocnc1", "chccopd3", "addepev3", "chckdny2", "havarth4", "diabete4", "diabage4")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: demographics
CREATE TABLE IF NOT EXISTS demographics (
    id SERIAL PRIMARY KEY,
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
    height3 INT
);

COPY demographics ("marital", "educa", "renthom1", "numhhol4", "numphon4", "cpdemo1c", "veteran3", "employ1", "children", "income3", "pregnant", "weight2", "height3")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: disability
CREATE TABLE IF NOT EXISTS disability (
    id SERIAL PRIMARY KEY,
    deaf INT,
    blind INT,
    decide INT,
    diffwalk INT,
    diffdres INT,
    diffalon INT
);

COPY disability ("deaf", "blind", "decide", "diffwalk", "diffdres", "diffalon")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: falls
CREATE TABLE IF NOT EXISTS falls (
    id SERIAL PRIMARY KEY,
    fall12mn INT,
    fallinj5 INT
);

COPY falls ("fall12mn", "fallinj5")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_use
CREATE TABLE IF NOT EXISTS tobacco_use (
    id SERIAL PRIMARY KEY,
    smoke100 INT,
    smokday2 INT,
    usenow3 INT,
    ecignow2 INT
);

COPY tobacco_use ("smoke100", "smokday2", "usenow3", "ecignow2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: alcohol_consumption
CREATE TABLE IF NOT EXISTS alcohol_consumption (
    id SERIAL PRIMARY KEY,
    alcday4 INT,
    avedrnk3 INT,
    drnk3ge5 INT,
    maxdrnks INT
);

COPY alcohol_consumption ("alcday4", "avedrnk3", "drnk3ge5", "maxdrnks")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: immunization
CREATE TABLE IF NOT EXISTS immunization (
    id SERIAL PRIMARY KEY,
    flushot7 INT,
    flshtmy3 INT,
    pneuvac4 INT,
    shingle2 INT
);

COPY immunization ("flushot7", "flshtmy3", "pneuvac4", "shingle2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hiv_aids
CREATE TABLE IF NOT EXISTS hiv_aids (
    id SERIAL PRIMARY KEY,
    hivtst7 INT,
    hivtstd3 INT
);

COPY hiv_aids ("hivtst7", "hivtstd3")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: seatbelt_drink_drive
CREATE TABLE IF NOT EXISTS seatbelt_drink_drive (
    id SERIAL PRIMARY KEY,
    seatbelt INT,
    drnkdri2 INT
);

COPY seatbelt_drink_drive ("seatbelt", "drnkdri2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: long_term_covid
CREATE TABLE IF NOT EXISTS long_term_covid (
    id SERIAL PRIMARY KEY,
    covidpo1 INT,
    covidsm1 INT,
    covidact INT
);

COPY long_term_covid ("covidpo1", "covidsm1", "covidact")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: pre_diabetes
CREATE TABLE IF NOT EXISTS pre_diabetes (
    id SERIAL PRIMARY KEY,
    pdiabts1 INT,
    prediab2 INT
);

COPY pre_diabetes ("pdiabts1", "prediab2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: diabetes
CREATE TABLE IF NOT EXISTS diabetes (
    id SERIAL PRIMARY KEY,
    diabtype INT,
    insulin1 INT,
    chkhemo3 INT,
    eyeexam1 INT,
    diabeye1 INT,
    diabedu1 INT,
    feetsore INT
);

COPY diabetes ("diabtype", "insulin1", "chkhemo3", "eyeexam1", "diabeye1", "diabedu1", "feetsore")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: arthritis
CREATE TABLE IF NOT EXISTS arthritis (
    id SERIAL PRIMARY KEY,
    arthexer INT,
    arthedu INT,
    lmtjoin3 INT,
    arthdis2 INT,
    joinpai2 INT
);

COPY arthritis ("arthexer", "arthedu", "lmtjoin3", "arthdis2", "joinpai2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: lung_cancer_screen
CREATE TABLE IF NOT EXISTS lung_cancer_screen (
    id SERIAL PRIMARY KEY,
    lcsfirst INT,
    lcslast INT,
    lcsnumcg INT,
    lcsctsc1 INT,
    lcsscncr INT,
    lcsctwhn INT
);

COPY lung_cancer_screen ("lcsfirst", "lcslast", "lcsnumcg", "lcsctsc1", "lcsscncr", "lcsctwhn")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: breast_cervical_cancer_screen
CREATE TABLE IF NOT EXISTS breast_cervical_cancer_screen (
    id SERIAL PRIMARY KEY,
    hadmam INT,
    howlong INT,
    cervscrn INT,
    crvclcnc INT,
    crvclpap INT,
    crvclhpv INT,
    hadhyst2 INT
);

COPY breast_cervical_cancer_screen ("hadmam", "howlong", "cervscrn", "crvclcnc", "crvclpap", "crvclhpv", "hadhyst2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: prostate_cancer_screen
CREATE TABLE IF NOT EXISTS prostate_cancer_screen (
    id SERIAL PRIMARY KEY,
    psatest1 INT,
    psatime1 INT,
    pcpsars2 INT,
    psasugs1 INT,
    pcstalk2 INT
);

COPY prostate_cancer_screen ("psatest1", "psatime1", "pcpsars2", "psasugs1", "pcstalk2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: colorectal_cancer_screen
CREATE TABLE IF NOT EXISTS colorectal_cancer_screen (
    id SERIAL PRIMARY KEY,
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
    sdnates1 INT
);

COPY colorectal_cancer_screen ("hadsigm4", "colnsigm", "colntes1", "sigmtes1", "lastsig4", "colncncr", "vircolo1", "vclntes2", "smalstol", "stoltest", "stooldn2", "bldstfit", "sdnates1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivor_type
CREATE TABLE IF NOT EXISTS cancer_survivor_type (
    id SERIAL PRIMARY KEY,
    cncrdiff INT,
    cncrage INT,
    cncrtyp2 INT
);

COPY cancer_survivor_type ("cncrdiff", "cncrage", "cncrtyp2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivor_treat
CREATE TABLE IF NOT EXISTS cancer_survivor_treat (
    id SERIAL PRIMARY KEY,
    csrvtrt3 INT,
    csrvdoc1 INT,
    csrvsum INT,
    csrvrtrn INT,
    csrvinst INT,
    csrvinsr INT,
    csrvdein INT,
    csrvclin INT
);

COPY cancer_survivor_treat ("csrvtrt3", "csrvdoc1", "csrvsum", "csrvrtrn", "csrvinst", "csrvinsr", "csrvdein", "csrvclin")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cancer_survivor_pain
CREATE TABLE IF NOT EXISTS cancer_survivor_pain (
    id SERIAL PRIMARY KEY,
    csrvpain INT,
    csrvctl2 INT
);

COPY cancer_survivor_pain ("csrvpain", "csrvctl2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: indoor_tanning
CREATE TABLE IF NOT EXISTS indoor_tanning (
    id SERIAL PRIMARY KEY,
     indortan INT,  
);

COPY indoor_tanning ("indortan")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: excess_sun_exposure
CREATE TABLE IF NOT EXISTS excess_sun_exposure (
    id SERIAL PRIMARY KEY,
    numburn3 INT,
    sunprtct INT,
    wkendout INT
);

COPY excess_sun_exposure ("numburn3", "sunprtct", "wkdayout", "wkendout")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: cognitive_decline
CREATE TABLE IF NOT EXISTS cognitive_decline (
    id SERIAL PRIMARY KEY,
    cimemlo1 INT,
    cdworry INT,
    cddiscu1 INT,
    cdhous1 INT,
    cdsocia1 INT
);

COPY cognitive_decline ("cimemlo1", "cdworry", "cddiscu1", "cdhous1", "cdsocia1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: caregiver
CREATE TABLE IF NOT EXISTS caregiver (
    id SERIAL PRIMARY KEY,
    caregiv1 INT,
    crgvrel4 INT,
    crgvlng1 INT,
    crgvhrs1 INT,
    crgvprb3 INT,
    crgvalzd INT,
    crgvper1 INT,
    crgvhou1 INT,
    crgvexpt INT
);

COPY caregiver ("caregiv1", "crgvrel4", "crgvlng1", "crgvhrs1", "crgvprb3", "crgvalzd", "crgvper1", "crgvhou1", "crgvexpt")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tobacco_cessation
CREATE TABLE IF NOT EXISTS tobacco_cessation (
    id SERIAL PRIMARY KEY,
    lastsmk2 INT,
    stopsmk2 INT
);

COPY tobacco_cessation ("lastsmk2", "stopsmk2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: other_tobacco_use
CREATE TABLE IF NOT EXISTS other_tobacco_use (
    id SERIAL PRIMARY KEY,
    mentcigs INT,
    mentecig INT,
    heattbco INT
);

COPY other_tobacco_use ("mentcigs", "mentecig", "heattbco")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: firearm_safety
CREATE TABLE IF NOT EXISTS firearm_safety (
    id SERIAL PRIMARY KEY,
    firearm5 INT,
    gunload INT,
    loadulk2 INT
);

COPY firearm_safety ("firearm5", "gunload", "loadulk2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: heart_attack_stroke
CREATE TABLE IF NOT EXISTS heart_attack_stroke (
    id SERIAL PRIMARY KEY,
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
    firstaid INT
);

COPY heart_attack_stroke ("hasymp1", "hasymp2", "hasymp3", "hasymp4", "hasymp5", "hasymp6", "strsymp1", "strsymp2", "strsymp3", "strsymp4", "strsymp5", "strsymp6", "firstaid")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: aspirin_cvd
CREATE TABLE IF NOT EXISTS aspirin_cvd (
    id SERIAL PRIMARY KEY,
    aspirin INT
);

COPY aspirin_cvd ("aspirin")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: sexual_orientation
CREATE TABLE IF NOT EXISTS sexual_orientation (
    id SERIAL PRIMARY KEY,
    somale INT,
    sofemale INT
);

COPY sexual_orientation ("somale", "sofemale")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: marijuana_use
CREATE TABLE IF NOT EXISTS marijuana_use (
    id SERIAL PRIMARY KEY,
-- PICK UP HERE --
    marijan1 INT,
    marjsmok INT,
    marjeat INT,
    marjvape INT,
    marjdab INT
);

COPY marijuana_use ("sofemale", "marijan1", "marjsmok", "marjeat", "marjvape", "marjdab")
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
    aceadsaf INT
);

COPY adverse_childhood_experiences ("marjothr", "acedeprs", "acedrink", "acedrugs", "aceprisn", "acedivrc", "acepunch", "acehurt1", "aceswear", "acetouch", "acetthem", "acehvsex", "aceadsaf")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: place_of_flu_vaccination
CREATE TABLE IF NOT EXISTS place_of_flu_vaccination (
    id SERIAL PRIMARY KEY,
    aceadned INT
);

COPY place_of_flu_vaccination ("aceadned")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: hpv_vaccination
CREATE TABLE IF NOT EXISTS hpv_vaccination (
    id SERIAL PRIMARY KEY,
    imfvpla4 INT,
    hpvadvc4 INT
);

COPY hpv_vaccination ("imfvpla4", "hpvadvc4")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: tetanus_diphtheria_tdap_adults
CREATE TABLE IF NOT EXISTS tetanus_diphtheria_tdap_adults (
    id SERIAL PRIMARY KEY,
    hpvadsht INT
);

COPY tetanus_diphtheria_tdap_adults ("hpvadsht")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: covid_vaccination
CREATE TABLE IF NOT EXISTS covid_vaccination (
    id SERIAL PRIMARY KEY,
    tetanus1 INT,
    covidva1 INT,
    covacge1 INT
);

COPY covid_vaccination ("tetanus1", "covidva1", "covacge1")
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
    sdhtrnsp INT
);

COPY social_determinants ("covidnu2", "lsatisfy", "emtsuprt", "sdlonely", "sdhemply", "foodstmp", "sdhfood1", "sdhbills", "sdhutils", "sdhtrnsp")
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
    rrhcare4 INT
);

COPY reactions_to_race ("sdhstre1", "rrclass3", "rrcognt2", "rrtreat", "rratwrk2", "rrhcare4")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: random_child_selection
CREATE TABLE IF NOT EXISTS random_child_selection (
    id SERIAL PRIMARY KEY,
    rrphysm2 INT,
    rcsborg1 INT
);

COPY random_child_selection ("rrphysm2", "rcsborg1")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: childhood_asthma_prevalence
CREATE TABLE IF NOT EXISTS childhood_asthma_prevalence (
    id SERIAL PRIMARY KEY,
    rcsrltn2 INT,
    casthdx2 INT
);

COPY childhood_asthma_prevalence ("rcsrltn2", "casthdx2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_version
CREATE TABLE IF NOT EXISTS questionnaire_version (
    id SERIAL PRIMARY KEY,
    casthno2 INT
);

COPY questionnaire_version ("casthno2")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: questionnaire_language
CREATE TABLE IF NOT EXISTS questionnaire_language (
    id SERIAL PRIMARY KEY,
    qstver INT
);

COPY questionnaire_language ("qstver")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: urban_rural
CREATE TABLE IF NOT EXISTS urban_rural (
    id SERIAL PRIMARY KEY,
    qstlang INT,
    _metstat INT
);

COPY urban_rural ("qstlang", "_metstat")
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
    _wt2rake INT
);

COPY weighting_variables ("_urbstat", "mscode", "_ststr", "_strwt", "_rawrake", "_wt2rake")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_demographic_variables
CREATE TABLE IF NOT EXISTS child_demographic_variables (
    id SERIAL PRIMARY KEY,
    _imprace INT,
    _chispnc INT
);

COPY child_demographic_variables ("_imprace", "_chispnc")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: child_weighting_variables
CREATE TABLE IF NOT EXISTS child_weighting_variables (
    id SERIAL PRIMARY KEY,
    _crace1 INT,
    cageg INT
);

COPY child_weighting_variables ("_crace1", "cageg")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

-- Table: weighting_variables
CREATE TABLE IF NOT EXISTS weighting_variables (
    id SERIAL PRIMARY KEY,
    _cllcpwt INT,
    _dualuse INT,
    _dualcor INT,
    _llcpwt2 INT
);

COPY weighting_variables ("_cllcpwt", "_dualuse", "_dualcor", "_llcpwt2")
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
    _asthms1 INT
);

COPY calculated_variables ("_llcpwt", "_rfhlth", "_phys14d", "_ment14d", "_hlthpl1", "_hcvu653", "_totinda", "metvl12_", "metvl22_", "maxvo21_", "fc601_", "actin13_", "actin23_", "padur1_", "padur2_", "pafreq1_", "pafreq2_", "_minac12", "_minac22", "strfreq_", "pamiss3_", "pamin13_", "pamin23_", "pa3min_", "pavig13_", "pavig23_", "pa3vigm_", "_pacat3", "_paindx3", "_pa150r4", "_pa300r4", "_pa30023", "_pastrng", "_parec3", "_pastae3", "_rfhype6", "_cholch3", "_rfchol3", "_michd", "_ltasth1", "_casthm1", "_asthms1")
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
    _racegr3 INT
);

COPY calculated_race_variables ("_drdxar2", "_mrace1", "_hispanc", "_race", "_raceg21", "_racegr3")
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
    _rfseat3 INT
);

COPY calculated_variables ("_raceprv", "_sex", "_ageg5yr", "_age65yr", "_age80", "_age_g", "htin4", "htm4", "wtkg3", "_bmi5", "_bmi5cat", "_rfbmi5", "_chldcnt", "_educag", "_incomg1", "_smoker3", "_rfsmok3", "_cureci2", "drnkany6", "drocdy4_", "_rfbing6", "_drnkwk2", "_rfdrhv8", "_flshot7", "_pneumo3", "_aidtst4", "_rfseat2", "_rfseat3")
FROM '/docker-entrypoint-initdb.d/brfss_2023.csv'
DELIMITER ','
CSV HEADER;

