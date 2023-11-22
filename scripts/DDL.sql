DROP TABLE IF EXISTS stage.creatio_NavNpsCalcutaion;
CREATE TABLE stage.creatio_NavNpsCalcutaion (
	Id VARCHAR,
	CreatedOn TIMESTAMP,
	CreatedById VARCHAR,
	ModifiedOn TIMESTAMP,
	ModifiedById VARCHAR,
	ProcessListeners VARCHAR,
	NavFinalBonusId VARCHAR,
	NavCriterionFive decimal(18,2),
	NavCriterionFour decimal(18,2),
	NavCriterionThree VARCHAR,
	NavCriterionTwo decimal(18,2),
	NavCriterionOne decimal(18,2),
	NavCalculationTypeId VARCHAR,
	NavAccountId VARCHAR,
	NavRegionId VARCHAR,
	NavPollId VARCHAR,
	NavConversationScriptTypeId VARCHAR,
	NavCriterionSix VARCHAR
);

COMMENT ON VIEW stage.creatio_NavNpsCalcutaion IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_TsiPoll;
CREATE TABLE stage.creatio_TsiPoll (
	Id VARCHAR,
	CreatedOn TIMESTAMP NULL,
	CreatedById  VARCHAR,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById  VARCHAR,
	ProcessListeners int NOT NULL,
	TsiName VARCHAR(250),
	TsiNotes VARCHAR,
	TsiIsActive BOOL NOT NULL,
	TsiOwnerId VARCHAR,
	TsiDescription VARCHAR(250),
	TsiTypeId  VARCHAR,
	Notes VARCHAR,
	NavEndDate date NULL,
	NavStartDate date NULL,
	NavPurpose VARCHAR(250),
	NavQuotaResultNumber int NOT NULL,
	NavQuotaResultPercent decimal(18,1) NOT NULL,
	NavLeftForTagret int NOT NULL,
	NavTargetNumber int NOT NULL,
	NavTargetCompletionPercent decimal(18,2) NOT NULL,
	NavPickingFilter VARCHAR(250),
	NavCallAttemptsNumber int NOT NULL,
	NavParentPollId  VARCHAR,
	NavQuotaNumber int NOT NULL,
	NavQuotaPercent decimal(18,1) NOT NULL,
	NavPeriod int NOT NULL,
	NavConversationScriptId  VARCHAR,
	NavStatusId  VARCHAR,
	NavQuotaTypeId  VARCHAR,
	RecordInactive BOOL NOT NULL,
	NavTotalNps decimal(18,2) NOT NULL,
	NavDealOrServicePeriodId  VARCHAR,
	NavCountryId  VARCHAR,
	NavNpsCalculationActive BOOL NOT NULL,
	NavNewsletterActive BOOL NOT NULL,
	NavPollDirectionId  VARCHAR
);

COMMENT ON VIEW stage.creatio_TsiPoll IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_NavNpsCalculationType;
CREATE TABLE stage.creatio_NavNpsCalculationType (
	Id VARCHAR,
	CreatedOn TIMESTAMP,
	CreatedById VARCHAR,
	ModifiedOn TIMESTAMP,
	ModifiedById VARCHAR,
	Name VARCHAR,
	Description VARCHAR,
	ProcessListeners int
);

COMMENT ON VIEW stage.creatio_NavNpsCalculationType IS 'Таблица в исходном виде из системы УОС CREATIO.';


DROP TABLE IF EXISTS stage.creatio_Account;
CREATE TABLE stage.creatio_Account (
	Id VARCHAR(1000) NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR(1000) NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR(1000) NULL,
	Name varchar(500) NOT NULL,
	Description varchar(250) NOT NULL,
	OwnershipId VARCHAR(1000) NULL,
	PrimaryContactId VARCHAR(1000) NULL,
	ParentId VARCHAR(1000) NULL,
	OwnerId VARCHAR(1000) NULL,
	IndustryId VARCHAR(1000) NULL,
	Code varchar(250) NOT NULL,
	TypeId VARCHAR(1000) NULL,
	Phone varchar(250) NOT NULL,
	AdditionalPhone varchar(250) NOT NULL,
	Fax varchar(250) NOT NULL,
	Web varchar(250) NOT NULL,
	AddressTypeId VARCHAR(1000) NULL,
	Address varchar(3000) NOT NULL,
	CityId VARCHAR(1000) NULL,
	RegionId VARCHAR(1000) NULL,
	Zip varchar(50) NOT NULL,
	CountryId VARCHAR(1000) NULL,
	AccountCategoryId VARCHAR(1000) NULL,
	EmployeesNumberId VARCHAR(1000) NULL,
	AnnualRevenueId VARCHAR(1000) NULL,
	Notes varchar(3000) NOT NULL,
	Logo varchar(3000) NULL,
	AlternativeName varchar(250) NOT NULL,
	ProcessListeners int NOT NULL,
	GPSN varchar(50) NOT NULL,
	GPSE varchar(50) NOT NULL,
	PriceListId VARCHAR(1000) NULL,
	Completeness int NOT NULL,
	AccountLogoId VARCHAR(1000) NULL,
	AUM varchar(250) NOT NULL,
	BnzScopeOfUseId VARCHAR(1000) NULL,
	BnzKpp varchar(50) NOT NULL,
	BnzInn varchar(50) NOT NULL,
	BnzDCCode varchar(50) NOT NULL,
	InfWorkStartDate date NULL,
	InfCalendarId VARCHAR(1000) NULL,
	NavGeoRegionId VARCHAR(1000) NULL,
	NavMDMCode varchar(250)  NOT NULL,
	RecordInactive BOOL NOT NULL,
	NavReferenceRecordId VARCHAR(1000) NULL,
	NavIsDuplicate BOOL NOT NULL,
	NavHeadAccountId VARCHAR(1000) NULL,
	NavKindId VARCHAR(1000) NULL,
	NavFullName varchar(500) NOT NULL,
	NavOgrn varchar(250) NOT NULL,
	NavBank varchar(250) NOT NULL,
	NavBik varchar(250) NOT NULL,
	NavEstimatedCheck varchar(250) NOT NULL,
	NavCorrespondentCheck varchar(250) NOT NULL
);

COMMENT ON VIEW stage.creatio_Account IS 'Таблица в исходном виде из системы УОС CREATIO.';


DROP TABLE IF EXISTS stage.creatio_NavGeoRegion;
CREATE TABLE stage.creatio_NavGeoRegion (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL,
	NavCountryId VARCHAR NULL
);

COMMENT ON VIEW stage.creatio_NavGeoRegion IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_NavYesNo;
CREATE TABLE stage.creatio_NavYesNo (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL
);

COMMENT ON VIEW stage.creatio_NavYesNo IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_NavConversationScriptType;
CREATE TABLE stage.creatio_NavConversationScriptType (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL
);

COMMENT ON VIEW stage.creatio_NavConversationScriptType IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_TsiPollType;
CREATE TABLE stage.creatio_TsiPollType (
	Id VARCHAR NOT NULL,
	Name varchar(250) NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	ProcessListeners int NOT NULL,
	Description varchar(500) NOT NULL
);

COMMENT ON VIEW stage.creatio_TsiPollType IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_ConversationScript;
CREATE TABLE stage.creatio_ConversationScript (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	ProcessListeners int NOT NULL,
	Name varchar(250) NOT NULL,
	Notes varchar(500) NOT NULL,
	Description varchar(1000) NOT NULL,
	Code varchar(50) NOT NULL,
	EntityId VARCHAR NULL,
	NavVersion int NOT NULL,
	NavTypeId VARCHAR NULL
);

COMMENT ON VIEW stage.creatio_ConversationScript IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_NavPollStatus;
CREATE TABLE stage.creatio_NavPollStatus (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL
);

COMMENT ON VIEW stage.creatio_NavPollStatus IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_NavQuotaType;
CREATE TABLE stage.creatio_NavQuotaType (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL
);

COMMENT ON VIEW stage.creatio_NavQuotaType IS 'Таблица в исходном виде из системы УОС CREATIO.';

DROP TABLE IF EXISTS stage.creatio_Period;
CREATE TABLE stage.creatio_Period (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL,
	StartDate date NULL,
	DueDate date NULL,
	PeriodTypeId VARCHAR NULL,
	YearId VARCHAR NULL,
	QuarterId VARCHAR NULL,
	ParentId VARCHAR NULL
);

COMMENT ON VIEW stage.creatio_Period IS 'Таблица в исходном виде из системы УОС CREATIO.';


DROP TABLE IF EXISTS stage.creatio_Country;
CREATE TABLE stage.creatio_Country (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	Image VARCHAR(1500) NULL,
	BillingInfo VARCHAR(500) NOT NULL,
	ProcessListeners int NOT NULL,
	TimeZoneId VARCHAR NULL,
	Code varchar(50) NOT NULL,
	Alpha2Code varchar(50) NOT NULL,
	NavRegionCodeId VARCHAR NULL
);

COMMENT ON VIEW stage.creatio_Country IS 'Таблица в исходном виде из системы УОС CREATIO.';


DROP TABLE IF EXISTS stage.creatio_NavPollDirection;
CREATE TABLE stage.creatio_NavPollDirection (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL
);

COMMENT ON VIEW stage.creatio_NavPollDirection IS 'Таблица в исходном виде из системы УОС CREATIO.';


DROP TABLE IF EXISTS stage.creatio_AccountType;
CREATE TABLE stage.creatio_AccountType (
	Id VARCHAR NOT NULL,
	CreatedOn TIMESTAMP NULL,
	CreatedById VARCHAR NULL,
	ModifiedOn TIMESTAMP NULL,
	ModifiedById VARCHAR NULL,
	Name varchar(250) NOT NULL,
	Description varchar(250) NOT NULL,
	ProcessListeners int NOT NULL
);

COMMENT ON VIEW stage.creatio_AccountType IS 'Таблица в исходном виде из системы УОС CREATIO.';


DROP TABLE IF EXISTS stage.autoretail_units;
CREATE TABLE stage.autoretail_units (
	"region"  VARCHAR(500),
	"oblast"  VARCHAR(500),
	"city"  VARCHAR(500),
	"org"  VARCHAR(500),
	"status"  VARCHAR(500),
	"stoianka"  VARCHAR(500),
	"ISC_org"  VARCHAR(500),
	"ISC_org_code"  VARCHAR(500),
	"ISC_stoianka"  VARCHAR(500),
	"ISC_stoianka_code"  VARCHAR(500),
	"CREATIO_org"  VARCHAR(500),
	"CREATIO_org_code"  VARCHAR(500),
	"CREATIO_stoianka"  VARCHAR(500),
	"CREATIO_stoianka_code"  VARCHAR(500),
	"WEBTUTOR_org"  VARCHAR(500),
	"WEBTUTOR_org_code"  VARCHAR(500),
	"WEBTUTOR_stoianka"  VARCHAR(500),
	"WEBTUTOR_stoianka_code"  VARCHAR(500),
	"MDAUDIT_org"  VARCHAR(500),
	"MDAUDIT_org_code"  VARCHAR(500),
	"MDAUDIT_stoianka"  VARCHAR(500),
	"MDAUDIT_stoianka_code"   VARCHAR(500)
);

COMMENT ON VIEW stage.autoretail_units IS 'Таблица в исходном виде из системы УОС CREATIO.';