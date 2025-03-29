-- These are psql commands. I'm not sure they'd work as a batch in a SQL server. I ran them in terminal.

\copy ace (acedeprs, acedrink, acedrugs, aceprisn, acedivrc, acepunch, acehurt1, aceswear, acetouch, acetthem, acehvsex, aceadsaf, aceadned) FROM '/docker-entrypoint-initdb.d/ace.csv' CSV HEADER;

\copy alcohol_consumption (alcday4, avedrnk3, drnk3ge5, maxdrnks) FROM '/docker-entrypoint-initdb.d/alcohol_consumption.csv' CSV HEADER;

\copy arthritis (arthexer, arthedu, lmtjoin3, arthdis2, joinpai2) FROM '/docker-entrypoint-initdb.d/arthritis.csv' CSV HEADER;

\copy aspirin_cvd (aspirin) FROM '/docker-entrypoint-initdb.d/aspirin_cvd.csv' CSV HEADER;

\copy breast_cervical_cancer_screen (hadmam, howlong, cervscrn, crvclcnc, crvclpap, crvclhpv, hadhyst2) FROM '/docker-entrypoint-initdb.d/breast_cervical_cancer_screen.csv' CSV HEADER;

\copy calculated_race_variables (_mrace1, _hispanc, _race, _raceg21, _racegr3, _raceprv) FROM '/docker-entrypoint-initdb.d/calculated_race_variables.csv' CSV HEADER;

\copy calculated_variables_1 (_rfhlth, _phys14d, _ment14d, _hlthpl1, _hcvu653, _totinda, metvl12_, metvl22_, maxvo21_, fc601_, actin13_, actin23_, padur1_, padur2_, pafreq1_, pafreq2_, _minac12, _minac22, strfreq_, pamiss3_, pamin13_, pamin23_, pa3min_, pavig13_, pavig23_, pa3vigm_, _pacat3, _paindx3, _pa150r4, _pa300r4, _pa30023, _pastrng, _parec3, _pastae3, _rfhype6, _cholch3, _rfchol3, _michd, _ltasth1, _casthm1, _asthms1, _drdxar2) FROM '/docker-entrypoint-initdb.d/calculated_variables_1.csv' CSV HEADER;

\copy calculated_variables_2 (_sex, _ageg5yr, _age65yr, _age80, _age_g, htin4, htm4, wtkg3, _bmi5, _bmi5cat, _rfbmi5, _chldcnt, _educag, _incomg1, _smoker3, _rfsmok3, _cureci2, drnkany6, drocdy4_, _rfbing6, _drnkwk2, _rfdrhv8, _flshot7, _pneumo3, _aidtst4, _rfseat2, _rfseat3, _drnkdrv) FROM '/docker-entrypoint-initdb.d/calculated_variables_2.csv' CSV HEADER;

\copy cancer_survivor_pain (csrvpain, csrvctl2) FROM '/docker-entrypoint-initdb.d/cancer_survivor_pain.csv' CSV HEADER;

\copy cancer_survivor_treat (csrvtrt3, csrvdoc1, csrvsum, csrvrtrn, csrvinst, csrvinsr, csrvdein, csrvclin) FROM '/docker-entrypoint-initdb.d/cancer_survivor_treat.csv' CSV HEADER;

\copy cancer_survivor_type (cncrdiff, cncrage, cncrtyp2) FROM '/docker-entrypoint-initdb.d/cancer_survivor_type.csv' CSV HEADER;

\copy caregiver (caregiv1, crgvrel4, crgvlng1, crgvhrs1, crgvprb3, crgvalzd, crgvper1, crgvhou1, crgvexpt) FROM '/docker-entrypoint-initdb.d/caregiver.csv' CSV HEADER;

\copy cell_phone_introduction (safetime, ctelnum1, cellfon5, cadult1, cellsex2, pvtresd3, cclghous, cstate1, landline, hhadult) FROM '/docker-entrypoint-initdb.d/cell_phone_introduction.csv' CSV HEADER;

\copy child_demographics (_chispnc, _crace1) FROM '/docker-entrypoint-initdb.d/child_demographics.csv' CSV HEADER;

\copy child_weighting_variables (cageg, _cllcpwt) FROM '/docker-entrypoint-initdb.d/child_weighting_variables.csv' CSV HEADER;

\copy childhood_asthma (casthdx2, casthno2) FROM '/docker-entrypoint-initdb.d/childhood_asthma.csv' CSV HEADER;

\copy cholesterol (cholmed3) FROM '/docker-entrypoint-initdb.d/cholesterol.csv' CSV HEADER;

\copy chronic_health_conditions (cvdinfr4, cvdcrhd4, cvdstrk3, asthma3, asthnow, chcscnc1, chcocnc1, chccopd3, addepev3, chckdny2, havarth4, diabete4, diabage4) FROM '/docker-entrypoint-initdb.d/chronic_health_conditions.csv' CSV HEADER;

\copy cognitive_decline (cimemlo1, cdworry, cddiscu1, cdhous1, cdsocia1) FROM '/docker-entrypoint-initdb.d/cognitive_decline.csv' CSV HEADER;

\copy colorectal_cancer_screen (hadsigm4, colnsigm, colntes1, sigmtes1, lastsig4, colncncr, vircolo1, vclntes2, smalstol, stoltest, stooldn2, bldstfit, sdnates1) FROM '/docker-entrypoint-initdb.d/colorectal_cancer_screen.csv' CSV HEADER;

\copy covid_vaccination (covidva1, covacge1, covidnu2) FROM '/docker-entrypoint-initdb.d/covid_vaccination.csv' CSV HEADER;

\copy demographics (marital, educa, renthom1, numhhol4, numphon4, cpdemo1c, veteran3, employ1, children, income3, pregnant, weight2, height3) FROM '/docker-entrypoint-initdb.d/demographics.csv' CSV HEADER;

\copy diabetes (diabtype, insulin1, chkhemo3, eyeexam1, diabeye1, diabedu1, feetsore) FROM '/docker-entrypoint-initdb.d/diabetes.csv' CSV HEADER;

\copy disability (deaf, blind, decide, diffwalk, diffdres, diffalon) FROM '/docker-entrypoint-initdb.d/disability.csv' CSV HEADER;

\copy excess_sun_exposure (numburn3, sunprtct, wkdayout, wkendout) FROM '/docker-entrypoint-initdb.d/excess_sun_exposure.csv' CSV HEADER;

\copy exercise (exerany2, exract12, exeroft1, exerhmm1, exract22, exeroft2, exerhmm2, strength) FROM '/docker-entrypoint-initdb.d/exercise.csv' CSV HEADER;

\copy falls (fall12mn, fallinj5) FROM '/docker-entrypoint-initdb.d/falls.csv' CSV HEADER;

\copy firearm_safety (firearm5, gunload, loadulk2) FROM '/docker-entrypoint-initdb.d/firearm_safety.csv' CSV HEADER;

\copy flu_vaccination (imfvpla4) FROM '/docker-entrypoint-initdb.d/flu_vaccination.csv' CSV HEADER;

\copy health_care_access (primins1, persdoc3, medcost1, checkup1) FROM '/docker-entrypoint-initdb.d/health_care_access.csv' CSV HEADER;

\copy health_status (genhlth) FROM '/docker-entrypoint-initdb.d/health_status.csv' CSV HEADER;

\copy healthy_days (physhlth, menthlth, poorhlth) FROM '/docker-entrypoint-initdb.d/healthy_days.csv' CSV HEADER;

\copy heart_attack_stroke (hasymp1, hasymp2, hasymp3, hasymp4, hasymp5, hasymp6, strsymp1, strsymp2, strsymp3, strsymp4, strsymp5, strsymp6, firstaid) FROM '/docker-entrypoint-initdb.d/heart_attack_stroke.csv' CSV HEADER;

\copy hiv_aids (hivtst7, hivtstd3) FROM '/docker-entrypoint-initdb.d/hiv_aids.csv' CSV HEADER;

\copy hpv_vaccination (hpvadvc4, hpvadsht) FROM '/docker-entrypoint-initdb.d/hpv_vaccination.csv' CSV HEADER;

\copy hypertension (bphigh6, bpmeds1, cholchk3, toldhi3) FROM '/docker-entrypoint-initdb.d/hypertension.csv' CSV HEADER;

\copy immunization (flushot7, flshtmy3, pneuvac4, shingle2) FROM '/docker-entrypoint-initdb.d/immunization.csv' CSV HEADER;

\copy indoor_tan (indortan) FROM '/docker-entrypoint-initdb.d/indoor_tan.csv' CSV HEADER;

\copy land_line_introduction (ctelenm1, pvtresd1, colghous, statere1, celphon1, ladult1, numadult, respslc1, landsex2) FROM '/docker-entrypoint-initdb.d/land_line_introduction.csv' CSV HEADER;

\copy long_term_covid (covidpo1, covidsm1, covidact) FROM '/docker-entrypoint-initdb.d/long_term_covid.csv' CSV HEADER;

\copy lung_cancer_screen (lcsfirst, lcslast, lcsnumcg, lcsctsc1, lcsscncr, lcsctwhn) FROM '/docker-entrypoint-initdb.d/lung_cancer_screen.csv' CSV HEADER;

\copy marijuana_use (marijan1, marjsmok, marjeat, marjvape, marjdab, marjothr) FROM '/docker-entrypoint-initdb.d/marijuana_use.csv' CSV HEADER;

\copy other_tabacco_use (mentcigs, mentecig, heattbco) FROM '/docker-entrypoint-initdb.d/other_tabacco_use.csv' CSV HEADER;

\copy pre_diabetes (pdiabts1, prediab2) FROM '/docker-entrypoint-initdb.d/pre_diabetes.csv' CSV HEADER;

\copy prostate_cancer_screen (psatest1, psatime1, pcpsars2, psasugs1, pcstalk2) FROM '/docker-entrypoint-initdb.d/prostate_cancer_screen.csv' CSV HEADER;

\copy questionnaire_lang (qstlang) FROM '/docker-entrypoint-initdb.d/questionnaire_lang.csv' CSV HEADER;

\copy questionnaire_ver (qstver) FROM '/docker-entrypoint-initdb.d/questionnaire_ver.csv' CSV HEADER;

\copy race_reactions (rrclass3, rrcognt2, rrtreat, rratwrk2, rrhcare4, rrphysm2) FROM '/docker-entrypoint-initdb.d/race_reactions.csv' CSV HEADER;

\copy random_child_select (rcsrltn2) FROM '/docker-entrypoint-initdb.d/random_child_select.csv' CSV HEADER;

\copy record_identification (_state, fmonth, idate, imonth, iday, iyear, dispcode, seqno, _psu) FROM '/docker-entrypoint-initdb.d/record_identification.csv' CSV HEADER;

\copy respondent_sex (sexvar) FROM '/docker-entrypoint-initdb.d/respondent_sex.csv' CSV HEADER;

\copy seatbelt_drink_drive (seatbelt, drnkdri2) FROM '/docker-entrypoint-initdb.d/seatbelt_drink_drive.csv' CSV HEADER;

\copy sexual_orientation (somale, sofemale) FROM '/docker-entrypoint-initdb.d/sexual_orientation.csv' CSV HEADER;

\copy social_determinants (lsatisfy, emtsuprt, sdlonely, sdhemply, foodstmp, sdhfood1, sdhbills, sdhutils, sdhtrnsp, sdhstre1) FROM '/docker-entrypoint-initdb.d/social_determinants.csv' CSV HEADER;

\copy tabacco_cessation (lastsmk2, stopsmk2) FROM '/docker-entrypoint-initdb.d/tabacco_cessation.csv' CSV HEADER;

\copy tabacco_use (smoke100, smokday2, usenow3, ecignow2) FROM '/docker-entrypoint-initdb.d/tabacco_use.csv' CSV HEADER;

\copy tdap_adults (tetanus1) FROM '/docker-entrypoint-initdb.d/tdap_adults.csv' CSV HEADER;

\copy urban_rural (_metstat, _urbstat) FROM '/docker-entrypoint-initdb.d/urban_rural.csv' CSV HEADER;

\copy weighting_variables_1 (mscode, _ststr, _strwt, _rawrake, _wt2rake, _imprace) FROM '/docker-entrypoint-initdb.d/weighting_variables_1.csv' CSV HEADER;

\copy weighting_variables_2 (_dualuse, _dualcor, _llcpwt2, _llcpwt) FROM '/docker-entrypoint-initdb.d/weighting_variables_2.csv' CSV HEADER;
