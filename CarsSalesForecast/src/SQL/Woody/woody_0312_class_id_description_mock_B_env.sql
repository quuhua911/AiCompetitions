


--create table if not exists  stuff_woody_0312_mock_B_env   as select * from ycc_sales_lichuan0309_traintest_2_max_min;
--训练集分别201301-201709，201302-201710，201303-201711

-- 训练集
-- stuff_woody_0312_mock_B_env_1201_1611_train
-- stuff_woody_0312_mock_B_env_1202_1612_train
-- stuff_woody_0312_mock_B_env_1301_1611_train
-- stuff_woody_0312_mock_B_env_1302_1612_train

-- stuff_woody_0312_mock_B_env_1201_1511_train
-- stuff_woody_0312_mock_B_env_1202_1512_train
-- stuff_woody_0312_mock_B_env_1301_1511_train
-- stuff_woody_0312_mock_B_env_1302_1512_train

-- stuff_woody_0312_mock_B_env_1201_1411_train
-- stuff_woody_0312_mock_B_env_1202_1412_train
-- stuff_woody_0312_mock_B_env_1301_1411_train
-- stuff_woody_0312_mock_B_env_1302_1412_train

-- stuff_woody_0312_mock_B_env_1201_1711_train
-- stuff_woody_0312_mock_B_env_1202_1712_train
-- stuff_woody_0312_mock_B_env_1301_1711_train
-- stuff_woody_0312_mock_B_env_1302_1712_train

-- 测试集合分别是201710，201711，201713
-- stuff_woody_0312_mock_B_env_1702_test
-- stuff_woody_0312_mock_B_env_1602_test
-- stuff_woody_0312_mock_B_env_1502_test
-- 预测集
-- stuff_woody_0312_mock_B_env_1802_predict


--预测2017年2月
create table if not exists stuff_woody_0312_mock_B_env_1201_1611_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201201,201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611));
create table if not exists stuff_woody_0312_mock_B_env_1202_1612_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611,201612));
create table if not exists stuff_woody_0312_mock_B_env_1301_1611_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611));
create table if not exists stuff_woody_0312_mock_B_env_1302_1612_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date  in (201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611,201612));

--预测2016年2月
create table if not exists stuff_woody_0312_mock_B_env_1201_1511_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201201,201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511));
create table if not exists stuff_woody_0312_mock_B_env_1202_1512_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512));
create table if not exists stuff_woody_0312_mock_B_env_1301_1511_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511));
create table if not exists stuff_woody_0312_mock_B_env_1302_1512_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date  in (201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512));

--预测2015年2月
create table if not exists stuff_woody_0312_mock_B_env_1201_1411_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201201,201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411));
create table if not exists stuff_woody_0312_mock_B_env_1202_1412_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412));
create table if not exists stuff_woody_0312_mock_B_env_1301_1411_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411));
create table if not exists stuff_woody_0312_mock_B_env_1302_1412_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date  in (201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412));


--测试集201701
create table if not exists stuff_woody_0312_mock_B_env_1702_test
as select * from stuff_woody_0312_mock_B_env
where (sale_date=201702);
--测试集201601
create table if not exists stuff_woody_0312_mock_B_env_1602_test
as select * from stuff_woody_0312_mock_B_env
where (sale_date=201602);
--测试集201501
create table if not exists stuff_woody_0312_mock_B_env_1502_test
as select * from stuff_woody_0312_mock_B_env
where (sale_date=201502);

--测试集201702
create table if not exists stuff_woody_0312_mock_B_env_1702_test
as select * from stuff_woody_0312_mock_B_env
where (sale_date=201702);
--测试集201602
create table if not exists stuff_woody_0312_mock_B_env_1602_test
as select * from stuff_woody_0312_mock_B_env
where (sale_date=201602);
--测试集201502
create table if not exists stuff_woody_0312_mock_B_env_1502_test
as select * from stuff_woody_0312_mock_B_env
where (sale_date=201502);

--预测2018年2月
create table if not exists stuff_woody_0312_mock_B_env_1201_1711_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201201,201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611,201612,201701,201702,201703,201704,201705,201706,201707,201708,201709,201710,201711));
create table if not exists stuff_woody_0312_mock_B_env_1202_1712_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201202,201203,201204,201205,201206,201207,201208,201209,201210,201211,201212,201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611,201612,201701,201702,201703,201704,201705,201706,201707,201708,201709,201710,201711,201712));
create table if not exists stuff_woody_0312_mock_B_env_1301_1711_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date in (201301,201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611,201612,201701,201702,201703,201704,201705,201706,201707,201708,201709,201710,201711));
create table if not exists stuff_woody_0312_mock_B_env_1302_1712_train
as select * from stuff_woody_0312_mock_B_env
where (sale_date  in (201302,201303,201304,201305,201306,201307,201308,201309,201310,201311,201312,201401,201402,201403,201404,201405,201406,201407,201408,201409,201410,201411,201412,201501,201502,201503,201504,201505,201506,201507,201508,201509,201510,201511,201512,201601,201602,201603,201604,201605,201606,201607,201608,201609,201610,201611,201612,201701,201702,201703,201704,201705,201706,201707,201708,201709,201710,201711,201712));


--预测集201802
create table if not exists stuff_woody_0312_mock_B_env_1802_predict
as select * from stuff_woody_0312_mock_B_env
where (sale_date=201802);