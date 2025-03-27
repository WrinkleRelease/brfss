# 2023 BRFSS Variables

## Variables By Section

| Section                                                        | Table Name                      | Variables                                                                                                                                                                                                                                                                                                                                                                           |
| -------------------------------------------------------------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Record Identification                                          | `record_identification`         | `(_STATE,FMONTH,IDATE,IMONTH,IDAY,IYEAR,DISPCODE,SEQNO,_PSU)`                                                                                                                                                                                                                                                                                                                       |
| Land Line Introduction                                         | `land_line_introduction`        | `(CTELENM1,PVTRESD1,COLGHOUS,STATERE1,CELPHON1,LADULT1,NUMADULT,RESPSLC1,LANDSEX2)`                                                                                                                                                                                                                                                                                                 |
| Cell Phone Introduction                                        | `cell_phone_introduction`       | `(SAFETIME,CTELNUM1,CELLFON5,CADULT1,CELLSEX2,PVTRESD3,CCLGHOUS,CSTATE1,LANDLINE,HHADULT)`                                                                                                                                                                                                                                                                                          |
| Respondent Sex                                                 | `respondent_sex`                | `(SEXVAR)`                                                                                                                                                                                                                                                                                                                                                                          |
| Health Status                                                  | `health_status`                 | `(GENHLTH)`                                                                                                                                                                                                                                                                                                                                                                         |
| Healthy Days                                                   | `healthy_days`                  | `(PHYSHLTH,MENTHLTH,POORHLTH)`                                                                                                                                                                                                                                                                                                                                                      |
| Health Care Access                                             | `health_care_access`            | `(PRIMINS1,PERSDOC3,MEDCOST1,CHECKUP1)`                                                                                                                                                                                                                                                                                                                                             |
| Exercise (Physical Activity)                                   | `exercise`                      | `(EXERANY2,EXRACT12,EXEROFT1,EXERHMM1,EXRACT22,EXEROFT2,EXERHMM2,STRENGTH)`                                                                                                                                                                                                                                                                                                         |
| Hypertension Awareness                                         | `hypertension`                  | `(BPHIGH6,BPMEDS1)`                                                                                                                                                                                                                                                                                                                                                                 |
| Cholesterol Awareness                                          | `cholesterol`                   | `(CHOLCHK3,TOLDHI3,CHOLMED3)`                                                                                                                                                                                                                                                                                                                                                       |
| Chronic Health Conditions                                      | `chronic_health_conditions`     | `(CVDINFR4,CVDCRHD4,CVDSTRK3,ASTHMA3,ASTHNOW,CHCSCNC1,CHCOCNC1,CHCCOPD3,ADDEPEV3,CHCKDNY2,HAVARTH4,DIABETE4,DIABAGE4)`                                                                                                                                                                                                                                                              |
| Demographics                                                   | `demographics`                  | `(MARITAL,EDUCA,RENTHOM1,NUMHHOL4,NUMPHON4,CPDEMO1C,VETERAN3,EMPLOY1,CHILDREN,INCOME3,PREGNANT,WEIGHT2,HEIGHT3)`                                                                                                                                                                                                                                                                    |
| Disability                                                     | `disability`                    | `(DEAF,BLIND,DECIDE,DIFFWALK,DIFFDRES,DIFFALON)`                                                                                                                                                                                                                                                                                                                                    |
| Falls                                                          | `falls`                         | `(FALL12MN,FALLINJ5)`                                                                                                                                                                                                                                                                                                                                                               |
| Tobacco Use                                                    | `tobacco_use`                   | `(SMOKE100,SMOKDAY2,USENOW3,ECIGNOW2)`                                                                                                                                                                                                                                                                                                                                              |
| Alcohol Consumption                                            | `alcohol_consumption`           | `(ALCDAY4,AVEDRNK3,DRNK3GE5,MAXDRNKS)`                                                                                                                                                                                                                                                                                                                                              |
| Immunization                                                   | `immunization`                  | `(FLUSHOT7,FLSHTMY3,PNEUVAC4,SHINGLE2)`                                                                                                                                                                                                                                                                                                                                             |
| HIV/AIDS                                                       | `hiv_aids`                      | `(HIVTST7,HIVTSTD3)`                                                                                                                                                                                                                                                                                                                                                                |
| Seatbelt&nbsp;Use&nbsp;and&nbsp;Drinking&nbsp;and&nbsp;Driving | `seatbelt_drink_drive`          | `(SEATBELT,DRNKDRI2)`                                                                                                                                                                                                                                                                                                                                                               |
| Long-term COVID Effects                                        | `long_term_covid`               | `(COVIDPO1,COVIDSM1,COVIDACT)`                                                                                                                                                                                                                                                                                                                                                      |
| Pre-Diabetes                                                   | `pre_diabetes`                  | `(PDIABTS1,PREDIAB2)`                                                                                                                                                                                                                                                                                                                                                               |
| Diabetes                                                       | `diabetes`                      | `(DIABTYPE,INSULIN1,CHKHEMO3,EYEEXAM1,DIABEYE1,DIABEDU1,FEETSORE)`                                                                                                                                                                                                                                                                                                                  |
| Arthritis                                                      | `arthritis`                     | `(ARTHEXER,ARTHEDU,LMTJOIN3,ARTHDIS2,JOINPAI2)`                                                                                                                                                                                                                                                                                                                                     |
| Lung Cancer Screening                                          | `lung_cancer_screen`            | `(LCSFIRST,LCSLAST,LCSNUMCG,LCSCTSC1,LCSSCNCR,LCSCTWHN)`                                                                                                                                                                                                                                                                                                                            |
| Breast and Cervical Cancer Screening                           | `breast_cervical_cancer_screen` | `(HADMAM,HOWLONG,CERVSCRN,CRVCLCNC,CRVCLPAP,CRVCLHPV,HADHYST2)`                                                                                                                                                                                                                                                                                                                     |
| Prostate Cancer Screening                                      | `prostate_cancer_screen`        | `(PSATEST1,PSATIME1,PCPSARS2,PSASUGS1,PCSTALK2)`                                                                                                                                                                                                                                                                                                                                    |
| Colorectal Cancer Screening                                    | `colorectal_cancer_screen`      | `(HADSIGM4,COLNSIGM,COLNTES1,SIGMTES1,LASTSIG4,COLNCNCR,VIRCOLO1,VCLNTES2,SMALSTOL,STOLTEST,STOOLDN2,BLDSTFIT,SDNATES1)`                                                                                                                                                                                                                                                            |
| Cancer Survivorship: Type of Cancer                            | `cancer_survivor_type`          | `(CNCRDIFF,CNCRAGE,CNCRTYP2)`                                                                                                                                                                                                                                                                                                                                                       |
| Cancer&nbsp;Survivorship:&nbsp;Course&nbsp;of&nbsp;Treatment   | `cancer_survivor_treat`         | `(CSRVTRT3,CSRVDOC1,CSRVSUM,CSRVRTRN,CSRVINST,CSRVINSR,CSRVDEIN,CSRVCLIN)`                                                                                                                                                                                                                                                                                                          |
| Cancer Survivorship: Pain Management                           | `cancer_survivor_pain`          | `(CSRVPAIN,CSRVCTL2)`                                                                                                                                                                                                                                                                                                                                                               |
| Indoor Tanning                                                 | `indoor_tan`                | `(INDORTAN)`                                                                                                                                                                                                                                                                                                                                                                        |
| Excess Sun Exposure                                            | `excess_sun_exposure`           | `(NUMBURN3,SUNPRTCT,WKDAYOUT,WKENDOUT)`                                                                                                                                                                                                                                                                                                                                             |
| Cognitive Decline                                              | `cognitive_decline`             | `(CIMEMLO1,CDWORRY,CDDISCU1,CDHOUS1,CDSOCIA1)`                                                                                                                                                                                                                                                                                                                                      |
| Caregiver                                                      | `caregiver`                     | `(CAREGIV1,CRGVREL4,CRGVLNG1,CRGVHRS1,CRGVPRB3,CRGVALZD,CRGVPER1,CRGVHOU1,CRGVEXPT)`                                                                                                                                                                                                                                                                                                |
| Tobacco Cessation                                              | `tabacco_cessation`             | `(LASTSMK2,STOPSMK2)`                                                                                                                                                                                                                                                                                                                                                               |
| Other Tobacco Use                                              | `other_tabacco_use`             | `(MENTCIGS,MENTECIG,HEATTBCO)`                                                                                                                                                                                                                                                                                                                                                      |
| Firearm Safety                                                 | `firearm_safety`                | `(FIREARM5,GUNLOAD,LOADULK2)`                                                                                                                                                                                                                                                                                                                                                       |
| Heart Attack and Stroke                                        | `heart_attack_stroke`           | `(HASYMP1,HASYMP2,HASYMP3,HASYMP4,HASYMP5,HASYMP6,STRSYMP1,STRSYMP2,STRSYMP3,STRSYMP4,STRSYMP5,STRSYMP6,FIRSTAID)`                                                                                                                                                                                                                                                                  |
| Aspirin for CVD Prevention                                     | `aspirin_cvd`                   | `(ASPIRIN)`                                                                                                                                                                                                                                                                                                                                                                         |
| Sexual Orientation                                             | `sexual_orientation`            | `(SOMALE,SOFEMALE)`                                                                                                                                                                                                                                                                                                                                                                 |
| Marijuana Use                                                  | `marijuana_use`                 | `(MARIJAN1,MARJSMOK,MARJEAT,MARJVAPE,MARJDAB,MARJOTHR)`                                                                                                                                                                                                                                                                                                                             |
| Adverse Childhood Experiences                                  | `ace`                           | `(ACEDEPRS,ACEDRINK,ACEDRUGS,ACEPRISN,ACEDIVRC,ACEPUNCH,ACEHURT1,ACESWEAR,ACETOUCH,ACETTHEM,ACEHVSEX,ACEADSAF,ACEADNED)`                                                                                                                                                                                                                                                            |
| Place of Flu Vaccination                                       | `flu_vaccination`               | `(IMFVPLA4)`                                                                                                                                                                                                                                                                                                                                                                        |
| HPV Vaccination                                                | `hpv_vaccination`               | `(HPVADVC4,HPVADSHT)`                                                                                                                                                                                                                                                                                                                                                               |
| Tetanus Diphtheria (TDAP) (Adults)                             | `tdap`                          | `(TETANUS1)`                                                                                                                                                                                                                                                                                                                                                                        |
| COVID Vaccination                                              | `covid_vaccination`             | `(COVIDVA1,COVACGE1,COVIDNU2)`                                                                                                                                                                                                                                                                                                                                                      |
| Social Determinants                                            | `social_determinants`           | `(LSATISFY,EMTSUPRT,SDLONELY,SDHEMPLY,FOODSTMP,SDHFOOD1,SDHBILLS,SDHUTILS,SDHTRNSP,SDHSTRE1)`                                                                                                                                                                                                                                                                                       |
| Reactions to Race                                              | `race_reactions`                | `(RRCLASS3,RRCOGNT2,RRTREAT,RRATWRK2,RRHCARE4,RRPHYSM2)`                                                                                                                                                                                                                                                                                                                            |
| Random Child Selection                                         | `random_child_select`        | `(RCSRLTN2)`                                                                                                                                                                                                                                                                                                                                                               |
| Childhood Asthma Prevalence                                    | `childhood_asthma`              | `(CASTHDX2,CASTHNO2)`                                                                                                                                                                                                                                                                                                                                                               |
| Questionnaire Version                                          | `questionnaire_ver`         | `(QSTVER)`                                                                                                                                                                                                                                                                                                                                                                          |
| Questionnaire Language                                         | `questionnaire_lang`        | `(QSTLANG)`                                                                                                                                                                                                                                                                                                                                                                         |
| Urban Rural                                                    | `urban_rural`                   | `(_METSTAT,_URBSTAT)`                                                                                                                                                                                                                                                                                                                                                               |
| Weighting Variables (1)                                        | `weighting_variables_1`         | `(MSCODE,_STSTR,_STRWT,_RAWRAKE,_WT2RAKE,_IMPRACE)`                                                                                                                                                                                                                                                                                                                                 |
| Child Demographic Variables                                    | `child_demographics`            | `(_CHISPNC,_CRACE1)`                                                                                                                                                                                                                                                                                                                                                                |
| Child Weighting Variables                                      | `child_weighting_variables`     | `(CAGEG,_CLLCPWT)`                                                                                                                                                                                                                                                                                                                                                                  |
| Weighting Variables (2)                                        | `weighting_variables_2`         | `(_DUALUSE,_DUALCOR,_LLCPWT2,_LLCPWT)`                                                                                                                                                                                                                                                                                                                                              |
| Calculated Variables (1)                                       | `calculated_variables_1`        | `(_RFHLTH,_PHYS14D,_MENT14D,_HLTHPL1,_HCVU653,_TOTINDA,METVL12_,METVL22_,MAXVO21_,FC601_,ACTIN13_,ACTIN23_,PADUR1_,PADUR2_,PAFREQ1_,PAFREQ2_,_MINAC12,_MINAC22,STRFREQ_,PAMISS3_,PAMIN13_,PAMIN23_,PA3MIN_,PAVIG13_,PAVIG23_,PA3VIGM_,_PACAT3,_PAINDX3,_PA150R4,_PA300R4,_PA30023,_PASTRNG,_PAREC3,_PASTAE3,_RFHYPE6,_CHOLCH3,_RFCHOL3,_MICHD,_LTASTH1,_CASTHM1,_ASTHMS1,_DRDXAR2)` |
| Calculated Race Variables                                      | `calculated_race_variables`     | `(_MRACE1,_HISPANC,_RACE,_RACEG21,_RACEGR3,_RACEPRV)`                                                                                                                                                                                                                                                                                                                               |
| Calculated Variables (2)                                       | `calculated_variables_2`        | `(_SEX,_AGEG5YR,_AGE65YR,_AGE80,_AGE_G,HTIN4,HTM4,WTKG3,_BMI5,_BMI5CAT,_RFBMI5,_CHLDCNT,_EDUCAG,_INCOMG1,_SMOKER3,_RFSMOK3,_CURECI2,DRNKANY6,DROCDY4_,_RFBING6,_DRNKWK2,_RFDRHV8,_FLSHOT7,_PNEUMO3,_AIDTST4,_RFSEAT2,_RFSEAT3,_DRNKDRV)`                                                                                                                                            |


---

## BRFSS 2023 Variable Layout 

| Starting Column  | Variable Name  | Field Length |
|------------------|----------------|--------------|
|               1  | _STATE         |            2 |
|              17  | FMONTH         |            2 |
|              19  | IDATE          |            8 |
|              19  | IMONTH         |            2 |
|              21  | IDAY           |            2 |
|              23  | IYEAR          |            4 |
|              32  | DISPCODE       |            4 |
|              36  | SEQNO          |           10 |
|              36  | _PSU           |           10 |
|              63  | CTELENM1       |            1 |
|              64  | PVTRESD1       |            1 |
|              65  | COLGHOUS       |            1 |
|              66  | STATERE1       |            1 |
|              67  | CELPHON1       |            1 |
|              68  | LADULT1        |            1 |
|              69  | NUMADULT       |            2 |
|              71  | RESPSLC1       |            1 |
|              72  | LANDSEX2       |            1 |
|              74  | SAFETIME       |            1 |
|              75  | CTELNUM1       |            1 |
|              76  | CELLFON5       |            1 |
|              77  | CADULT1        |            1 |
|              78  | CELLSEX2       |            1 |
|              80  | PVTRESD3       |            1 |
|              81  | CCLGHOUS       |            1 |
|              82  | CSTATE1        |            1 |
|              85  | LANDLINE       |            1 |
|              86  | HHADULT        |            2 |
|              88  | SEXVAR         |            1 |
|             101  | GENHLTH        |            1 |
|             102  | PHYSHLTH       |            2 |
|             104  | MENTHLTH       |            2 |
|             106  | POORHLTH       |            2 |
|             108  | PRIMINS1       |            2 |
|             110  | PERSDOC3       |            1 |
|             111  | MEDCOST1       |            1 |
|             112  | CHECKUP1       |            1 |
|             113  | EXERANY2       |            1 |
|             114  | EXRACT12       |            2 |
|             116  | EXEROFT1       |            3 |
|             119  | EXERHMM1       |            3 |
|             122  | EXRACT22       |            2 |
|             124  | EXEROFT2       |            3 |
|             127  | EXERHMM2       |            3 |
|             130  | STRENGTH       |            3 |
|             133  | BPHIGH6        |            1 |
|             134  | BPMEDS1        |            1 |
|             135  | CHOLCHK3       |            1 |
|             136  | TOLDHI3        |            1 |
|             137  | CHOLMED3       |            1 |
|             138  | CVDINFR4       |            1 |
|             139  | CVDCRHD4       |            1 |
|             140  | CVDSTRK3       |            1 |
|             141  | ASTHMA3        |            1 |
|             142  | ASTHNOW        |            1 |
|             143  | CHCSCNC1       |            1 |
|             144  | CHCOCNC1       |            1 |
|             145  | CHCCOPD3       |            1 |
|             146  | ADDEPEV3       |            1 |
|             147  | CHCKDNY2       |            1 |
|             148  | HAVARTH4       |            1 |
|             149  | DIABETE4       |            1 |
|             150  | DIABAGE4       |            2 |
|             186  | MARITAL        |            1 |
|             187  | EDUCA          |            1 |
|             188  | RENTHOM1       |            1 |
|             197  | NUMHHOL4       |            1 |
|             198  | NUMPHON4       |            1 |
|             199  | CPDEMO1C       |            1 |
|             200  | VETERAN3       |            1 |
|             201  | EMPLOY1        |            1 |
|             202  | CHILDREN       |            2 |
|             204  | INCOME3        |            2 |
|             206  | PREGNANT       |            1 |
|             207  | WEIGHT2        |            4 |
|             211  | HEIGHT3        |            4 |
|             215  | DEAF           |            1 |
|             216  | BLIND          |            1 |
|             217  | DECIDE         |            1 |
|             218  | DIFFWALK       |            1 |
|             219  | DIFFDRES       |            1 |
|             220  | DIFFALON       |            1 |
|             221  | FALL12MN       |            2 |
|             223  | FALLINJ5       |            2 |
|             225  | SMOKE100       |            1 |
|             226  | SMOKDAY2       |            1 |
|             227  | USENOW3        |            1 |
|             228  | ECIGNOW2       |            1 |
|             229  | ALCDAY4        |            3 |
|             232  | AVEDRNK3       |            2 |
|             234  | DRNK3GE5       |            2 |
|             236  | MAXDRNKS       |            2 |
|             238  | FLUSHOT7       |            1 |
|             239  | FLSHTMY3       |            6 |
|             245  | PNEUVAC4       |            1 |
|             246  | SHINGLE2       |            1 |
|             247  | HIVTST7        |            1 |
|             248  | HIVTSTD3       |            6 |
|             254  | SEATBELT       |            1 |
|             255  | DRNKDRI2       |            2 |
|             257  | COVIDPO1       |            1 |
|             258  | COVIDSM1       |            1 |
|             259  | COVIDACT       |            1 |
|             260  | PDIABTS1       |            1 |
|             261  | PREDIAB2       |            1 |
|             262  | DIABTYPE       |            1 |
|             263  | INSULIN1       |            1 |
|             264  | CHKHEMO3       |            2 |
|             266  | EYEEXAM1       |            1 |
|             267  | DIABEYE1       |            1 |
|             268  | DIABEDU1       |            1 |
|             269  | FEETSORE       |            1 |
|             270  | ARTHEXER       |            1 |
|             271  | ARTHEDU        |            1 |
|             272  | LMTJOIN3       |            1 |
|             273  | ARTHDIS2       |            1 |
|             274  | JOINPAI2       |            2 |
|             276  | LCSFIRST       |            3 |
|             279  | LCSLAST        |            3 |
|             282  | LCSNUMCG       |            3 |
|             285  | LCSCTSC1       |            1 |
|             286  | LCSSCNCR       |            1 |
|             287  | LCSCTWHN       |            1 |
|             288  | HADMAM         |            1 |
|             289  | HOWLONG        |            1 |
|             290  | CERVSCRN       |            1 |
|             291  | CRVCLCNC       |            1 |
|             292  | CRVCLPAP       |            1 |
|             293  | CRVCLHPV       |            1 |
|             294  | HADHYST2       |            1 |
|             295  | PSATEST1       |            1 |
|             296  | PSATIME1       |            1 |
|             297  | PCPSARS2       |            1 |
|             298  | PSASUGS1       |            1 |
|             299  | PCSTALK2       |            1 |
|             300  | HADSIGM4       |            1 |
|             301  | COLNSIGM       |            1 |
|             302  | COLNTES1       |            1 |
|             303  | SIGMTES1       |            1 |
|             304  | LASTSIG4       |            1 |
|             305  | COLNCNCR       |            1 |
|             306  | VIRCOLO1       |            1 |
|             307  | VCLNTES2       |            1 |
|             308  | SMALSTOL       |            1 |
|             309  | STOLTEST       |            1 |
|             310  | STOOLDN2       |            1 |
|             311  | BLDSTFIT       |            1 |
|             312  | SDNATES1       |            1 |
|             313  | CNCRDIFF       |            1 |
|             314  | CNCRAGE        |            2 |
|             316  | CNCRTYP2       |            2 |
|             318  | CSRVTRT3       |            1 |
|             319  | CSRVDOC1       |            2 |
|             321  | CSRVSUM        |            1 |
|             322  | CSRVRTRN       |            1 |
|             323  | CSRVINST       |            1 |
|             324  | CSRVINSR       |            1 |
|             325  | CSRVDEIN       |            1 |
|             326  | CSRVCLIN       |            1 |
|             327  | CSRVPAIN       |            1 |
|             328  | CSRVCTL2       |            1 |
|             329  | INDORTAN       |            3 |
|             332  | NUMBURN3       |            3 |
|             335  | SUNPRTCT       |            1 |
|             336  | WKDAYOUT       |            2 |
|             338  | WKENDOUT       |            2 |
|             340  | CIMEMLO1       |            1 |
|             341  | CDWORRY        |            1 |
|             342  | CDDISCU1       |            1 |
|             343  | CDHOUS1        |            1 |
|             344  | CDSOCIA1       |            1 |
|             345  | CAREGIV1       |            1 |
|             346  | CRGVREL4       |            2 |
|             348  | CRGVLNG1       |            1 |
|             349  | CRGVHRS1       |            1 |
|             350  | CRGVPRB3       |            2 |
|             352  | CRGVALZD       |            1 |
|             353  | CRGVPER1       |            1 |
|             354  | CRGVHOU1       |            1 |
|             355  | CRGVEXPT       |            1 |
|             356  | LASTSMK2       |            2 |
|             358  | STOPSMK2       |            1 |
|             359  | MENTCIGS       |            1 |
|             360  | MENTECIG       |            1 |
|             361  | HEATTBCO       |            1 |
|             362  | FIREARM5       |            1 |
|             363  | GUNLOAD        |            1 |
|             364  | LOADULK2       |            1 |
|             565  | HASYMP1        |            1 |
|             566  | HASYMP2        |            1 |
|             567  | HASYMP3        |            1 |
|             568  | HASYMP4        |            1 |
|             569  | HASYMP5        |            1 |
|             570  | HASYMP6        |            1 |
|             571  | STRSYMP1       |            1 |
|             572  | STRSYMP2       |            1 |
|             573  | STRSYMP3       |            1 |
|             574  | STRSYMP4       |            1 |
|             575  | STRSYMP5       |            1 |
|             576  | STRSYMP6       |            1 |
|             577  | FIRSTAID       |            1 |
|             578  | ASPIRIN        |            1 |
|             580  | SOMALE         |            1 |
|             581  | SOFEMALE       |            1 |
|             583  | MARIJAN1       |            2 |
|             585  | MARJSMOK       |            1 |
|             586  | MARJEAT        |            1 |
|             587  | MARJVAPE       |            1 |
|             588  | MARJDAB        |            1 |
|             589  | MARJOTHR       |            1 |
|             590  | USEMRJN4       |            1 |
|             591  | ACEDEPRS       |            1 |
|             592  | ACEDRINK       |            1 |
|             593  | ACEDRUGS       |            1 |
|             594  | ACEPRISN       |            1 |
|             595  | ACEDIVRC       |            1 |
|             596  | ACEPUNCH       |            1 |
|             597  | ACEHURT1       |            1 |
|             598  | ACESWEAR       |            1 |
|             599  | ACETOUCH       |            1 |
|             600  | ACETTHEM       |            1 |
|             601  | ACEHVSEX       |            1 |
|             602  | ACEADSAF       |            1 |
|             603  | ACEADNED       |            1 |
|             604  | IMFVPLA4       |            2 |
|             606  | HPVADVC4       |            1 |
|             607  | HPVADSHT       |            2 |
|             609  | TETANUS1       |            1 |
|             610  | COVIDVA1       |            1 |
|             611  | COVACGE1       |            1 |
|             612  | COVIDNU2       |            1 |
|             613  | LSATISFY       |            1 |
|             614  | EMTSUPRT       |            1 |
|             615  | SDLONELY       |            1 |
|             616  | SDHEMPLY       |            1 |
|             617  | FOODSTMP       |            1 |
|             618  | SDHFOOD1       |            1 |
|             619  | SDHBILLS       |            1 |
|             620  | SDHUTILS       |            1 |
|             621  | SDHTRNSP       |            1 |
|             622  | SDHSTRE1       |            1 |
|             623  | RRCLASS3       |            2 |
|             625  | RRCOGNT2       |            1 |
|             626  | RRTREAT        |            1 |
|             627  | RRATWRK2       |            1 |
|             628  | RRHCARE4       |            1 |
|             629  | RRPHYSM2       |            1 |
|             636  | RCSBORG1       |            1 |
|             670  | RCSRLTN2       |            1 |
|             671  | CASTHDX2       |            1 |
|             672  | CASTHNO2       |            1 |
|             677  | QSTVER         |            2 |
|             679  | QSTLANG        |            2 |
|            1402  | _METSTAT       |            1 |
|            1403  | _URBSTAT       |            1 |
|            1409  | MSCODE         |            1 |
|            1410  | _STSTR         |            6 |
|            1416  | _STRWT         |           10 |
|            1446  | _RAWRAKE       |           10 |
|            1456  | _WT2RAKE       |           10 |
|            1471  | _IMPRACE       |            2 |
|            1482  | _CHISPNC       |            1 |
|            1539  | _CRACE1        |            2 |
|            1567  | CAGEG          |            1 |
|            1583  | _CLLCPWT       |           10 |
|            1680  | _DUALUSE       |            1 |
|            1681  | _DUALCOR       |           10 |
|            1691  | _LLCPWT2       |           10 |
|            1749  | _LLCPWT        |           10 |
|            1897  | _RFHLTH        |            1 |
|            1898  | _PHYS14D       |            1 |
|            1899  | _MENT14D       |            1 |
|            1900  | _HLTHPL1       |            1 |
|            1901  | _HCVU653       |            1 |
|            1902  | _TOTINDA       |            1 |
|            1903  | METVL12_       |            3 |
|            1906  | METVL22_       |            3 |
|            1909  | MAXVO21_       |            5 |
|            1914  | FC601_         |            5 |
|            1919  | ACTIN13_       |            1 |
|            1920  | ACTIN23_       |            1 |
|            1921  | PADUR1_        |            3 |
|            1924  | PADUR2_        |            3 |
|            1927  | PAFREQ1_       |            5 |
|            1932  | PAFREQ2_       |            5 |
|            1937  | _MINAC12       |            5 |
|            1942  | _MINAC22       |            5 |
|            1947  | STRFREQ_       |            5 |
|            1952  | PAMISS3_       |            1 |
|            1953  | PAMIN13_       |            5 |
|            1958  | PAMIN23_       |            5 |
|            1963  | PA3MIN_        |            5 |
|            1968  | PAVIG13_       |            5 |
|            1973  | PAVIG23_       |            5 |
|            1978  | PA3VIGM_       |            5 |
|            1983  | _PACAT3        |            1 |
|            1984  | _PAINDX3       |            1 |
|            1985  | _PA150R4       |            1 |
|            1986  | _PA300R4       |            1 |
|            1987  | _PA30023       |            1 |
|            1988  | _PASTRNG       |            1 |
|            1989  | _PAREC3        |            1 |
|            1990  | _PASTAE3       |            1 |
|            1991  | _RFHYPE6       |            1 |
|            1992  | _CHOLCH3       |            1 |
|            1993  | _RFCHOL3       |            1 |
|            1994  | _MICHD         |            1 |
|            1995  | _LTASTH1       |            1 |
|            1996  | _CASTHM1       |            1 |
|            1997  | _ASTHMS1       |            1 |
|            1998  | _DRDXAR2       |            1 |
|            2055  | _MRACE1        |            2 |
|            2059  | _HISPANC       |            1 |
|            2060  | _RACE          |            1 |
|            2061  | _RACEG21       |            1 |
|            2062  | _RACEGR3       |            1 |
|            2063  | _RACEPRV       |            1 |
|            2064  | _SEX           |            1 |
|            2065  | _AGEG5YR       |            2 |
|            2067  | _AGE65YR       |            1 |
|            2068  | _AGE80         |            2 |
|            2070  | _AGE_G         |            1 |
|            2071  | HTIN4          |            3 |
|            2074  | HTM4           |            3 |
|            2077  | WTKG3          |            5 |
|            2082  | _BMI5          |            4 |
|            2086  | _BMI5CAT       |            1 |
|            2087  | _RFBMI5        |            1 |
|            2088  | _CHLDCNT       |            1 |
|            2089  | _EDUCAG        |            1 |
|            2090  | _INCOMG1       |            1 |
|            2091  | _SMOKER3       |            1 |
|            2092  | _RFSMOK3       |            1 |
|            2093  | _CURECI2       |            1 |
|            2094  | DRNKANY6       |            1 |
|            2095  | DROCDY4_       |            3 |
|            2098  | _RFBING6       |            1 |
|            2099  | _DRNKWK2       |            5 |
|            2104  | _RFDRHV8       |            1 |
|            2105  | _FLSHOT7       |            1 |
|            2106  | _PNEUMO3       |            1 |
|            2107  | _AIDTST4       |            1 |
|            2108  | _RFSEAT2       |            1 |
|            2109  | _RFSEAT3       |            1 |
|            2110  | _DRNKDRV       |            1 |
