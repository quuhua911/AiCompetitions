-- ycmecon_econ3stats_1801
-- 提取合理数值表
-- <= bitb:raw/_macroeconomic/3种数值-1801.csv
-- => ycmecon_econ3stats_1801
-- 
-- 如果存在就嗯哼
DROP TABLE IF EXISTS 
    ycmecon_econ3stats_1801
;
-- 
-- 就地创建
CREATE TABLE IF NOT EXISTS 
    ycmecon_econ3stats_1801 (month string 
         ,1801a bigint
,1801b bigint
,1801c bigint
        )
;
-- 
-- 逐一嗯哼
INSERT INTO TABLE 
    ycmecon_econ3stats_1801 
VALUES 
     ('201801',244053.9,398613.3,76731.0)
,('201712',250458.9,420037.7,67605.0)
,('201711',257606.8,471490.3,70250.0)
,('201710',230970.3,374771.5,72275.0)
,('201709',259242.9,360605.6,71404.0)
,('201708',270833.7,326398.6,72991.0)
,('201707',277129.6,320498.9,73679.0)
,('201706',281765.8,340453.2,72906.0)
,('201705',277859.1,334061.8,74415.0)
,('201704',267194.1,298237.0,72398.0)
,('201703',301088.5,303493.7,72816.0)
,('201702',228582.1,234430.1,64404.0)
,('201701',238452.4,221113.6,70803.0)
,('201612',312852.6,339540.0,69240.5)
,('201611',306660.2,376447.9,67678.0)
,('201610',288693.6,302614.2,68122.0)
,('201609',328609.7,282685.9,66741.0)
,('201608',358579.2,252296.1,68356.0)
,('201607',350667.2,249640.6,67781.0)
,('201606',342524.2,257633.1,68000.0)
,('201605',363143.5,253108.3,68768.0)
,('201604',364370.3,237303.2,67800.0)
,('201603',391588.1,236922.2,67096.0)
,('201602',245857.5,124618.3,59341.0)
,('201601',354596.3,215505.3,67573.0)
,('201512',403835.7,241828.0,65349.5)
,('201511',389708.4,260537.8,63126.0)
,('201510',364323.5,194064.8,63675.0)
,('201509',384531.7,191336.9,64264.0)
,('201508',401297.0,169020.3,66263.0)
,('201507',423478.4,163988.3,66444.0)
,('201506',458988.9,164486.7,67510.0)
,('201505',418758.8,161002.5,67015.0)
,('201504',406854.5,151483.9,65455.0)
,('201503',426893.3,142537.8,65080.0)
,('201502',298184.3,81779.5,57456.0)
,('201501',443061.3,144570.4,68101.0)
,('201412',454616.1,163681.1,66160.5)
,('201411',432039.0,164616.5,64220.0)
,('201410',429965.2,128997.1,64670.0)
,('201409',448216.7,122992.0,63346.0)
,('201408',440458.3,114050.7,65482.0)
,('201407',469085.5,111245.1,63394.0)
,('201406',448731.1,112926.3,64613.0)
,('201405',462619.9,111634.7,64394.0)
,('201404',469433.9,105417.5,65896.0)
,('201403',477247.6,102528.2,66378.0)
,('201402',368000.8,68886.2,55610.0)
,('201401',427442.1,88950.0,65186.0)
,('201312',496858.8,106945.3,62892.5)
,('201311',480420.0,108703.4,60599.0)
,('201310',469755.2,85303.5,61183.0)
,('201309',494599.1,83637.1,61407.0)
,('201308',504003.6,75266.7,61668.0)
,('201307',527806.3,74802.1,61409.0)
,('201306',493406.0,72154.1,60837.0)
,('201305',521225.8,74178.7,62187.0)
,('201304',512593.2,66249.4,60733.0)
,('201303',523631.3,67043.8,60990.0)
,('201302',353459.2,35473.1,52331.0)
,('201301',527629.7,68917.7,60001.0)
,('201212',420223.6,65698.4,58110.5)
,('201211',420326.2,67126.6,56220.0)
,('201210',405887.4,52421.3,57450.0)
,('201209',442542.8,51345.3,56996.0)
,('201208',447384.3,46561.8,53920.0)
,('201207',455652.5,46244.9,54598.0)
,('201206',448084.3,45447.6,54587.0)
,('201205',472392.0,48993.9,57299.0)
,('201204',452820.9,40373.8,55722.0)
,('201203',474670.8,41850.9,55403.0)
,('201202',406583.7,35164.2,49682.0)
,('201201',373926.0,27319.4,52745.0)
;
-- 
-- 视验
SELECT * FROM ycmecon_econ3stats_1801
LIMIT 10
;
