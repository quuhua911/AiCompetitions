-- CHNAGELOH: 
--      18.3.7 caijun init.
--      <= ycc_sales_caijun0313_feature_basewindow_add 
--      => stuff_ycc_sales_caijun0313_feature_min_2m3m6m12m_add
--      
DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_1_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_1_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,

1sub2*sale_last1M+2sub1*sale_last2M as min2m,1sub2*sale_last1M+2sub1*sale_last2M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M
,CASE 
     WHEN sale_last1M - sale_last2M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN sale_last1M - sale_last2M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from ycc_sales_caijun0313_feature_basewindow_add) a;


DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_2_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_2_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m

,1sub2*mintotal+2sub1*sale_last3M as min3m
,1sub2*mintotal+2sub1*sale_last3M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m
,CASE 
     WHEN mintotal - sale_last3M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last3M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_1_min_2m3m6m12m) b ;


DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_3_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_3_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m

--,1sub2*mintotal+2sub1*sale_last3M as min3m
,1sub2*mintotal+2sub1*sale_last4M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m
,CASE 
     WHEN mintotal - sale_last4M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last4M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_2_min_2m3m6m12m) c ;

DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_4_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_4_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m

--,1sub2*mintotal+2sub1*sale_last3M as min3m
,1sub2*mintotal+2sub1*sale_last5M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m
,CASE 
     WHEN mintotal - sale_last5M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last5M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_3_min_2m3m6m12m) d   ;



DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_5_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_5_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m

,1sub2*mintotal+2sub1*sale_last6M as min6m
,1sub2*mintotal+2sub1*sale_last6M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m
,CASE 
     WHEN mintotal - sale_last6M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last6M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_4_min_2m3m6m12m) e ;



DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_6_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_6_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m,min6m

--,1sub2*mintotal+2sub1*sale_last6M as min6m
,1sub2*mintotal+2sub1*sale_last7M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m,min6m
,CASE 
     WHEN mintotal - sale_last7M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last7M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_5_min_2m3m6m12m) f  ;


DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_7_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_7_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m,min6m

--,1sub2*mintotal+2sub1*sale_last6M as min6m
,1sub2*mintotal+2sub1*sale_last8M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m,min6m
,CASE 
     WHEN mintotal - sale_last8M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last8M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_6_min_2m3m6m12m) g ;


DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_8_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_8_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m,min6m

--,1sub2*mintotal+2sub1*sale_last6M as min6m
,1sub2*mintotal+2sub1*sale_last9M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m,min6m
,CASE 
     WHEN mintotal - sale_last9M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last9M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_7_min_2m3m6m12m) h  ;


DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_9_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_9_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m,min6m

--,1sub2*mintotal+2sub1*sale_last6M as min6m
,1sub2*mintotal+2sub1*sale_last10M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m,min6m
,CASE 
     WHEN mintotal - sale_last10M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last10M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_8_min_2m3m6m12m) i   ;



DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_10_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_10_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m,min6m

--,1sub2*mintotal+2sub1*sale_last6M as min6m
,1sub2*mintotal+2sub1*sale_last11M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m,min6m
,CASE 
     WHEN mintotal - sale_last11M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last11M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_9_min_2m3m6m12m) j  ;

DROP TABLE IF EXISTS stuff_ycc_sales_caijun0307_feature_11_min_2m3m6m12m;
CREATE TABLE stuff_ycc_sales_caijun0307_feature_11_min_2m3m6m12m 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,min2m,min3m,min6m

,1sub2*mintotal+2sub1*sale_last12M as min12m
,1sub2*mintotal+2sub1*sale_last12M as mintotal

from
(select sale_date,province_id,city_id,class_id,sale_quantity,
sale_last1M,sale_last2M,sale_last3M,sale_last4M,sale_last5M,sale_last6M,
sale_last7M,sale_last8M,sale_last9M,sale_last10M,sale_last11M,sale_last12M,mintotal,min2m,min3m,min6m
,CASE 
     WHEN mintotal - sale_last12M <= 0 
         THEN 1
     ELSE 0
 END AS 1sub2
,CASE 
     WHEN mintotal - sale_last12M <= 0 
         THEN 0
     ELSE 1
 END AS 2sub1
from stuff_ycc_sales_caijun0307_feature_10_min_2m3m6m12m) k   ;

DROP TABLE IF EXISTS stuff_ycc_sales_caijun0313_feature_min_2m3m6m12m_add;
CREATE TABLE stuff_ycc_sales_caijun0313_feature_min_2m3m6m12m_add 
AS
select sale_date,province_id,city_id,class_id,sale_quantity,min2m,min3m,min6m,min12m
from stuff_ycc_sales_caijun0307_feature_11_min_2m3m6m12m;