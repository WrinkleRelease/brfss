# CSV to SQL Workflow

## Cut CSV
```shell
cut -d ',' -f 19,20,21,22,23,24,25,26,27,28 ~/repos/brfss/brfss_2023/data/brfss_2023.csv > 03_cell_phone_introduction.csv
```

## Use psql

```shell
# first 
docker ps

# second
docker exec -it brfss_2023 psql -U admin -d brfss_2023

# third
\copy table_name ("columns","columns") from '/docker-entrypoint-initdb.d/file_name.csv' delimiter ',' CSV
HEADER;
```

## Back Up & Restore

```shell
# backup sql db
docker exec -t brfss_2023 pg_dump -U admin brfss_2023 > brfss_2023_backup.sql

# restore db
docker exec -i brfss_2023 psql -U admin brfss_2023 < brfss_2023_backup.sql
```

```
record_identification     
     1  "_state"
     2  "fmonth"
     3  "idate"
     4  "imonth"
     5  "iday"
     6  "iyear"
     7  "dispcode"
     8  "seqno"
     9  "_psu"

land_line_introduction
    10  "ctelenm1"
    11  "pvtresd1"
    12  "colghous"
    13  "statere1"
    14  "celphon1"
    15  "ladult1"
    16  "numadult"
    17  "respslc1"
    18  "landsex2"

cell_phone_introduction
    19  "safetime"
    20  "ctelnum1"
    21  "cellfon5"
    22  "cadult1"
    23  "cellsex2"
    24  "pvtresd3"
    25  "cclghous"
    26  "cstate1"
    27  "landline"
    28  "hhadult"

respondent_sex
    29  "sexvar"

health_status
    30  "genhlth"

healthy_days
    31  "physhlth"
    32  "menthlth"
    33  "poorhlth"

health_care_access
    34  "primins1"
    35  "persdoc3"
    36  "medcost1"
    37  "checkup1"

exercise
    38  "exerany2"
    39  "exract12"
    40  "exeroft1"
    41  "exerhmm1"
    42  "exract22"
    43  "exeroft2"
    44  "exerhmm2"
    45  "strength"

hypertension
    46  "bphigh6"
    47  "bpmeds1"

cholesterol
    48  "cholchk3"
    49  "toldhi3"
    50  "cholmed3"

chronic_health_conditions
    51  "cvdinfr4"
    52  "cvdcrhd4"
    53  "cvdstrk3"
    54  "asthma3"
    55  "asthnow"
    56  "chcscnc1"
    57  "chcocnc1"
    58  "chccopd3"
    59  "addepev3"
    60  "chckdny2"
    61  "havarth4"
    62  "diabete4"
    63  "diabage4"

demographics
    64  "marital"
    65  "educa"
    66  "renthom1"
    67  "numhhol4"
    68  "numphon4"
    69  "cpdemo1c"
    70  "veteran3"
    71  "employ1"
    72  "children"
    73  "income3"
    74  "pregnant"
    75  "weight2"
    76  "height3"

disability
    77  "deaf"
    78  "blind"
    79  "decide"
    80  "diffwalk"
    81  "diffdres"
    82  "diffalon"

falls
    83  "fall12mn"
    84  "fallinj5"

tabacco_use
    85  "smoke100"
    86  "smokday2"
    87  "usenow3"
    88  "ecignow2"

alcohol_use
    89  "alcday4"
    90  "avedrnk3"
    91  "drnk3ge5"
    92  "maxdrnks"

immunization
    93  "flushot7"
    94  "flshtmy3"
    95  "pneuvac4"
    96  "shingle2"

hiv_aids
    97  "hivtst7"
    98  "hivtstd3"

seatbelt_drink_drive
    99  "seatbelt"
   100  "drnkdri2"

long_term_covid
   101  "covidpo1"
   102  "covidsm1"
   103  "covidact"

pre_diabetes
   104  "pdiabts1"
   105  "prediab2"

diabetes
   106  "diabtype"
   107  "insulin1"
   108  "chkhemo3"
   109  "eyeexam1"
   110  "diabeye1"
   111  "diabedu1"
   112  "feetsore"

arthritis
   113  "arthexer"
   114  "arthedu"
   115  "lmtjoin3"
   116  "arthdis2"
   117  "joinpai2"

lung_cancer_screen
   118  "lcsfirst"
   119  "lcslast"
   120  "lcsnumcg"
   121  "lcsctsc1"
   122  "lcsscncr"
   123  "lcsctwhn"

breast_cervical_cancer_screen
   124  "hadmam"
   125  "howlong"
   126  "cervscrn"
   127  "crvclcnc"
   128  "crvclpap"
   129  "crvclhpv"
   130  "hadhyst2"

prostate_cancer_screen
   131  "psatest1"
   132  "psatime1"
   133  "pcpsars2"
   134  "psasugs1"
   135  "pcstalk2"

colorectal_cancer_screen
   136  "hadsigm4"
   137  "colnsigm"
   138  "colntes1"
   139  "sigmtes1"
   140  "lastsig4"
   141  "colncncr"
   142  "vircolo1"
   143  "vclntes2"
   144  "smalstol"
   145  "stoltest"
   146  "stooldn2"
   147  "bldstfit"
   148  "sdnates1"

cancer_survivor_type
   149  "cncrdiff"
   150  "cncrage"
   151  "cncrtyp2"

cancer_survivor_treat
   152  "csrvtrt3"
   153  "csrvdoc1"
   154  "csrvsum"
   155  "csrvrtrn"
   156  "csrvinst"
   157  "csrvinsr"
   158  "csrvdein"
   159  "csrvclin"

cancer_survivor_pain
   160  "csrvpain"
   161  "csrvctl2"

indoor_tan
   162  "indortan"

excess_sun_exposure
   163  "numburn3"
   164  "sunprtct"
   165  "wkdayout"
   166  "wkendout"

cognitive_decline
   167  "cimemlo1"
   168  "cdworry"
   169  "cddiscu1"
   170  "cdhous1"
   171  "cdsocia1"

caregiver
   172  "caregiv1"
   173  "crgvrel4"
   174  "crgvlng1"
   175  "crgvhrs1"
   176  "crgvprb3"
   177  "crgvalzd"
   178  "crgvper1"
   179  "crgvhou1"
   180  "crgvexpt"

tabacco_cessation
   181  "lastsmk2"
   182  "stopsmk2"

other_tabacco_use
   183  "mentcigs"
   184  "mentecig"
   185  "heattbco"

firearm_safety
   186  "firearm5"
   187  "gunload"
   188  "loadulk2"

heart_attack_stroke
   189  "hasymp1"
   190  "hasymp2"
   191  "hasymp3"
   192  "hasymp4"
   193  "hasymp5"
   194  "hasymp6"
   195  "strsymp1"
   196  "strsymp2"
   197  "strsymp3"
   198  "strsymp4"
   199  "strsymp5"
   200  "strsymp6"
   201  "firstaid"

aspirin_cvd
   202  "aspirin"

sexual_orientation
   203  "somale"
   204  "sofemale"

marijuana_use
   205  "marijan1"
   206  "marjsmok"
   207  "marjeat"
   208  "marjvape"
   209  "marjdab"
   210  "marjothr"

ace
   211  "acedeprs"
   212  "acedrink"
   213  "acedrugs"
   214  "aceprisn"
   215  "acedivrc"
   216  "acepunch"
   217  "acehurt1"
   218  "aceswear"
   219  "acetouch"
   220  "acetthem"
   221  "acehvsex"
   222  "aceadsaf"
   223  "aceadned"

flu_vaccination
   224  "imfvpla4"

hpv_vaccination
   225  "hpvadvc4"
   226  "hpvadsht"

tdap
   227  "tetanus1"

covid_vaccination
   228  "covidva1"
   229  "covacge1"
   230  "covidnu2"

social_determinants
   231  "lsatisfy"
   232  "emtsuprt"
   233  "sdlonely"
   234  "sdhemply"
   235  "foodstmp"
   236  "sdhfood1"
   237  "sdhbills"
   238  "sdhutils"
   239  "sdhtrnsp"
   240  "sdhstre1"

race_reactions
   241  "rrclass3"
   242  "rrcognt2"
   243  "rrtreat"
   244  "rratwrk2"
   245  "rrhcare4"
   246  "rrphysm2"

random_child_select
   247  "rcsrltn2"

childhood_asthma
   248  "casthdx2"
   249  "casthno2"

questionnaire_ver
   250  "qstver"

questionnaire_lang
   251  "qstlang"

urban_rural
   252  "_metstat"
   253  "_urbstat"

weighting_variables_1
   254  "mscode"
   255  "_ststr"
   256  "_strwt"
   257  "_rawrake"
   258  "_wt2rake"
   259  "_imprace"

child_demographics
   260  "_chispnc"
   261  "_crace1"

child_weighting_variables
   262  "cageg"
   263  "_cllcpwt"

weighting_variables_2
   264  "_dualuse"
   265  "_dualcor"
   266  "_llcpwt2"
   267  "_llcpwt"

calculated_variables_1
   268  "_rfhlth"
   269  "_phys14d"
   270  "_ment14d"
   271  "_hlthpl1"
   272  "_hcvu653"
   273  "_totinda"
   274  "metvl12_"
   275  "metvl22_"
   276  "maxvo21_"
   277  "fc601_"
   278  "actin13_"
   279  "actin23_"
   280  "padur1_"
   281  "padur2_"
   282  "pafreq1_"
   283  "pafreq2_"
   284  "_minac12"
   285  "_minac22"
   286  "strfreq_"
   287  "pamiss3_"
   288  "pamin13_"
   289  "pamin23_"
   290  "pa3min_"
   291  "pavig13_"
   292  "pavig23_"
   293  "pa3vigm_"
   294  "_pacat3"
   295  "_paindx3"
   296  "_pa150r4"
   297  "_pa300r4"
   298  "_pa30023"
   299  "_pastrng"
   300  "_parec3"
   301  "_pastae3"
   302  "_rfhype6"
   303  "_cholch3"
   304  "_rfchol3"
   305  "_michd"
   306  "_ltasth1"
   307  "_casthm1"
   308  "_asthms1"
   309  "_drdxar2"

calculated_race_variables
   310  "_mrace1"
   311  "_hispanc"
   312  "_race"
   313  "_raceg21"
   314  "_racegr3"
   315  "_raceprv"

calculated_variables_2
   316  "_sex"
   317  "_ageg5yr"
   318  "_age65yr"
   319  "_age80"
   320  "_age_g"
   321  "htin4"
   322  "htm4"
   323  "wtkg3"
   324  "_bmi5"
   325  "_bmi5cat"
   326  "_rfbmi5"
   327  "_chldcnt"
   328  "_educag"
   329  "_incomg1"
   330  "_smoker3"
   331  "_rfsmok3"
   332  "_cureci2"
   333  "drnkany6"
   334  "drocdy4_"
   335  "_rfbing6"
   336  "_drnkwk2"
   337  "_rfdrhv8"
   338  "_flshot7"
   339  "_pneumo3"
   340  "_aidtst4"
   341  "_rfseat2"
   342  "_rfseat3"
   343  "_drnkdrv"
```