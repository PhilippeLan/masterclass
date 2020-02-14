-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: hue
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `desktop_document2`
--

DROP TABLE IF EXISTS `desktop_document2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `type` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `extra` longtext NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `version` smallint(6) NOT NULL,
  `is_history` tinyint(1) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `parent_directory_id` int(11) DEFAULT NULL,
  `search` longtext,
  `is_trashed` tinyint(1) DEFAULT NULL,
  `is_managed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document2_uuid_version_is_history_f449ad78_uniq` (`uuid`,`version`,`is_history`),
  KEY `desktop_document2_uuid_01e04a24` (`uuid`),
  KEY `desktop_document2_type_7a9e90a7` (`type`),
  KEY `desktop_document2_last_modified_15243c0d` (`last_modified`),
  KEY `desktop_document2_version_2299c6bb` (`version`),
  KEY `desktop_document2_is_history_c15f5853` (`is_history`),
  KEY `desktop_document2_owner_id_342662fe_fk_auth_user_id` (`owner_id`),
  KEY `desktop_document2_parent_directory_id_428ead9c_fk_desktop_d` (`parent_directory_id`),
  KEY `desktop_document2_is_trashed_e36a0b8a` (`is_trashed`),
  KEY `desktop_document2_is_managed_572d9c22` (`is_managed`),
  CONSTRAINT `desktop_document2_owner_id_342662fe_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `desktop_document2_parent_directory_id_428ead9c_fk_desktop_d` FOREIGN KEY (`parent_directory_id`) REFERENCES `desktop_document2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document2`
--

LOCK TABLES `desktop_document2` WRITE;
/*!40000 ALTER TABLE `desktop_document2` DISABLE KEYS */;
INSERT INTO `desktop_document2` VALUES (1,'','','4e121dc8-a6d7-44b3-a6c0-8b4ba1d36686','directory','{}','','2020-01-22 17:07:51.520160',1,0,2,NULL,NULL,0,0),(2,'.Trash','','a57b058a-3483-4ef4-8f35-9344cd0ab2d6','directory','{}','','2020-01-22 17:07:51.527507',1,0,2,1,NULL,0,0),(7,'','','85f919b2-ef21-4144-a361-efab6a1b5afd','directory','{}','','2020-01-22 17:43:49.303839',1,0,3,NULL,NULL,0,0),(8,'.Trash','','4e47bcbd-da5c-4667-a8ca-286eab94ae87','directory','{}','','2020-01-22 17:43:49.308334',1,0,3,7,NULL,0,0),(11,'','','a1fb9d94-661d-413f-9ede-327e1909fd09','directory','{}','','2020-01-22 19:26:45.101720',1,0,1,NULL,NULL,0,0),(12,'.Trash','','5e6656de-22eb-40e4-abbd-e2fd4b98b084','directory','{}','','2020-01-22 19:26:45.105925',1,0,1,11,NULL,0,0),(13,'Joe analyst queries','Worldwide bank demo','44a16c68-07b4-e951-d2e5-6fa777915f31','query-hive','{\"forceHistoryInitialHeight\": false, \"loadingHistory\": false, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"historyTotalPages\": 0, \"unloaded\": false, \"pubSubUrl\": null, \"retryModalConfirm\": null, \"isPresentationMode\": false, \"uuid\": \"44a16c68-07b4-e951-d2e5-6fa777915f31\", \"onSuccessUrl\": null, \"id\": 13, \"historyFilterVisible\": false, \"historyInitialHeight\": 0, \"snippets\": [{\"showExecutionAnalysis\": false, \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"associatedDocumentLoading\": true, \"isReady\": true, \"compatibilitySourcePlatforms\": [{\"name\": \"Teradata\", \"value\": \"teradata\"}, {\"name\": \"Oracle\", \"value\": \"oracle\"}, {\"name\": \"Netezza\", \"value\": \"netezza\"}, {\"name\": \"Impala\", \"value\": \"impala\"}, {\"name\": \"Hive\", \"value\": \"hive\"}, {\"name\": \"DB2\", \"value\": \"db2\"}, {\"name\": \"Greenplum\", \"value\": \"greenplum\"}, {\"name\": \"MySQL\", \"value\": \"mysql\"}, {\"name\": \"PostgreSQL\", \"value\": \"postgresql\"}, {\"name\": \"Informix\", \"value\": \"informix\"}, {\"name\": \"SQL Server\", \"value\": \"sqlserver\"}, {\"name\": \"Sybase\", \"value\": \"sybase\"}, {\"name\": \"Access\", \"value\": \"access\"}, {\"name\": \"Firebird\", \"value\": \"firebird\"}, {\"name\": \"ANSISQL\", \"value\": \"ansisql\"}, {\"name\": \"Generic\", \"value\": \"generic\"}], \"statusForButtons\": \"executed\", \"hideStacked\": true, \"autocompleteSettings\": {\"temporaryOnly\": false}, \"showLogs\": true, \"aceCursorPosition\": {\"column\": 2, \"row\": 0}, \"getLogsTimeout\": null, \"variableNames\": [], \"associatedDocumentUuid\": null, \"isResultSettingsVisible\": false, \"chartLimit\": null, \"aceErrorsHolder\": [], \"chartType\": \"bars\", \"isFetchingData\": false, \"name\": \"\", \"statementTypes\": [\"text\", \"file\"], \"is_redacted\": false, \"currentQueryTab\": \"savedQueries\", \"chartScope\": \"world\", \"result\": {\"logs\": \"\", \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"0d2a3a9f-888b-64cd-46ed-2dece21689ed\", \"statement_id\": 0, \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {}, \"metaFilter\": {\"query\": \"\", \"facets\": {}, \"text\": []}, \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2020-01-23T03:30:22.982Z\", \"data\": [], \"previous_statement_hash\": null, \"filteredColumnCount\": -1, \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2020-01-23T03:30:22.982Z\"}, \"errors\": [], \"chartMapHeat\": null, \"statement_raw\": \"-- Joe analyst queries\\n\\n-- Dynamic Column Masking: MRN/password cols masked via classification policy. Others masked via Hive col policy. Custom masks for Birthday/Age.\\nSELECT surname, streetaddress, country, age, nationalid, ccnumber, mrn, birthday FROM worldwidebank.us_customers LIMIT 10\\n\\n-- Prohibition policy: Prevent toxic joins (prevent join of Zipcode, Insuranceid, Blood group)\\nselect zipcode, insuranceid, bloodtype from worldwidebank.ww_customers limit 10\\n\\n-- Prohibition policy - dropping insuranceid allows query to run\\nselect zipcode, bloodtype from worldwidebank.ww_customers limit 10\\n\\n-- Leased Data Asset: Lifecycle controlled by Classification based policy (fed_tax is tagged with EXPIRED_ON which is restricted to analysts)\\nselect fed_tax from finance.tax_2015\\n\\n\\n-- Analyst prohibited from accessing personal data through Data Classification based policy (SSN column is tagged with PII which analysts cannot access)\\nselect ssn from finance.tax_2015\\n\\n\\n-- Querying for columns other than fed_tax/ssn works\\nselect state_tax from finance.tax_2015\\n\\n\\n-- Data Quality annotation based policy: Don\'t waste time on poor quality datasets! (Analysts should not access table tagged with DATA_QUALITY score < 60%)\\nselect * from cost_savings.claim_savings limit 5\\n\\n\\n-- Decrypt UDF: US employee sees decrypted versions of email and phone number\\nselect * from  hr.employees_encrypted\\n\\n\", \"progress\": 0, \"showOptimizer\": false, \"compatibilityTargetPlatform\": {\"name\": \"Hive\", \"value\": \"hive\"}, \"jobs\": [], \"statementType\": \"text\", \"variableValues\": {}, \"executeNextTimeout\": -1, \"queriesTotalPages\": 0, \"formatEnabled\": true, \"properties\": {\"files\": [], \"functions\": [], \"arguments\": [], \"settings\": []}, \"aceErrors\": [], \"isCanceling\": false, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"chartYSingle\": null, \"isSqlDialect\": true, \"statementPath\": \"\", \"showLongOperationWarning\": false, \"chartX\": null, \"lastExecuted\": 0, \"variables\": [], \"showChart\": false, \"compatibilitySourcePlatform\": {\"name\": \"Hive\", \"value\": \"hive\"}, \"showGrid\": true, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"statementsList\": [\"-- Joe analyst queries\\n\\n-- Dynamic Column Masking: MRN/password cols masked via classification policy. Others masked via Hive col policy. Custom masks for Birthday/Age.\\nSELECT surname, streetaddress, country, age, nationalid, ccnumber, mrn, birthday FROM worldwidebank.us_customers LIMIT 10\\n\\n-- Prohibition policy: Prevent toxic joins (prevent join of Zipcode, Insuranceid, Blood group)\\nselect zipcode, insuranceid, bloodtype from worldwidebank.ww_customers limit 10\\n\\n-- Prohibition policy - dropping insuranceid allows query to run\\nselect zipcode, bloodtype from worldwidebank.ww_customers limit 10\\n\\n-- Leased Data Asset: Lifecycle controlled by Classification based policy (fed_tax is tagged with EXPIRED_ON which is restricted to analysts)\\nselect fed_tax from finance.tax_2015\\n\\n\\n-- Analyst prohibited from accessing personal data through Data Classification based policy (SSN column is tagged with PII which analysts cannot access)\\nselect ssn from finance.tax_2015\\n\\n\\n-- Querying for columns other than fed_tax/ssn works\\nselect state_tax from finance.tax_2015\\n\\n\\n-- Data Quality annotation based policy: Don\'t waste time on poor quality datasets! (Analysts should not access table tagged with DATA_QUALITY score < 60%)\\nselect * from cost_savings.claim_savings limit 5\\n\\n\\n-- Decrypt UDF: US employee sees decrypted versions of email and phone number\\nselect * from  hr.employees_encrypted\\n\\n\"], \"lastAceSelectionRowOffset\": 0, \"executingBlockingOperation\": null, \"queriesFilterVisible\": false, \"statement\": \" Joe analyst queries\", \"type\": \"hive\", \"chartSorting\": \"none\", \"previousChartOptions\": {}, \"aceWarningsHolder\": [], \"resultsKlass\": \"results hive\", \"chartTimelineType\": \"bar\", \"compatibilityTargetPlatforms\": [{\"name\": \"Impala\", \"value\": \"impala\"}, {\"name\": \"Hive\", \"value\": \"hive\"}], \"topRisk\": null, \"compute\": {\"name\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"namespace\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"id\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"interface\": \"hive\", \"type\": \"direct\", \"options\": {}}, \"hasCurlyBracketParameters\": true, \"chartScatterGroup\": null, \"settingsVisible\": false, \"errorsKlass\": \"results hive alert alert-error\", \"aceWarnings\": [], \"compatibilityCheckRunning\": false, \"isLoading\": false, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"64162ecf-158b-7d27-263c-8883c5919490\", \"aceSize\": 100, \"chartData\": [], \"namespace\": {\"status\": \"CREATED\", \"computes\": [{\"credentials\": {}, \"type\": \"direct\", \"id\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"name\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\"}], \"id\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"name\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\"}, \"queriesHasErrors\": false, \"chartMapLabel\": null, \"editorMode\": true, \"status\": \"ready\", \"suggestion\": \"\", \"chartMapType\": \"marker\", \"queriesFilter\": \"\", \"queriesCurrentPage\": 1, \"isBatchable\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"database\": \"default\", \"hasSuggestion\": null, \"chartXPivot\": null, \"checkStatusTimeout\": null}], \"selectedSnippet\": \"hive\", \"type\": \"query-hive\", \"canSave\": false, \"historyFilter\": \"\", \"description\": \"Worldwide bank demo\", \"sessions\": [], \"updateHistoryFailed\": false, \"executingAllIndex\": 0, \"historyCurrentPage\": 1, \"presentationSnippets\": {}, \"isBatchable\": true, \"isHistory\": false, \"isPresentationModeDefault\": false, \"initialType\": \"hive\", \"coordinatorUuid\": null, \"name\": \"Joe analyst queries\", \"isManaged\": false, \"isExecutingAll\": false, \"isHidingCode\": false, \"loadingScheduler\": false, \"viewSchedulerId\": \"\", \"isSaved\": true, \"isPresentationModeInitialized\": true, \"creatingSessionLocks\": [], \"directoryUuid\": \"\", \"parentSavedQueryUuid\": null, \"dependentsCoordinator\": []}','','2020-01-22 19:31:40.569964',1,0,1,11,'-- Joe analyst queries\n\n-- Dynamic Column Masking: MRN/password cols masked via classification policy. Others masked via Hive col policy. Custom masks for Birthday/Age.\nSELECT surname, streetaddress, country, age, nationalid, ccnumber, mrn, birthday FROM worldwidebank.us_customers LIMIT 10\n\n-- Prohibition policy: Prevent toxic joins (prevent join of Zipcode, Insuranceid, Blood group)\nselect zipcode, insuranceid, bloodtype from worldwidebank.ww_customers limit 10\n\n-- Prohibition policy - dropping insuranceid allows query to run\nselect zipcode, bloodtype from worldwidebank.ww_customers limit 10\n\n-- Leased Data Asset: Lifecycle controlled by Classification based policy (fed_tax is tagged with EXPIRED_ON which is restricted to analysts)\nselect fed_tax from finance.tax_2015\n\n\n-- Analyst prohibited from accessing personal data through Data Classification based policy (SSN column is tagged with PII which analysts cannot access)\nselect ssn from finance.tax_2015\n\n\n-- Querying for columns other than fed_tax/ssn works\nselect state_tax from finance.tax_2015\n\n\n-- Data Quality annotation based policy: Don\'t waste time on poor quality datasets! (Analysts should not access table tagged with DATA_QUALITY score < 60%)\nselect * from cost_savings.claim_savings limit 5\n\n\n-- Decrypt UDF: US employee sees decrypted versions of email and phone number\nselect * from  hr.employees_encrypted\n\n',0,0),(14,'Ivanna EU HR queries','Worldwide bank demo','57b50665-ba0e-507d-985d-574effa826de','query-hive','{\"forceHistoryInitialHeight\": false, \"loadingHistory\": false, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"historyTotalPages\": 0, \"unloaded\": false, \"pubSubUrl\": null, \"retryModalConfirm\": null, \"isPresentationMode\": false, \"uuid\": \"57b50665-ba0e-507d-985d-574effa826de\", \"onSuccessUrl\": null, \"id\": 14, \"historyFilterVisible\": false, \"historyInitialHeight\": 0, \"snippets\": [{\"showExecutionAnalysis\": false, \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"associatedDocumentLoading\": true, \"isReady\": true, \"compatibilitySourcePlatforms\": [{\"name\": \"Teradata\", \"value\": \"teradata\"}, {\"name\": \"Oracle\", \"value\": \"oracle\"}, {\"name\": \"Netezza\", \"value\": \"netezza\"}, {\"name\": \"Impala\", \"value\": \"impala\"}, {\"name\": \"Hive\", \"value\": \"hive\"}, {\"name\": \"DB2\", \"value\": \"db2\"}, {\"name\": \"Greenplum\", \"value\": \"greenplum\"}, {\"name\": \"MySQL\", \"value\": \"mysql\"}, {\"name\": \"PostgreSQL\", \"value\": \"postgresql\"}, {\"name\": \"Informix\", \"value\": \"informix\"}, {\"name\": \"SQL Server\", \"value\": \"sqlserver\"}, {\"name\": \"Sybase\", \"value\": \"sybase\"}, {\"name\": \"Access\", \"value\": \"access\"}, {\"name\": \"Firebird\", \"value\": \"firebird\"}, {\"name\": \"ANSISQL\", \"value\": \"ansisql\"}, {\"name\": \"Generic\", \"value\": \"generic\"}], \"statusForButtons\": \"executed\", \"hideStacked\": true, \"autocompleteSettings\": {\"temporaryOnly\": false}, \"showLogs\": true, \"aceCursorPosition\": {\"column\": 3, \"row\": 1}, \"getLogsTimeout\": null, \"variableNames\": [], \"associatedDocumentUuid\": null, \"isResultSettingsVisible\": false, \"chartLimit\": null, \"aceErrorsHolder\": [], \"chartType\": \"bars\", \"isFetchingData\": false, \"name\": \"\", \"statementTypes\": [\"text\", \"file\"], \"is_redacted\": false, \"currentQueryTab\": \"savedQueries\", \"chartScope\": \"world\", \"result\": {\"logs\": \"\", \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"bbd7aab0-3460-fa12-3ed9-5d44476f265d\", \"statement_id\": 0, \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {}, \"metaFilter\": {\"query\": \"\", \"facets\": {}, \"text\": []}, \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2020-01-23T03:32:15.238Z\", \"data\": [], \"previous_statement_hash\": null, \"filteredColumnCount\": -1, \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2020-01-23T03:32:15.238Z\"}, \"errors\": [], \"chartMapHeat\": null, \"statement_raw\": \"\\n-- Ivanna EU HR queries\\n\\n-- EU employee can not access us_customers table\\nselect * from worldwidebank.us_customers limit 10\\n\\n-- Row Level Security - Customer data filtered to EU persons only based on location\\nselect distinct(country) from worldwidebank.ww_customers\\n\\n\\n-- HR analyst can see unmasked records - but only for EU customers who have given consent\\nSELECT surname, streetaddress, country, age, nationalid, ccnumber, mrn, birthday FROM worldwidebank.ww_customers LIMIT 10\\n\\n\\n-- Analysts only see portion of customers - only those who have given consent. (Table actually has ~29k rows)\\nSELECT count(*) FROM worldwidebank.ww_customers\\n\\n-- Analyst CAN\'T see a customer who has not given consent (Row filtering)\\nSELECT insuranceid, surname, streetaddress, country, age FROM worldwidebank.ww_customers where insuranceid=\'23182722\'\\n\\n-- Analyst CAN see a customer who has given consent (Row filtering)\\nSELECT insuranceid, surname, streetaddress, country, age FROM worldwidebank.ww_customers where insuranceid=\'62517316\'\\n\\n-- HR Analyst not be able to update consent master data tagged as REFERENCE_DATA (Tag based policy)\\nupdate  consent_master.consent_data_trans set  loyaltyconsent=\'NO\' where insuranceid=\'57155949\'\\n\\n-- HR analyst can access table tagged with DATA_QUALITY even though it\'s score < 60% (joe_analyst can not access)\\nselect * from cost_savings.claim_savings limit 5\\n\\n-- Decrypt UDF: EU employee only see AES-256 encrypted versions of email and phone number\\nselect * from  hr.employees_encrypted\\n\", \"progress\": 0, \"showOptimizer\": false, \"compatibilityTargetPlatform\": {\"name\": \"Hive\", \"value\": \"hive\"}, \"jobs\": [], \"statementType\": \"text\", \"variableValues\": {}, \"executeNextTimeout\": -1, \"queriesTotalPages\": 0, \"formatEnabled\": true, \"properties\": {\"files\": [], \"functions\": [], \"arguments\": [], \"settings\": []}, \"aceErrors\": [], \"isCanceling\": false, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"chartYSingle\": null, \"isSqlDialect\": true, \"statementPath\": \"\", \"showLongOperationWarning\": false, \"chartX\": null, \"lastExecuted\": 0, \"variables\": [], \"showChart\": false, \"compatibilitySourcePlatform\": {\"name\": \"Hive\", \"value\": \"hive\"}, \"showGrid\": true, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"statementsList\": [\"\\n-- Ivanna EU HR queries\\n\\n-- EU employee can not access us_customers table\\nselect * from worldwidebank.us_customers limit 10\\n\\n-- Row Level Security - Customer data filtered to EU persons only based on location\\nselect distinct(country) from worldwidebank.ww_customers\\n\\n\\n-- HR analyst can see unmasked records - but only for EU customers who have given consent\\nSELECT surname, streetaddress, country, age, nationalid, ccnumber, mrn, birthday FROM worldwidebank.ww_customers LIMIT 10\\n\\n\\n-- Analysts only see portion of customers - only those who have given consent. (Table actually has ~29k rows)\\nSELECT count(*) FROM worldwidebank.ww_customers\\n\\n-- Analyst CAN\'T see a customer who has not given consent (Row filtering)\\nSELECT insuranceid, surname, streetaddress, country, age FROM worldwidebank.ww_customers where insuranceid=\'23182722\'\\n\\n-- Analyst CAN see a customer who has given consent (Row filtering)\\nSELECT insuranceid, surname, streetaddress, country, age FROM worldwidebank.ww_customers where insuranceid=\'62517316\'\\n\\n-- HR Analyst not be able to update consent master data tagged as REFERENCE_DATA (Tag based policy)\\nupdate  consent_master.consent_data_trans set  loyaltyconsent=\'NO\' where insuranceid=\'57155949\'\\n\\n-- HR analyst can access table tagged with DATA_QUALITY even though it\'s score < 60% (joe_analyst can not access)\\nselect * from cost_savings.claim_savings limit 5\\n\\n-- Decrypt UDF: EU employee only see AES-256 encrypted versions of email and phone number\\nselect * from  hr.employees_encrypted\\n\"], \"lastAceSelectionRowOffset\": 0, \"executingBlockingOperation\": null, \"queriesFilterVisible\": false, \"statement\": \"Ivanna EU HR queries\", \"type\": \"hive\", \"chartSorting\": \"none\", \"previousChartOptions\": {}, \"aceWarningsHolder\": [], \"resultsKlass\": \"results hive\", \"chartTimelineType\": \"bar\", \"compatibilityTargetPlatforms\": [{\"name\": \"Impala\", \"value\": \"impala\"}, {\"name\": \"Hive\", \"value\": \"hive\"}], \"topRisk\": null, \"compute\": {\"name\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"namespace\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"id\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"interface\": \"hive\", \"type\": \"direct\", \"options\": {}}, \"hasCurlyBracketParameters\": true, \"chartScatterGroup\": null, \"settingsVisible\": false, \"errorsKlass\": \"results hive alert alert-error\", \"aceWarnings\": [], \"compatibilityCheckRunning\": false, \"isLoading\": false, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"6829401e-2cc0-fc76-1d4c-818459e201a8\", \"aceSize\": 100, \"chartData\": [], \"namespace\": {\"status\": \"CREATED\", \"computes\": [{\"credentials\": {}, \"type\": \"direct\", \"id\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"name\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\"}], \"id\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\", \"name\": \"affb2c0d-c569-45ac-a5f5-f64be9e85848\"}, \"queriesHasErrors\": false, \"chartMapLabel\": null, \"editorMode\": true, \"status\": \"ready\", \"suggestion\": \"\", \"chartMapType\": \"marker\", \"queriesFilter\": \"\", \"queriesCurrentPage\": 1, \"isBatchable\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"database\": \"default\", \"hasSuggestion\": null, \"chartXPivot\": null, \"checkStatusTimeout\": null}], \"selectedSnippet\": \"hive\", \"type\": \"query-hive\", \"canSave\": false, \"historyFilter\": \"\", \"description\": \"Worldwide bank demo\", \"sessions\": [], \"updateHistoryFailed\": false, \"executingAllIndex\": 0, \"historyCurrentPage\": 1, \"presentationSnippets\": {}, \"isBatchable\": true, \"isHistory\": false, \"isPresentationModeDefault\": false, \"initialType\": \"hive\", \"coordinatorUuid\": null, \"name\": \"Ivanna EU HR queries\", \"isManaged\": false, \"isExecutingAll\": false, \"isHidingCode\": false, \"loadingScheduler\": false, \"viewSchedulerId\": \"\", \"isSaved\": true, \"isPresentationModeInitialized\": true, \"creatingSessionLocks\": [], \"directoryUuid\": \"\", \"parentSavedQueryUuid\": null, \"dependentsCoordinator\": []}','','2020-01-22 19:32:41.072479',1,0,2,1,'\n-- Ivanna EU HR queries\n\n-- EU employee can not access us_customers table\nselect * from worldwidebank.us_customers limit 10\n\n-- Row Level Security - Customer data filtered to EU persons only based on location\nselect distinct(country) from worldwidebank.ww_customers\n\n\n-- HR analyst can see unmasked records - but only for EU customers who have given consent\nSELECT surname, streetaddress, country, age, nationalid, ccnumber, mrn, birthday FROM worldwidebank.ww_customers LIMIT 10\n\n\n-- Analysts only see portion of customers - only those who have given consent. (Table actually has ~29k rows)\nSELECT count(*) FROM worldwidebank.ww_customers\n\n-- Analyst CAN\'T see a customer who has not given consent (Row filtering)\nSELECT insuranceid, surname, streetaddress, country, age FROM worldwidebank.ww_customers where insuranceid=\'23182722\'\n\n-- Analyst CAN see a customer who has given consent (Row filtering)\nSELECT insuranceid, surname, streetaddress, country, age FROM worldwidebank.ww_customers where insuranceid=\'62517316\'\n\n-- HR Analyst not be able to update consent master data tagged as REFERENCE_DATA (Tag based policy)\nupdate  consent_master.consent_data_trans set  loyaltyconsent=\'NO\' where insuranceid=\'57155949\'\n\n-- HR analyst can access table tagged with DATA_QUALITY even though it\'s score < 60% (joe_analyst can not access)\nselect * from cost_savings.claim_savings limit 5\n\n-- Decrypt UDF: EU employee only see AES-256 encrypted versions of email and phone number\nselect * from  hr.employees_encrypted\n',0,0),(15,'Joe analyst Impala queries','Joe analyst Impala queries','0a912ce9-4895-c303-60f3-5071fee616bf','query-impala','{\"forceHistoryInitialHeight\": false, \"loadingHistory\": false, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"historyTotalPages\": 0, \"unloaded\": false, \"pubSubUrl\": null, \"retryModalConfirm\": null, \"isPresentationMode\": false, \"uuid\": \"0a912ce9-4895-c303-60f3-5071fee616bf\", \"onSuccessUrl\": null, \"id\": 15, \"historyFilterVisible\": false, \"historyInitialHeight\": 0, \"snippets\": [{\"showExecutionAnalysis\": false, \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"associatedDocumentLoading\": true, \"isReady\": true, \"compatibilitySourcePlatforms\": [{\"name\": \"Teradata\", \"value\": \"teradata\"}, {\"name\": \"Oracle\", \"value\": \"oracle\"}, {\"name\": \"Netezza\", \"value\": \"netezza\"}, {\"name\": \"Impala\", \"value\": \"impala\"}, {\"name\": \"Hive\", \"value\": \"hive\"}, {\"name\": \"DB2\", \"value\": \"db2\"}, {\"name\": \"Greenplum\", \"value\": \"greenplum\"}, {\"name\": \"MySQL\", \"value\": \"mysql\"}, {\"name\": \"PostgreSQL\", \"value\": \"postgresql\"}, {\"name\": \"Informix\", \"value\": \"informix\"}, {\"name\": \"SQL Server\", \"value\": \"sqlserver\"}, {\"name\": \"Sybase\", \"value\": \"sybase\"}, {\"name\": \"Access\", \"value\": \"access\"}, {\"name\": \"Firebird\", \"value\": \"firebird\"}, {\"name\": \"ANSISQL\", \"value\": \"ansisql\"}, {\"name\": \"Generic\", \"value\": \"generic\"}], \"statusForButtons\": \"executed\", \"hideStacked\": true, \"autocompleteSettings\": {\"temporaryOnly\": false}, \"showLogs\": true, \"aceCursorPosition\": {\"column\": 0, \"row\": 0}, \"getLogsTimeout\": null, \"variableNames\": [], \"associatedDocumentUuid\": null, \"isResultSettingsVisible\": false, \"chartLimit\": null, \"aceErrorsHolder\": [], \"chartType\": \"bars\", \"isFetchingData\": false, \"name\": \"\", \"statementTypes\": [\"text\", \"file\"], \"is_redacted\": false, \"currentQueryTab\": \"savedQueries\", \"chartScope\": \"world\", \"result\": {\"logs\": \"\", \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"dc75b761-5364-6d11-a15f-8103cee37bc1\", \"statement_id\": 0, \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {}, \"metaFilter\": {\"query\": \"\", \"facets\": {}, \"text\": []}, \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2020-02-14T04:44:49.526Z\", \"data\": [], \"previous_statement_hash\": null, \"filteredColumnCount\": -1, \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2020-02-14T04:44:49.526Z\"}, \"errors\": [], \"chartMapHeat\": null, \"statement_raw\": \"--working query\\nselect state_tax from finance.tax_2015\\n\\n-- Data Quality annotation based policy: Don\'t waste time on poor quality datasets! (Analysts should not access table tagged with DATA_QUALITY score < 60%)\\nselect * from cost_savings.claim_savings limit 5\\n\\n\", \"progress\": 0, \"showOptimizer\": false, \"compatibilityTargetPlatform\": {\"name\": \"Impala\", \"value\": \"impala\"}, \"jobs\": [], \"statementType\": \"text\", \"variableValues\": {}, \"executeNextTimeout\": -1, \"queriesTotalPages\": 0, \"formatEnabled\": true, \"properties\": {\"settings\": []}, \"aceErrors\": [], \"isCanceling\": false, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"chartYSingle\": null, \"isSqlDialect\": true, \"statementPath\": \"\", \"showLongOperationWarning\": false, \"chartX\": null, \"lastExecuted\": 0, \"variables\": [], \"showChart\": false, \"compatibilitySourcePlatform\": {\"name\": \"Impala\", \"value\": \"impala\"}, \"showGrid\": true, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"statementsList\": [\"--working query\\nselect state_tax from finance.tax_2015\\n\\n-- Data Quality annotation based policy: Don\'t waste time on poor quality datasets! (Analysts should not access table tagged with DATA_QUALITY score < 60%)\\nselect * from cost_savings.claim_savings limit 5\\n\\n\"], \"lastAceSelectionRowOffset\": 0, \"executingBlockingOperation\": null, \"queriesFilterVisible\": false, \"statement\": \"--working query\\nselect state_tax from finance.tax_2015\\n\\n-- Data Quality annotation based policy: Don\'t waste time on poor quality datasets! (Analysts should not access table tagged with DATA_QUALITY score < 60%)\\nselect * from cost_savings.claim_savings limit 5\\n\\n\", \"type\": \"impala\", \"chartSorting\": \"none\", \"previousChartOptions\": {}, \"aceWarningsHolder\": [], \"resultsKlass\": \"results impala\", \"chartTimelineType\": \"bar\", \"compatibilityTargetPlatforms\": [{\"name\": \"Impala\", \"value\": \"impala\"}, {\"name\": \"Hive\", \"value\": \"hive\"}], \"topRisk\": null, \"compute\": {\"name\": \"ef1e2b8c-5446-4c75-b3ef-057cc2a90d4b\", \"namespace\": \"ef1e2b8c-5446-4c75-b3ef-057cc2a90d4b\", \"id\": \"ef1e2b8c-5446-4c75-b3ef-057cc2a90d4b\", \"interface\": \"impala\", \"type\": \"direct\", \"options\": {}}, \"hasCurlyBracketParameters\": true, \"chartScatterGroup\": null, \"settingsVisible\": false, \"errorsKlass\": \"results impala alert alert-error\", \"aceWarnings\": [], \"compatibilityCheckRunning\": false, \"isLoading\": false, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"bdf8bc09-0952-3662-1b46-c01bc5c9250d\", \"aceSize\": 100, \"chartData\": [], \"namespace\": {\"status\": \"CREATED\", \"computes\": [{\"credentials\": {}, \"type\": \"direct\", \"id\": \"ef1e2b8c-5446-4c75-b3ef-057cc2a90d4b\", \"name\": \"ef1e2b8c-5446-4c75-b3ef-057cc2a90d4b\"}], \"id\": \"ef1e2b8c-5446-4c75-b3ef-057cc2a90d4b\", \"name\": \"ef1e2b8c-5446-4c75-b3ef-057cc2a90d4b\"}, \"queriesHasErrors\": false, \"chartMapLabel\": null, \"editorMode\": true, \"status\": \"ready\", \"suggestion\": \"\", \"chartMapType\": \"marker\", \"queriesFilter\": \"\", \"queriesCurrentPage\": 1, \"isBatchable\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"database\": \"default\", \"hasSuggestion\": null, \"chartXPivot\": null, \"checkStatusTimeout\": null}], \"selectedSnippet\": \"impala\", \"type\": \"query-impala\", \"canSave\": false, \"historyFilter\": \"\", \"description\": \"Joe analyst Impala queries\", \"sessions\": [], \"updateHistoryFailed\": false, \"executingAllIndex\": 0, \"historyCurrentPage\": 1, \"presentationSnippets\": {}, \"isBatchable\": true, \"isHistory\": false, \"isPresentationModeDefault\": false, \"initialType\": \"impala\", \"coordinatorUuid\": null, \"name\": \"Joe analyst Impala queries\", \"isManaged\": false, \"isExecutingAll\": false, \"isHidingCode\": false, \"loadingScheduler\": false, \"viewSchedulerId\": \"\", \"isSaved\": true, \"isPresentationModeInitialized\": true, \"creatingSessionLocks\": [], \"directoryUuid\": \"\", \"parentSavedQueryUuid\": null, \"dependentsCoordinator\": []}','','2020-02-13 20:45:15.162691',1,0,1,11,'--working query\nselect state_tax from finance.tax_2015\n\n-- Data Quality annotation based policy: Don\'t waste time on poor quality datasets! (Analysts should not access table tagged with DATA_QUALITY score < 60%)\nselect * from cost_savings.claim_savings limit 5\n\n',0,0);
/*!40000 ALTER TABLE `desktop_document2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-14  4:45:53
