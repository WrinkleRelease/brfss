CREATE TABLE IF NOT EXISTS ace (
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

CREATE TABLE IF NOT EXISTS alcohol_consumption (
    alcday4 NUMERIC,
    avedrnk3 NUMERIC,
    drnk3ge5 NUMERIC,
    maxdrnks NUMERIC
);

CREATE TABLE IF NOT EXISTS arthritis (
    arthexer NUMERIC,
    arthedu NUMERIC,
    lmtjoin3 NUMERIC,
    arthdis2 NUMERIC,
    joinpai2 NUMERIC
);

CREATE TABLE IF NOT EXISTS aspirin_cvd (
    aspirin NUMERIC
);

CREATE TABLE IF NOT EXISTS breast_cervical_cancer_screen (
    hadmam NUMERIC,
    howlong NUMERIC,
    cervscrn NUMERIC,
    crvclcnc NUMERIC,
    crvclpap NUMERIC,
    crvclhpv NUMERIC,
    hadhyst2 NUMERIC
);

CREATE TABLE IF NOT EXISTS calculated_race_variables (
    _mrace1 NUMERIC,
    _hispanc NUMERIC,
    _race NUMERIC,
    _raceg21 NUMERIC,
    _racegr3 NUMERIC,
    _raceprv NUMERIC
);

CREATE TABLE IF NOT EXISTS calculated_variables_1 (
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

CREATE TABLE IF NOT EXISTS calculated_variables_2 (
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

CREATE TABLE IF NOT EXISTS cancer_survivor_pain (
    csrvpain NUMERIC,
    csrvctl2 NUMERIC
);

CREATE TABLE IF NOT EXISTS cancer_survivor_treat (
    csrvtrt3 NUMERIC,
    csrvdoc1 NUMERIC,
    csrvsum NUMERIC,
    csrvrtrn NUMERIC,
    csrvinst NUMERIC,
    csrvinsr NUMERIC,
    csrvdein NUMERIC,
    csrvclin NUMERIC
);

CREATE TABLE IF NOT EXISTS cancer_survivor_type (
    cncrdiff NUMERIC,
    cncrage NUMERIC,
    cncrtyp2 NUMERIC
);

CREATE TABLE IF NOT EXISTS caregiver (
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

CREATE TABLE IF NOT EXISTS cell_phone_introduction (
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

CREATE TABLE IF NOT EXISTS child_demographics (
    _chispnc NUMERIC,
    _crace1 NUMERIC
);

CREATE TABLE IF NOT EXISTS child_weighting_variables (
    cageg NUMERIC,
    _cllcpwt NUMERIC
);

CREATE TABLE IF NOT EXISTS childhood_asthma (
    casthdx2 NUMERIC,
    casthno2 NUMERIC
);

CREATE TABLE IF NOT EXISTS cholesterol (
    cholmed3 NUMERIC
);

CREATE TABLE IF NOT EXISTS chronic_health_conditions (
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

CREATE TABLE IF NOT EXISTS cognitive_decline (
    cimemlo1 NUMERIC,
    cdworry NUMERIC,
    cddiscu1 NUMERIC,
    cdhous1 NUMERIC,
    cdsocia1 NUMERIC
);

CREATE TABLE IF NOT EXISTS colorectal_cancer_screen (
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

CREATE TABLE IF NOT EXISTS covid_vaccination (
    covidva1 NUMERIC,
    covacge1 NUMERIC,
    covidnu2 NUMERIC
);

CREATE TABLE IF NOT EXISTS demographics (
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

CREATE TABLE IF NOT EXISTS diabetes (
    diabtype NUMERIC,
    insulin1 NUMERIC,
    chkhemo3 NUMERIC,
    eyeexam1 NUMERIC,
    diabeye1 NUMERIC,
    diabedu1 NUMERIC,
    feetsore NUMERIC
);

CREATE TABLE IF NOT EXISTS disability (
    deaf NUMERIC,
    blind NUMERIC,
    decide NUMERIC,
    diffwalk NUMERIC,
    diffdres NUMERIC,
    diffalon NUMERIC
);

CREATE TABLE IF NOT EXISTS excess_sun_exposure (
    numburn3 NUMERIC,
    sunprtct NUMERIC,
    wkdayout NUMERIC,
    wkendout NUMERIC
);

CREATE TABLE IF NOT EXISTS exercise (
    exerany2 NUMERIC,
    exract12 NUMERIC,
    exeroft1 NUMERIC,
    exerhmm1 NUMERIC,
    exract22 NUMERIC,
    exeroft2 NUMERIC,
    exerhmm2 NUMERIC,
    strength NUMERIC
);

CREATE TABLE IF NOT EXISTS falls (
    fall12mn NUMERIC,
    fallinj5 NUMERIC
);

CREATE TABLE IF NOT EXISTS firearm_safety (
    firearm5 NUMERIC,
    gunload NUMERIC,
    loadulk2 NUMERIC
);

CREATE TABLE IF NOT EXISTS flu_vaccination (
    imfvpla4 NUMERIC
);

CREATE TABLE IF NOT EXISTS health_care_access (
    primins1 NUMERIC,
    persdoc3 NUMERIC,
    medcost1 NUMERIC,
    checkup1 NUMERIC
);

CREATE TABLE IF NOT EXISTS health_status (
    genhlth NUMERIC
);

CREATE TABLE IF NOT EXISTS healthy_days (
    physhlth NUMERIC,
    menthlth NUMERIC,
    poorhlth NUMERIC
);

CREATE TABLE IF NOT EXISTS heart_attack_stroke (
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

CREATE TABLE IF NOT EXISTS hiv_aids (
    hivtst7 NUMERIC,
    hivtstd3 NUMERIC
);

CREATE TABLE IF NOT EXISTS hpv_vaccination (
    hpvadvc4 NUMERIC,
    hpvadsht NUMERIC
);

CREATE TABLE IF NOT EXISTS hypertension (
    bphigh6 NUMERIC,
    bpmeds1 NUMERIC,
    cholchk3 NUMERIC,
    toldhi3 NUMERIC
);

CREATE TABLE IF NOT EXISTS immunization (
    flushot7 NUMERIC,
    flshtmy3 NUMERIC,
    pneuvac4 NUMERIC,
    shingle2 NUMERIC
);

CREATE TABLE IF NOT EXISTS indoor_tan (
    indortan NUMERIC
);

CREATE TABLE IF NOT EXISTS land_line_introduction (
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

CREATE TABLE IF NOT EXISTS long_term_covid (
    covidpo1 NUMERIC,
    covidsm1 NUMERIC,
    covidact NUMERIC
);

CREATE TABLE IF NOT EXISTS lung_cancer_screen (
    lcsfirst NUMERIC,
    lcslast NUMERIC,
    lcsnumcg NUMERIC,
    lcsctsc1 NUMERIC,
    lcsscncr NUMERIC,
    lcsctwhn NUMERIC
);

CREATE TABLE IF NOT EXISTS marijuana_use (
    marijan1 NUMERIC,
    marjsmok NUMERIC,
    marjeat NUMERIC,
    marjvape NUMERIC,
    marjdab NUMERIC,
    marjothr NUMERIC
);

CREATE TABLE IF NOT EXISTS other_tabacco_use (
    mentcigs NUMERIC,
    mentecig NUMERIC,
    heattbco NUMERIC
);

CREATE TABLE IF NOT EXISTS pre_diabetes (
    pdiabts1 NUMERIC,
    prediab2 NUMERIC
);

CREATE TABLE IF NOT EXISTS prostate_cancer_screen (
    psatest1 NUMERIC,
    psatime1 NUMERIC,
    pcpsars2 NUMERIC,
    psasugs1 NUMERIC,
    pcstalk2 NUMERIC
);

CREATE TABLE IF NOT EXISTS questionnaire_lang (
    qstlang NUMERIC
);

CREATE TABLE IF NOT EXISTS questionnaire_ver (
    qstver NUMERIC
);

CREATE TABLE IF NOT EXISTS race_reactions (
    rrclass3 NUMERIC,
    rrcognt2 NUMERIC,
    rrtreat NUMERIC,
    rratwrk2 NUMERIC,
    rrhcare4 NUMERIC,
    rrphysm2 NUMERIC
);

CREATE TABLE IF NOT EXISTS random_child_select (
    rcsrltn2 NUMERIC
);

CREATE TABLE IF NOT EXISTS record_identification (
    _state NUMERIC,
    fmonth VARCHAR(255),
    idate VARCHAR(255),
    imonth VARCHAR(255),
    iday VARCHAR(255),
    iyear NUMERIC,
    dispcode VARCHAR(255),
    seqno NUMERIC,
    _psu NUMERIC
);

CREATE TABLE IF NOT EXISTS respondent_sex (
    sexvar NUMERIC
);

CREATE TABLE IF NOT EXISTS seatbelt_drink_drive (
    seatbelt NUMERIC,
    drnkdri2 NUMERIC
);

CREATE TABLE IF NOT EXISTS sexual_orientation (
    somale NUMERIC,
    sofemale NUMERIC
);

CREATE TABLE IF NOT EXISTS social_determinants (
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

CREATE TABLE IF NOT EXISTS tabacco_cessation (
    lastsmk2 NUMERIC,
    stopsmk2 NUMERIC
);

CREATE TABLE IF NOT EXISTS tabacco_use (
    smoke100 NUMERIC,
    smokday2 NUMERIC,
    usenow3 NUMERIC,
    ecignow2 NUMERIC
);

CREATE TABLE IF NOT EXISTS tdap_adults (
    tetanus1 NUMERIC
);

CREATE TABLE IF NOT EXISTS urban_rural (
    _metstat NUMERIC,
    _urbstat NUMERIC
);

CREATE TABLE IF NOT EXISTS weighting_variables_1 (
    mscode NUMERIC,
    _ststr NUMERIC,
    _strwt NUMERIC,
    _rawrake NUMERIC,
    _wt2rake NUMERIC,
    _imprace NUMERIC
);

CREATE TABLE IF NOT EXISTS weighting_variables_2 (
    _dualuse NUMERIC,
    _dualcor NUMERIC,
    _llcpwt2 NUMERIC,
    _llcpwt NUMERIC
);

