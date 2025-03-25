CREATE TABLE IF NOT EXISTS record_ident (
  fips INT,
  file_month INT,
  interview_date VARCHAR(255),
  interview_month VARCHAR(255),
  interview_day VARCHAR(255),
  interview_year VARCHAR(255),
  final_dis INT,
  annual_seq VARCHAR(255),
  psu INT
)

COPY brfss_2023(_STATE,FMONTH,IDATE,IMONTH,IDAY,IYEAR,DISCOPE,SEQNO,_PSU)
FROM '/docker-entrypoint-initdb.d/'
DELIMITER ','
CSV HEADER;

CREATE TABLE IF NOT EXISTS land_line_intro (
  
)

COPY brfss_2023(_STATE,FMONTH,IDATE,IMONTH,IDAY,IYEAR,DISCOPE,SEQNO,_PSU)
FROM '/docker-entrypoint-initdb.d/'
DELIMITER ','
CSV HEADER;