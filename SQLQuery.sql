
---------------------------------------------------------------1.Identification Table
SELECT childid
		,clustid
		,typesite
		,region
		,dint
		,round
		,yc
		,panel
		,deceased
FROM [dbo].[ethiopia_constructed]
UNION 
SELECT childid
		,clustid
		,typesite
		,region
		,dint
		,round
		,yc
		,panel12345 AS panel
		,deceased
FROM [dbo].[india_constructed];

############################################################
-- EthiopianClusters table (ClusterID to District mapping)
CREATE TABLE EthiopianClusters (
    ClusterID INT,
    District VARCHAR(100)
);

-- Insert data into EthiopianClusters
INSERT INTO EthiopianClusters (ClusterID, District) VALUES
(1, 'Addis Ababa, Ethiopia'),
(2, 'Addis Ababa, Ethiopia'),
(3, 'Addis Ababa, Ethiopia'),
(4, 'Amhara, Ethiopia'),
(5, 'Amhara, Ethiopia'),
(6, 'Amhara, Ethiopia'),
(7, 'Amhara, Ethiopia'),
(8, 'Oromia, Ethiopia'),
(9, 'Oromia, Ethiopia'),
(10, 'Oromia, Ethiopia'),
(11, 'Oromia, Ethiopia'),
(12, 'Southern Nations Nationalities and Peoples, Ethiopia'),
(13, 'Southern Nations Nationalities and Peoples, Ethiopia'),
(14, 'Southern Nations Nationalities and Peoples, Ethiopia'),
(15, 'Southern Nations Nationalities and Peoples, Ethiopia'),
(16, 'Southern Nations Nationalities and Peoples, Ethiopia'),
(17, 'Tigray, Ethiopia'),
(18, 'Tigray, Ethiopia'),
(19, 'Tigray, Ethiopia'),
(20, 'Tigray, Ethiopia');

######################################################################################
-- Indian Clusters table (ClusterID to District mapping)
CREATE TABLE IndianClusters (
    ClusterID INT,
    District VARCHAR(100)
);

-- Insert the data for each cluster
INSERT INTO IndianClusters (ClusterID, District) VALUES
(1, 'West Godavari, India'),
(2, 'West Godavari, India'),
(3, 'Srikakulam, India'),
(4, 'Srikakulam, India'),
(5, 'Srikakulam, India'),
(6, 'Srikakulam, India'),
(7, 'Srikakulam, India'),
(8, 'Kadapa, India'),
(9, 'Kadapa, India'),
(10, 'Anantapur, India'),
(11, 'Anantapur, India'),
(12, 'Anantapur, India'),
(13, 'Anantapur, India'),
(14, 'Karimnagar, India'),
(15, 'Karimnagar, India'),
(16, 'Mababubnagar, India'),
(17, 'Mababubnagar, India'),
(18, 'Mababubnagar, India'),
(19, 'Mababubnagar, India'),
(20, 'Hyderabad, India');



-- Joining your existing table with EthiopianClusters to get place names
CREATE VIEW ChildIndentification AS
SELECT childid
		,clustid
		,District
		,typesite
		,region
		,dint
		,round
		,yc
		,panel
		,deceased
FROM [dbo].[ethiopia_constructed] AS E
JOIN EthiopianClusters AS C
ON E.clustid = C.ClusterID
UNION ALL
SELECT childid
		,clustid
		,District
		,typesite
		,region
		,dint
		,round
		,yc
		,panel12345 AS panel
		,deceased
FROM [dbo].[india_constructed] AS I
JOIN IndianClusters AS IC
ON I.clustid = IC.ClusterID
-----------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------2.ChildGeneralCharacteristics Table
CREATE VIEW ChildGeneralCharacteristics AS 
SELECT  childid
		,chsex
		,chlang
		,chethnic
		,chldrel
		,agemon
		,marrcohab
		,marrcohab_age
		,birth
		,birth_age
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT  childid
		,chsex
		,chlang
		,chethnic
		,chldrel
		,agemon
		,marrcohab
		,marrcohab_age
		,birth
		,birth_age
FROM [dbo].[india_constructed]

----------------------------------------------------------3.ChildAnthropometricMeasures
CREATE VIEW ChildAnthropometricMeasures AS
SELECT childid
		,chweight
		,chhealth
		,bmi
		,zwfa
		,zhfa
		,zbfa
		,zwfl
		,fwfa
		,fhfa
		,fbfa
		,fwfl
		,underweight
		,stunting
		,thinness
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,chweight
		,chhealth
		,bmi
		,zwfa
		,zhfa
		,zbfa
		,zwfl
		,fwfa
		,fhfa
		,fbfa
		,fwfl
		,underweight
		,stunting
		,thinness
FROM [dbo].[india_constructed]

------------------------------------------------------4.ChildBirthandImmunisations
CREATE VIEW ChildBirthandImmunisations AS
SELECT childid
		,bwght
		,bwdoc
		,numante
		,tetanus
		,delivery
		,bcg
		,measles
		,polio
		,dpt
		,hib
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,bwght
		,bwdoc
		,numante
		,tetanus
		,delivery
		,bcg
		,measles
		,polio
		,dpt
		,hib
FROM [dbo].[india_constructed];

------------------------------------------------5.ChildIllness,Injury,Disability
CREATE VIEW ChildIllnessInjuryDisability AS
SELECT childid
		,chmightdie
		,chillness
		,chinjury
		,chhprob
		,chdisability
		,chdisscale
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,chmightdie
		,chillness
		,chinjury
		,chhprob
		,chdisability
		,chdisscale
FROM [dbo].[india_constructed];

------------------------------------------------6.ChildSmokingDrinkingHabits
CREATE VIEW ChildSmokingDrinkingHabits AS
SELECT childid
		,chsmoke
		,chalcohol
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,chsmoke
		,chalcohol
FROM [dbo].[india_constructed];

-----------------------------------------------7.ChildSubjectiveHealthandWellbeing
CREATE VIEW ChildSubjectiveHealthandWellbeing AS
SELECT childid
		,chhrel
		,chhealth
		,cladder
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,chhrel
		,chhealth
		,cladder
FROM [dbo].[india_constructed];

-----------------------------------------------8.ChildTimeUse
CREATE VIEW ChildTimeUse AS
SELECT childid
		,hsleep
		,hcare
		,hchore
		,htask
		,hwork
		,hschool
		,hstudy
		,hplay
		,commwork
		,commsch
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,hsleep
		,hcare
		,hchore
		,htask
		,hwork
		,hschool
		,hstudy
		,hplay
		,commwork
		,commsch
FROM [dbo].[india_constructed];

---------------------------------------------9.ChildEducation
CREATE VIEW ChildEducation AS
SELECT childid
		,agegr1
		,enrol
		,engrade
		,entype
	    ,hghgrade
		,timesch
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,agegr1
		,enrol
		,engrade
		,entype
	    ,hghgrade
		,timesch
FROM [dbo].[india_constructed];

------------------------------------------10.ChildReadingandWriting
CREATE VIEW ChildReadingandWriting AS
SELECT childid
		,levlread
		,levlwrit
		,literate
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,levlread
		,levlwrit
		,literate
FROM [dbo].[india_constructed];

-----------------------------------------11.ChildCaregiverCharacteristics
CREATE VIEW ChildCaregiverCharacteristics AS
SELECT childid
		,careid
		,careage
		,caresex
		,carehead
		,carerel
		,carecantread
		,caredu
		,careladder
		,careldr4yrs
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,careid
		,careage
		,caresex
		,carehead
		,carerel
		,carecantread
		,caredu
		,careladder
		,careldr4yrs
FROM [dbo].[india_constructed];

-----------------------------------------12.ChildBiologicalParentCharacteristics
CREATE VIEW ChildBiologicalParentCharacteristics AS
SELECT childid
		,dadid
		,dadage
		,dadlive
		,dadyrdied
		,dadcantread
		,dadedu
		,momid
		,momage
		,momlive
		,momyrdied
		,momcantread
		,momedu
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,dadid
		,dadage
		,dadlive
		,dadyrdied
		,dadcantread
		,dadedu
		,momid
		,momage
		,momlive
		,momyrdied
		,momcantread
		,momedu
FROM [dbo].[india_constructed];

------------------------------------------------13.HouseholdHeadCharacteristics
CREATE VIEW HouseholdHeadCharacteristics AS
SELECT childid
		,headid
		,headage
		,headsex
		,headedu
		,headrel
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT childid
		,headid
		,headage
		,headsex
		,headedu
		,headrel
FROM [dbo].[india_constructed];

-----------------------------------------------14.HouseholdSizeandComposition
CREATE VIEW HouseholdSizeandComposition AS
SELECT headid
		,male05
		,male612
		,male1317
		,male1860
		,male61
		,female05
		,female612
		,female1317
		,female1860
		,female61
		,hhsize
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT headid
		,male05
		,male612
		,male1317
		,male1860
		,male61
		,female05
		,female612
		,female1317
		,female1860
		,female61
		,hhsize
FROM [dbo].[india_constructed];

----------------------------------------------15.LivestockOwnership
CREATE VIEW LivestockOwnership AS
SELECT headid
      ,[aniany]
      ,[animilk]
      ,[anidrau]
      ,[anirumi]
      ,[anispec]
      ,[anicowm]
      ,[anicowt]
      ,[anicalv]
      ,[anibufm]
      ,[anibuft]
      ,[aniheif]
      ,[anibull]
      ,[anihebu]
      ,[anidonk]
      ,[aniybul]
      ,[anishee]
      ,[anigoat]
      ,[anipigs]
      ,[anipoul]
      ,[anirabb]
      ,[anibeeh]
      ,[aniothr]
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT headid
      ,[aniany]
      ,[animilk]
      ,[anidrau]
      ,[anirumi]
      ,[anispec]
      ,[anicowm]
      ,[anicowt]
      ,[anicalv]
      ,[anibufm]
      ,[anibuft]
      ,[aniheif]
      ,[anibull]
      ,[anihebu]
      ,[anidonk]
      ,[aniybul]
      ,[anishee]
      ,[anigoat]
      ,[anipigs]
      ,[anipoul]
      ,[anirabb]
      ,[anibeeh]
      ,[aniothr]
FROM [dbo].[india_constructed];

--------------------------------------------16.HouseholdLandandHouseOwnership
CREATE VIEW HouseholdLandandHouseOwnership AS
SELECT headid
		,ownlandhse
		,ownhouse
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT headid
		,ownlandhse
		,ownhouse
FROM [dbo].[india_constructed]

----------------------------------------------17.HouseholdCreditandFoodSecurity
CREATE VIEW HouseholdCreditandFoodSecurity AS
SELECT headid
		,credit
		,foodsec
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT  headid
		, credit
		,foodsec
FROM [dbo].[india_constructed];

----------------------------------------------18.HouseholdShocks


--------------------------------------------19.HouseholdShocks
CREATE VIEW HouseholdShocks AS
SELECT headid
	,[shcrime1]
      ,[shcrime2]
      ,[shcrime3]
      ,[shcrime4]
      ,[shcrime5]
      ,[shcrime6]
      ,[shcrime7]
      ,[shcrime8]
      ,[shregul1]
      ,[shregul2]
      ,[shregul3]
      ,[shregul4]
      ,[shregul5]
      ,[shecon1]
      ,[shecon2]
      ,[shecon3]
      ,[shecon4]
      ,[shecon5]
      ,[shecon6]
      ,[shecon7]
      ,[shecon8]
      ,[shecon9]
      ,[shecon10]
      ,[shecon11]
      ,[shecon12]
      ,[shecon13]
      ,[shecon14]
      ,[shenv1]
      ,[shenv2]
      ,[shenv3]
      ,[shenv4]
      ,[shenv5]
      ,[shenv6]
      ,[shenv7]
      ,[shenv8]
      ,[shenv9]
      ,[shhouse1]
      ,[shhouse2]
      ,[shhouse3]
      ,[shfam1]
      ,[shfam2]
      ,[shfam3]
      ,[shfam4]
      ,[shfam5]
      ,[shfam6]
      ,[shfam7]
      ,[shfam8]
      ,[shfam9]
      ,[shfam10]
      ,[shfam11]
      ,[shfam12]
      ,[shfam13]
      ,[shfam14]
      ,[shfam18]
      ,[shother]
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT headid
	,[shcrime1]
      ,[shcrime2]
      ,[shcrime3]
      ,[shcrime4]
      ,[shcrime5]
      ,[shcrime6]
      ,[shcrime7]
      ,[shcrime8]
      ,[shregul1]
      ,[shregul2]
      ,[shregul3]
      ,[shregul4]
      ,[shregul5]
      ,[shecon1]
      ,[shecon2]
      ,[shecon3]
      ,[shecon4]
      ,[shecon5]
      ,[shecon6]
      ,[shecon7]
      ,[shecon8]
      ,[shecon9]
      ,[shecon10]
      ,[shecon11]
      ,[shecon12]
      ,[shecon13]
      ,[shecon14]
      ,[shenv1]
      ,[shenv2]
      ,[shenv3]
      ,[shenv4]
      ,[shenv5]
      ,[shenv6]
      ,[shenv7]
      ,[shenv8]
      ,[shenv9]
      ,[shhouse1]
      ,[shhouse2]
      ,[shhouse3]
      ,[shfam1]
      ,[shfam2]
      ,[shfam3]
      ,[shfam4]
      ,[shfam5]
      ,[shfam6]
      ,[shfam7]
      ,[shfam8]
      ,[shfam9]
      ,[shfam10]
      ,[shfam11]
      ,[shfam12]
      ,[shfam13]
      ,[shfam14]
      ,[shfam18]
      ,[shother]
FROM [dbo].[india_constructed];

-------------------------------------------------------20.HouseholdWealthIndexandSubIndices
CREATE VIEW HouseholdWealthIndexandSubIndices AS
SELECT headid
		,wi_new wi
		,hq_new hq
		,sv_new sv
		,cd_new cd
		,elecq_new elecq
		,toiletq_new toiletq
		,drwaterq_new drwaterq
		,cookingq_new cookingq
FROM [dbo].[ethiopia_constructed]
UNION ALL
SELECT headid
		,wi
		,hq
		,sv
		,cd
		,elecq
		,toiletq
		,drwaterq
		,cookingq
FROM [dbo].[india_constructed]
