create table opencps_dossier (
	uuid_ VARCHAR(75) null,
	dossierId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	referenceUid VARCHAR(75) null,
	counter INTEGER,
	serviceCode VARCHAR(75) null,
	serviceName VARCHAR(75) null,
	optionCode VARCHAR(75) null,
	optionName VARCHAR(75) null,
	govAgencyCode VARCHAR(75) null,
	govAgencyName VARCHAR(75) null,
	applicantName VARCHAR(75) null,
	applicantIdType VARCHAR(75) null,
	applicantIdNo VARCHAR(75) null,
	applicantIdDate DATE null,
	address VARCHAR(75) null,
	cityCode VARCHAR(75) null,
	cityName VARCHAR(75) null,
	districtCode VARCHAR(75) null,
	districtName VARCHAR(75) null,
	wardCode VARCHAR(75) null,
	wardName VARCHAR(75) null,
	contactName VARCHAR(75) null,
	contactTelNo VARCHAR(75) null,
	contactEmail VARCHAR(75) null,
	dossierTemplateNo VARCHAR(75) null,
	dossierNote VARCHAR(75) null,
	dossierNo VARCHAR(75) null,
	submitting BOOLEAN,
	submitDate DATE null,
	receiveDate DATE null,
	dueDate DATE null,
	releaseDate DATE null,
	finishDate DATE null,
	cancellingDate DATE null,
	correcttingDate DATE null,
	dossierStatus VARCHAR(75) null,
	dossierStatusText VARCHAR(75) null,
	dossierSubStatus VARCHAR(75) null,
	dossierSubStatusText VARCHAR(75) null,
	paymentRedirectURL VARCHAR(75) null,
	overDue VARCHAR(75) null,
	folderId LONG
);

create table opencps_dossieraction (
	uuid_ VARCHAR(75) null,
	dossierActionId LONG not null primary key,
	companyId LONG,
	groupId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	dossierId LONG,
	serviceProcessId LONG,
	previousActionId LONG,
	actionCode VARCHAR(75) null,
	actionUser VARCHAR(75) null,
	actionName VARCHAR(75) null,
	actionNote VARCHAR(75) null,
	overDue INTEGER,
	syncActionCode VARCHAR(75) null,
	pending VARCHAR(75) null,
	rollback VARCHAR(75) null,
	processStepId LONG,
	dueDate INTEGER,
	nextActionId LONG
);

create table opencps_dossieractionuser (
	uuid_ VARCHAR(75) null,
	dossierActionId LONG not null,
	userId LONG not null,
	moderator INTEGER,
	primary key (dossierActionId, userId)
);

create table opencps_dossierfile (
	uuid_ VARCHAR(75) null,
	dossierFileId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	dossierId LONG,
	referenceUid VARCHAR(75) null,
	dossierTemplateNo VARCHAR(75) null,
	dossierPartNo VARCHAR(75) null,
	fileTemplateNo VARCHAR(75) null,
	displayName VARCHAR(75) null,
	formData VARCHAR(75) null,
	fileEntryId LONG,
	dossierFileNo DATE null,
	dossierFileDate VARCHAR(75) null,
	original BOOLEAN,
	isNew BOOLEAN,
	signed BOOLEAN,
	signCheck INTEGER,
	signInfo VARCHAR(75) null,
	formScript VARCHAR(75) null,
	formReport VARCHAR(75) null
);

create table opencps_dossierlog (
	uuid_ VARCHAR(75) null,
	dossierLogId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	dossierId LONG,
	author VARCHAR(75) null,
	content VARCHAR(75) null,
	notificationType INTEGER,
	toUserIds VARCHAR(75) null,
	deliveredDate DATE null
);

create table opencps_dossierpart (
	uuid_ VARCHAR(75) null,
	dossierPartId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	templateNo VARCHAR(75) null,
	partNo VARCHAR(75) null,
	partName VARCHAR(75) null,
	partTip VARCHAR(75) null,
	partType INTEGER,
	multiple BOOLEAN,
	formScript VARCHAR(75) null,
	formReport VARCHAR(75) null,
	sampleData VARCHAR(75) null,
	required BOOLEAN,
	fileTemplateNo VARCHAR(75) null,
	eSign BOOLEAN
);

create table opencps_dossiertemplate (
	uuid_ VARCHAR(75) null,
	dossierTemplateId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	templateName VARCHAR(75) null,
	description VARCHAR(75) null,
	templateNo VARCHAR(75) null
);

create table opencps_paymentconfig (
	uuid_ VARCHAR(75) null,
	paymentConfigId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	dossierId LONG,
	referenceUid VARCHAR(75) null,
	govAgencyCode VARCHAR(75) null,
	govAgencyName VARCHAR(75) null,
	govAgencyTaxNo VARCHAR(75) null,
	invoiceTemplateNo VARCHAR(75) null,
	invoiceIssueNo VARCHAR(75) null,
	invoiceLastNo VARCHAR(75) null,
	bankInfo VARCHAR(75) null,
	placeInfo VARCHAR(75) null,
	paymentDomain VARCHAR(75) null,
	paymentVersion VARCHAR(75) null,
	paymentMerchantCode VARCHAR(75) null,
	paymentSecureKey VARCHAR(75) null,
	reportTemplate VARCHAR(75) null,
	paymentGateType LONG,
	returnUrl VARCHAR(75) null,
	paymentConfigNo VARCHAR(75) null
);

create table opencps_paymentfile (
	uuid_ VARCHAR(75) null,
	paymentFileId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	dossierId LONG,
	referenceUid VARCHAR(75) null,
	govAgencyCode VARCHAR(75) null,
	govAgencyName VARCHAR(75) null,
	isNew BOOLEAN,
	paymentFee VARCHAR(75) null,
	paymentAmount DOUBLE,
	paymentNote VARCHAR(75) null,
	paymentOptions VARCHAR(75) null,
	keypayUrl DATE null,
	keypayTransactionId LONG,
	keypayGoodCode DATE null,
	keypayMerchantCode DATE null,
	bankInfo DATE null,
	paymentStatus INTEGER,
	paymentMethod INTEGER,
	confirmDatetime DATE null,
	confirmFileEntryId LONG,
	confirmNote VARCHAR(75) null,
	approveDatetime DATE null,
	accountUserName VARCHAR(75) null,
	govAgencyTaxNo VARCHAR(75) null,
	invoiceTemplateNo VARCHAR(75) null,
	invoiceIssueNo VARCHAR(75) null,
	invoiceNo VARCHAR(75) null,
	invoiceFileEntryId LONG,
	paymentGateStatusCode INTEGER,
	paymentGateCheckCode INTEGER
);

create table opencps_processaction (
	uuid_ VARCHAR(75) null,
	processActionId LONG not null primary key,
	companyId LONG,
	groupId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	serviceProcessId LONG,
	preProcessStepId LONG,
	postProcessStepId LONG,
	autoEvent VARCHAR(75) null,
	preCondition VARCHAR(75) null,
	actionCode VARCHAR(75) null,
	actionName VARCHAR(75) null,
	allowAssignUser VARCHAR(75) null,
	assignUserId LONG,
	requestPayment VARCHAR(75) null,
	paymentFee VARCHAR(75) null,
	createDossierFiles VARCHAR(75) null,
	returnDossierFiles VARCHAR(75) null,
	syncActionCode VARCHAR(75) null,
	rollback VARCHAR(75) null
);

create table opencps_processstep (
	uuid_ VARCHAR(75) null,
	processStepId LONG not null primary key,
	companyId LONG,
	groupId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	stepCode VARCHAR(75) null,
	serviceProcessId LONG,
	stepName VARCHAR(75) null,
	sequenceNo VARCHAR(75) null,
	dossierStatus VARCHAR(75) null,
	dossierSubStatus VARCHAR(75) null,
	durationCount INTEGER,
	customProcessUrl VARCHAR(75) null
);

create table opencps_serviceconfig (
	uuid_ VARCHAR(75) null,
	serviceConfigId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	serviceInfoId LONG,
	govAgencyCode VARCHAR(75) null,
	govAgencyName VARCHAR(75) null,
	serviceInstruction VARCHAR(75) null,
	serviceLevel INTEGER,
	serviceUrl VARCHAR(75) null,
	authentication INTEGER
);

create table opencps_serviceinfo (
	uuid_ VARCHAR(75) null,
	serviceInfoId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	serviceCode VARCHAR(75) null,
	serviceName VARCHAR(75) null,
	processText VARCHAR(75) null,
	methodText VARCHAR(75) null,
	dossierText VARCHAR(75) null,
	conditionText VARCHAR(75) null,
	durationText VARCHAR(75) null,
	applicantText VARCHAR(75) null,
	resultText VARCHAR(75) null,
	regularText VARCHAR(75) null,
	feeText VARCHAR(75) null,
	administrationCode VARCHAR(75) null,
	administrationName VARCHAR(75) null,
	administrationIndex VARCHAR(75) null,
	domainCode VARCHAR(75) null,
	domainName VARCHAR(75) null,
	domainIndex VARCHAR(75) null,
	activeStatus INTEGER,
	maxLevel INTEGER
);

create table opencps_serviceoption (
	uuid_ VARCHAR(75) null,
	serviceOptionId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	optionCode VARCHAR(75) null,
	optionName VARCHAR(75) null,
	optionOrder INTEGER,
	autoSelect VARCHAR(75) null,
	dossierTemplateId LONG,
	serviceProcessId LONG,
	instructionNote VARCHAR(75) null
);

create table opencps_serviceprocess (
	uuid_ VARCHAR(75) null,
	serviceProcessId LONG not null primary key,
	companyId LONG,
	groupId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	processNo VARCHAR(75) null,
	description VARCHAR(75) null,
	durationCount INTEGER,
	durationUnit INTEGER,
	counter INTEGER,
	generateDossierNo VARCHAR(75) null,
	dossierNoPattern VARCHAR(75) null,
	generateDueDate VARCHAR(75) null,
	dueDatePattern VARCHAR(75) null
);

create table opencps_services_filetemplates (
	uuid_ VARCHAR(75) null,
	serviceInfoId LONG not null,
	fileTemplateNo VARCHAR(75) not null,
	templateName VARCHAR(75) null,
	fileEntryId LONG,
	primary key (serviceInfoId, fileTemplateNo)
);

create table opencps_stepallowance (
	uuid_ VARCHAR(75) null,
	processStepId LONG not null,
	roleId LONG not null,
	companyId LONG,
	groupId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	moderator INTEGER,
	primary key (processStepId, roleId)
);