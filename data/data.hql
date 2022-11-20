CREATE DATABASE IF NOT EXISTS hivedb;
USE hivedb;
CREATE EXTERNAL TABLE IF NOT EXISTS person (
  id int,
  name string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE LOCATION 'hdfs://namenode:8020/user/hive/warehouse/hivedb.db/person';
CREATE EXTERNAL TABLE IF NOT EXISTS movie (
  id int,
  title string,
  country string,
  year int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE LOCATION 'hdfs://namenode:8020/user/hive/warehouse/hivedb.db/movie';
CREATE EXTERNAL TABLE IF NOT EXISTS role (
  personId int,
  movieId int,
  role string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE LOCATION 'hdfs://namenode:8020/user/hive/warehouse/hivedb.db/role';