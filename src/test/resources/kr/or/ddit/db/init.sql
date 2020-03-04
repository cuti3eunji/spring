--해당 테이블은 테스트 계정에만 있기 때문에
--개발자가 실수로 운영디비 설정을 사용해도 해당 sql이 정상적으로 실행되지 않으면서
--이후에 등장하는 sql들은 실행되지 않는다. populator.setContinueOnError(false);
select * from not_exists_in_prd;

--users 테이블 데이터 전체 지우기
--delete users;			-- 복구가 가능(아카이브 로그를 남긴다)
truncate table users; 	-- 복구가 불가능(아카이브 로그를 남기지 않는다)

Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('brown','브라운','c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44',to_date('2019/08/12','YYYY/MM/DD'),'곰',null,null,null,'brown.png','e:\upload\2019\09\0db2c3ac-26c0-4a43-be6d-3dd333ff45eb.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('cony','코니','de1153428acef7fd7b999f1227d4882146bd7ea16b595b43bf5090d41d3637',to_date('2019/08/12','YYYY/MM/DD'),'토끼',null,null,null,'cony.png','e:\upload\2019\09\1ce2cc19-32c7-4c10-8109-4d749b9fa839.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('sally','샐리','4aeaaaccd26ed685e4e3c563bcdb1f9d1dabd77f1b7b819625679936648d49c9',to_date('2019/08/12','YYYY/MM/DD'),'병아리',null,null,null,'sally.png','\upload\2019\08\sally.png','\upload\2019\08\sally.png');
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('james','제임스','6765c531920463d7bb44112f8f21abcea85913e3197978828fbd076d1d36f4d',to_date('2019/08/12','YYYY/MM/DD'),'사람',null,null,null,'james.png','e:\upload\2019\09\d9cd38d1-ae1e-4c8b-aee7-c510f64d3574.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('moon','문','7a37a8623ff85b19476f7d052349e1d57e5bded313cccdea99b9601e1ace5d',to_date('2019/08/12','YYYY/MM/DD'),'달',null,null,null,'moon.png','e:\upload\2019\09\49607e81-bfaf-4507-95c5-2b805481615c.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid46','xusernm46','xuserid46pass',to_date('2018/05/09','YYYY/MM/DD'),'suseralias46',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid47','xusernm47','xuserid47pass',to_date('2018/04/29','YYYY/MM/DD'),'suseralias47',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid48','xusernm48','xuserid48pass',to_date('2018/04/19','YYYY/MM/DD'),'suseralias48',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid49','xusernm49','xuserid49pass',to_date('2018/04/09','YYYY/MM/DD'),'suseralias49',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid50','xusernm50','xuserid50pass',to_date('2018/03/30','YYYY/MM/DD'),'suseralias50',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid51','xusernm51','xuserid51pass',to_date('2018/03/20','YYYY/MM/DD'),'suseralias51',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid52','xusernm52','xuserid52pass',to_date('2018/03/10','YYYY/MM/DD'),'suseralias52',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid53','xusernm53','xuserid53pass',to_date('2018/02/28','YYYY/MM/DD'),'suseralias53',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid54','xusernm54','xuserid54pass',to_date('2018/02/18','YYYY/MM/DD'),'suseralias54',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid55','xusernm55','xuserid55pass',to_date('2018/02/08','YYYY/MM/DD'),'suseralias55',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid56','xusernm56','xuserid56pass',to_date('2018/01/29','YYYY/MM/DD'),'suseralias56',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid57','xusernm57','xuserid57pass',to_date('2018/01/19','YYYY/MM/DD'),'suseralias57',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid58','xusernm58','xuserid58pass',to_date('2018/01/09','YYYY/MM/DD'),'suseralias58',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid59','xusernm59','xuserid59pass',to_date('2017/12/30','YYYY/MM/DD'),'suseralias59',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid60','xusernm60','xuserid60pass',to_date('2017/12/20','YYYY/MM/DD'),'suseralias60',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid61','xusernm61','xuserid61pass',to_date('2017/12/10','YYYY/MM/DD'),'suseralias61',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid62','xusernm62','xuserid62pass',to_date('2017/11/30','YYYY/MM/DD'),'suseralias62',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid63','xusernm63','xuserid63pass',to_date('2017/11/20','YYYY/MM/DD'),'suseralias63',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid64','xusernm64','xuserid64pass',to_date('2017/11/10','YYYY/MM/DD'),'suseralias64',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid65','xusernm65','xuserid65pass',to_date('2017/10/31','YYYY/MM/DD'),'suseralias65',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid66','xusernm66','xuserid66pass',to_date('2017/10/21','YYYY/MM/DD'),'suseralias66',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid67','xusernm67','xuserid67pass',to_date('2017/10/11','YYYY/MM/DD'),'suseralias67',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid68','xusernm68','xuserid68pass',to_date('2017/10/01','YYYY/MM/DD'),'suseralias68',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid69','xusernm69','xuserid69pass',to_date('2017/09/21','YYYY/MM/DD'),'suseralias69',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid70','xusernm70','xuserid70pass',to_date('2017/09/11','YYYY/MM/DD'),'suseralias70',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid71','xusernm71','xuserid71pass',to_date('2017/09/01','YYYY/MM/DD'),'suseralias71',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid72','xusernm72','xuserid72pass',to_date('2017/08/22','YYYY/MM/DD'),'suseralias72',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid73','xusernm73','xuserid73pass',to_date('2017/08/12','YYYY/MM/DD'),'suseralias73',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid74','xusernm74','xuserid74pass',to_date('2017/08/02','YYYY/MM/DD'),'suseralias74',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid75','xusernm75','xuserid75pass',to_date('2017/07/23','YYYY/MM/DD'),'suseralias75',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid76','xusernm76','xuserid76pass',to_date('2017/07/13','YYYY/MM/DD'),'suseralias76',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid77','xusernm77','xuserid77pass',to_date('2017/07/03','YYYY/MM/DD'),'suseralias77',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid78','xusernm78','xuserid78pass',to_date('2017/06/23','YYYY/MM/DD'),'suseralias78',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid79','xusernm79','xuserid79pass',to_date('2017/06/13','YYYY/MM/DD'),'suseralias79',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid80','xusernm80','xuserid80pass',to_date('2017/06/03','YYYY/MM/DD'),'suseralias80',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid81','xusernm81','xuserid81pass',to_date('2017/05/24','YYYY/MM/DD'),'suseralias81',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid82','xusernm82','xuserid82pass',to_date('2017/05/14','YYYY/MM/DD'),'suseralias82',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid83','xusernm83','xuserid83pass',to_date('2017/05/04','YYYY/MM/DD'),'suseralias83',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid84','xusernm84','xuserid84pass',to_date('2017/04/24','YYYY/MM/DD'),'suseralias84',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid85','xusernm85','xuserid85pass',to_date('2017/04/14','YYYY/MM/DD'),'suseralias85',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid1','xusernm1','xuserid1pass',to_date('2019/08/02','YYYY/MM/DD'),'suseralias1',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid2','xusernm2','xuserid2pass',to_date('2019/07/23','YYYY/MM/DD'),'suseralias2',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid3','xusernm3','xuserid3pass',to_date('2019/07/13','YYYY/MM/DD'),'suseralias3',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid4','xusernm4','xuserid4pass',to_date('2019/07/03','YYYY/MM/DD'),'suseralias4',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid5','xusernm5','xuserid5pass',to_date('2019/06/23','YYYY/MM/DD'),'suseralias5',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid6','xusernm6','xuserid6pass',to_date('2019/06/13','YYYY/MM/DD'),'suseralias6',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid7','xusernm7','xuserid7pass',to_date('2019/06/03','YYYY/MM/DD'),'suseralias7',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid8','xusernm8','xuserid8pass',to_date('2019/05/24','YYYY/MM/DD'),'suseralias8',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid9','xusernm9','xuserid9pass',to_date('2019/05/14','YYYY/MM/DD'),'suseralias9',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid10','xusernm10','xuserid10pass',to_date('2019/05/04','YYYY/MM/DD'),'suseralias10',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid11','xusernm11','xuserid11pass',to_date('2019/04/24','YYYY/MM/DD'),'suseralias11',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid12','xusernm12','xuserid12pass',to_date('2019/04/14','YYYY/MM/DD'),'suseralias12',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid13','xusernm13','xuserid13pass',to_date('2019/04/04','YYYY/MM/DD'),'suseralias13',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid14','xusernm14','xuserid14pass',to_date('2019/03/25','YYYY/MM/DD'),'suseralias14',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid15','xusernm15','xuserid15pass',to_date('2019/03/15','YYYY/MM/DD'),'suseralias15',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid16','xusernm16','xuserid16pass',to_date('2019/03/05','YYYY/MM/DD'),'suseralias16',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid17','xusernm17','xuserid17pass',to_date('2019/02/23','YYYY/MM/DD'),'suseralias17',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid18','xusernm18','xuserid18pass',to_date('2019/02/13','YYYY/MM/DD'),'suseralias18',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid19','xusernm19','xuserid19pass',to_date('2019/02/03','YYYY/MM/DD'),'suseralias19',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid20','xusernm20','xuserid20pass',to_date('2019/01/24','YYYY/MM/DD'),'suseralias20',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid21','xusernm21','xuserid21pass',to_date('2019/01/14','YYYY/MM/DD'),'suseralias21',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid22','xusernm22','xuserid22pass',to_date('2019/01/04','YYYY/MM/DD'),'suseralias22',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid23','xusernm23','xuserid23pass',to_date('2018/12/25','YYYY/MM/DD'),'suseralias23',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid24','xusernm24','xuserid24pass',to_date('2018/12/15','YYYY/MM/DD'),'suseralias24',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid25','xusernm25','xuserid25pass',to_date('2018/12/05','YYYY/MM/DD'),'suseralias25',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid26','xusernm26','xuserid26pass',to_date('2018/11/25','YYYY/MM/DD'),'suseralias26',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid27','xusernm27','xuserid27pass',to_date('2018/11/15','YYYY/MM/DD'),'suseralias27',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid28','xusernm28','xuserid28pass',to_date('2018/11/05','YYYY/MM/DD'),'suseralias28',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid29','xusernm29','xuserid29pass',to_date('2018/10/26','YYYY/MM/DD'),'suseralias29',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid30','xusernm30','xuserid30pass',to_date('2018/10/16','YYYY/MM/DD'),'suseralias30',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid31','xusernm31','xuserid31pass',to_date('2018/10/06','YYYY/MM/DD'),'suseralias31',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid32','xusernm32','xuserid32pass',to_date('2018/09/26','YYYY/MM/DD'),'suseralias32',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid33','xusernm33','xuserid33pass',to_date('2018/09/16','YYYY/MM/DD'),'suseralias33',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid34','xusernm34','xuserid34pass',to_date('2018/09/06','YYYY/MM/DD'),'suseralias34',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid35','xusernm35','xuserid35pass',to_date('2018/08/27','YYYY/MM/DD'),'suseralias35',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid36','xusernm36','xuserid36pass',to_date('2018/08/17','YYYY/MM/DD'),'suseralias36',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid37','xusernm37','xuserid37pass',to_date('2018/08/07','YYYY/MM/DD'),'suseralias37',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid38','xusernm38','xuserid38pass',to_date('2018/07/28','YYYY/MM/DD'),'suseralias38',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid39','xusernm39','xuserid39pass',to_date('2018/07/18','YYYY/MM/DD'),'suseralias39',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid40','xusernm40','xuserid40pass',to_date('2018/07/08','YYYY/MM/DD'),'suseralias40',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid41','xusernm41','xuserid41pass',to_date('2018/06/28','YYYY/MM/DD'),'suseralias41',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid42','xusernm42','xuserid42pass',to_date('2018/06/18','YYYY/MM/DD'),'suseralias42',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid43','xusernm43','xuserid43pass',to_date('2018/06/08','YYYY/MM/DD'),'suseralias43',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid44','xusernm44','xuserid44pass',to_date('2018/05/29','YYYY/MM/DD'),'suseralias44',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid45','xusernm45','xuserid45pass',to_date('2018/05/19','YYYY/MM/DD'),'suseralias45',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid86','xusernm86','xuserid86pass',to_date('2017/04/04','YYYY/MM/DD'),'suseralias86',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid87','xusernm87','xuserid87pass',to_date('2017/03/25','YYYY/MM/DD'),'suseralias87',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid88','xusernm88','xuserid88pass',to_date('2017/03/15','YYYY/MM/DD'),'suseralias88',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid89','xusernm89','xuserid89pass',to_date('2017/03/05','YYYY/MM/DD'),'suseralias89',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid90','xusernm90','xuserid90pass',to_date('2017/02/23','YYYY/MM/DD'),'suseralias90',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid91','xusernm91','xuserid91pass',to_date('2017/02/13','YYYY/MM/DD'),'suseralias91',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid92','xusernm92','xuserid92pass',to_date('2017/02/03','YYYY/MM/DD'),'suseralias92',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid93','xusernm93','xuserid93pass',to_date('2017/01/24','YYYY/MM/DD'),'suseralias93',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid94','xusernm94','xuserid94pass',to_date('2017/01/14','YYYY/MM/DD'),'suseralias94',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid95','xusernm95','xuserid95pass',to_date('2017/01/04','YYYY/MM/DD'),'suseralias95',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid96','xusernm96','xuserid96pass',to_date('2016/12/25','YYYY/MM/DD'),'suseralias96',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid97','xusernm97','xuserid97pass',to_date('2016/12/15','YYYY/MM/DD'),'suseralias97',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid98','xusernm98','xuserid98pass',to_date('2016/12/05','YYYY/MM/DD'),'suseralias98',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid99','xusernm99','xuserid99pass',to_date('2016/11/25','YYYY/MM/DD'),'suseralias99',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid100','xusernm100','xuserid100pass',to_date('2016/11/15','YYYY/MM/DD'),'suseralias100',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('makchang123','불막창','asdfa2131',to_date('2019/08/16','YYYY/MM/DD'),'안불','서울 동대문구 겸재로 16','영민빌딩 1층','02512','안주야불막창.jpg','e:\upload\2019\08\887fa313-f85a-4bf8-9dfd-61dff0728605.jpg',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('brownTest','브라운테스트','brownTest1234',to_date('2019/08/08','YYYY/MM/DD'),'곰테스트','대전광역시 중구 중앙로 중앙로 76','영민빌딩 2층 DDIT','34940',null,null,null);

commit;