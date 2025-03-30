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

CREATE TABLE IF NOT EXISTS alcohol_screen (
    asbialch NUMERIC,
    asbidrnk NUMERIC,
    asbibing NUMERIC,
    asbiadvc NUMERIC,
    asbirduc NUMERIC
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
    _prace2 NUMERIC,
    _mrace2 NUMERIC,
    _hispanc NUMERIC,
    _race1 NUMERIC,
    _raceg22 NUMERIC,
    _racegr4 NUMERIC,
    _racepr1 NUMERIC
);

CREATE TABLE IF NOT EXISTS calculated_variables_1 (
    _rfhlth NUMERIC,
    _phys14d NUMERIC,
    _ment14d NUMERIC,
    _hlthpln NUMERIC,
    _hcvu652 NUMERIC,
    _totinda NUMERIC,
    _exteth3 NUMERIC,
    _alteth3 NUMERIC,
    _denvst3 NUMERIC,
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
    _rfmam22 NUMERIC,
    _mam5023 NUMERIC,
    _hadcoln NUMERIC,
    _clnscp1 NUMERIC,
    _hadsigm NUMERIC,
    _sgmscp1 NUMERIC,
    _sgms101 NUMERIC,
    _rfblds5 NUMERIC,
    _stoldn1 NUMERIC,
    _vircol1 NUMERIC,
    _sbonti1 NUMERIC,
    _crcrec2 NUMERIC,
    _smoker3 NUMERIC,
    _rfsmok3 NUMERIC,
    _cureci2 NUMERIC,
    _yrssmok NUMERIC,
    _packday NUMERIC,
    _packyrs NUMERIC,
    _yrsquit NUMERIC,
    _smokgrp NUMERIC,
    _lcsrec NUMERIC,
    drnkany6 NUMERIC,
    drocdy4_ NUMERIC,
    _rfbing6 NUMERIC,
    _drnkwk2 NUMERIC,
    _rfdrhv8 NUMERIC,
    _flshot7 NUMERIC,
    _pneumo3 NUMERIC,
    _aidtst4 NUMERIC
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
    cellsex1 NUMERIC,
    pvtresd3 NUMERIC,
    cclghous NUMERIC,
    cstate1 NUMERIC,
    landline NUMERIC,
    hhadult NUMERIC
);

CREATE TABLE IF NOT EXISTS child_demographics (
    _chispnc NUMERIC,
    _crace2 NUMERIC,
    _cprace2 NUMERIC
);

CREATE TABLE IF NOT EXISTS child_weighting_variables (
    cageg NUMERIC,
    _cllcpwt NUMERIC
);

CREATE TABLE IF NOT EXISTS childhood_asthma (
    casthdx2 NUMERIC,
    casthno2 NUMERIC
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
    diabete4 NUMERIC
);

CREATE TABLE IF NOT EXISTS cognitive_decline (
    cimemlos NUMERIC,
    cdhouse NUMERIC,
    cdassist NUMERIC,
    cdhelp NUMERIC,
    cdsocial NUMERIC,
    cddiscus NUMERIC
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
    covacget NUMERIC,
    covidnu1 NUMERIC,
    covidint NUMERIC,
    covidfs1 NUMERIC,
    covidse1 NUMERIC
);

CREATE TABLE IF NOT EXISTS demographics (
    marital NUMERIC,
    educa NUMERIC,
    renthom1 NUMERIC,
    numhhol4 NUMERIC,
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

CREATE TABLE IF NOT EXISTS exercise (
    exerany2 NUMERIC
);

CREATE TABLE IF NOT EXISTS family_plan (
    hadsex NUMERIC,
    pfpprvn4 NUMERIC,
    typcntr9 NUMERIC,
    brthcnt4 NUMERIC,
    whereget NUMERIC,
    nobcuse8 NUMERIC,
    bcprefer NUMERIC
);

CREATE TABLE IF NOT EXISTS firearm_safety (
    firearm5 NUMERIC,
    gunload NUMERIC,
    loadulk2 NUMERIC
);

CREATE TABLE IF NOT EXISTS flu_vaccination (
    imfvpla3 NUMERIC
);

CREATE TABLE IF NOT EXISTS health_care_access (
    priminsr NUMERIC,
    persdoc3 NUMERIC,
    medcost1 NUMERIC,
    checkup1 NUMERIC
);

CREATE TABLE IF NOT EXISTS healthy_days (
    genhlth NUMERIC,
    physhlth NUMERIC,
    menthlth NUMERIC,
    poorhlth NUMERIC
);

CREATE TABLE IF NOT EXISTS hiv_aids (
    hivtst7 NUMERIC,
    hivtstd3 NUMERIC,
    hivrisk5 NUMERIC
);

CREATE TABLE IF NOT EXISTS hpv_vaccination (
    hpvadvc4 NUMERIC,
    hpvadsht NUMERIC
);

CREATE TABLE IF NOT EXISTS immunization (
    flushot7 NUMERIC,
    flshtmy3 NUMERIC,
    pneuvac4 NUMERIC,
    tetanus1 NUMERIC
);

CREATE TABLE IF NOT EXISTS inadequate_sleep (
    sleptim1 NUMERIC
);

CREATE TABLE IF NOT EXISTS land_line_introduction (
    ctelenm1 NUMERIC,
    pvtresd1 NUMERIC,
    colghous NUMERIC,
    statere1 NUMERIC,
    celphon1 NUMERIC,
    ladult1 NUMERIC,
    colgsex1 NUMERIC,
    numadult NUMERIC,
    landsex1 NUMERIC,
    nummen NUMERIC,
    numwomen NUMERIC,
    respslct NUMERIC
);

CREATE TABLE IF NOT EXISTS long_term_covid (
    covidpos NUMERIC,
    covidsmp NUMERIC,
    covidprm NUMERIC
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

CREATE TABLE IF NOT EXISTS me_cfs (
    toldcfs NUMERIC,
    havecfs NUMERIC,
    workcfs NUMERIC
);

CREATE TABLE IF NOT EXISTS oral_health (
    lastden4 NUMERIC,
    rmvteth4 NUMERIC
);

CREATE TABLE IF NOT EXISTS other_tobacco_use (
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
    psasugst NUMERIC,
    pcstalk1 NUMERIC
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
    rcsgend1 NUMERIC,
    rcsxbrth NUMERIC,
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

CREATE TABLE IF NOT EXISTS respiratory_health (
    copdcogh NUMERIC,
    copdflem NUMERIC,
    copdbrth NUMERIC,
    copdbtst NUMERIC,
    copdsmok NUMERIC
);

CREATE TABLE IF NOT EXISTS respondent_sex (
    sexvar NUMERIC
);

CREATE TABLE IF NOT EXISTS sex_at_birth (
    birthsex NUMERIC
);

CREATE TABLE IF NOT EXISTS sexual_orientation (
    somale NUMERIC,
    sofemale NUMERIC,
    trnsgndr NUMERIC
);

CREATE TABLE IF NOT EXISTS shingles_vaccination (
    shingle2 NUMERIC
);

CREATE TABLE IF NOT EXISTS social_determinants (
    lsatisfy NUMERIC,
    emtsuprt NUMERIC,
    sdhisolt NUMERIC,
    sdhemply NUMERIC,
    foodstmp NUMERIC,
    sdhfood1 NUMERIC,
    sdhbills NUMERIC,
    sdhutils NUMERIC,
    sdhtrnsp NUMERIC,
    sdhstre1 NUMERIC
);

CREATE TABLE IF NOT EXISTS tobacco_cessation (
    lastsmk2 NUMERIC,
    stopsmk2 NUMERIC
);

CREATE TABLE IF NOT EXISTS tobacco_use (
    smoke100 NUMERIC,
    smokday2 NUMERIC,
    usenow3 NUMERIC,
    ecignow2 NUMERIC
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

