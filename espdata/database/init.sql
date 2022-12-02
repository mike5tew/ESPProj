-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: espdb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_year`
--

CREATE DATABASE IF NOT EXISTS `espdb` CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `espdb`;

DROP TABLE IF EXISTS `academic_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_year` (
  `Academic_YearID` bigint NOT NULL AUTO_INCREMENT,
  `YearName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Academic_YearID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_year`
--

LOCK TABLES `academic_year` WRITE;
/*!40000 ALTER TABLE `academic_year` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesslevel`
--

DROP TABLE IF EXISTS `accesslevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesslevel` (
  `accessLevelID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `levelOfAccess` int DEFAULT '0',
  UNIQUE KEY `accessLevelID` (`accessLevelID`),
  KEY `WDIDX_accesslevel_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_accesslevel_levelOfAccess` (`levelOfAccess`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesslevel`
--

LOCK TABLES `accesslevel` WRITE;
/*!40000 ALTER TABLE `accesslevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesslevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
  `whenAct` bigint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Act` tinyint DEFAULT '0',
  KEY `WDIDX_action_Lesson_outlineID` (`Lesson_outlineID`),
  KEY `WDIDX_action_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_action_IndividualsIDPosAct` (`IndividualsID`,`Act`),
  KEY `WDIDX_action_whenActIndividualsID` (`whenAct`,`IndividualsID`),
  KEY `WDIDX_actions_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_actions_Lesson_outlineID` (`Lesson_outlineID`),
  KEY `WDIDX_actions_WDIDX_action_IndividualsIDPosAct` (`IndividualsID`,`Act`),
  KEY `WDIDX_actions_WDIDX_action_whenActIndividualsID` (`whenAct`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `Act` tinyint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  `whenAct` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicants` (
  `ApplicantsID` bigint NOT NULL,
  `pupilForname` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PupilSurname` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PupilMiddleNames` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PupilDOB` bigint DEFAULT NULL,
  `UPN` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CurrentLA` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CurrentSchool` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LookedAfter` tinyint DEFAULT '0',
  `Statement` tinyint DEFAULT '0',
  `PupilAddressLine1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PupilAddressLine2` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PupilAddressLine3` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PupilAddressLine4` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PupilAddressLine5` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantForename` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantSurname` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantMiddleName` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `RelationshipToStudent` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantAddress1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantAddress2` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantAddress3` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantAddress4` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantAddress5` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PhoneContactID` int DEFAULT '0',
  `Email_Address` varchar(260) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PrefContact` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicationOutcome` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `YearEntryGroup` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ADTFileStatus` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CouncilTaxRef` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicantTitle` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Sibling` tinyint DEFAULT '0',
  `AptitudeCode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AptitudeText` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `ADTFileText` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `PupiilVerifiedAddress` tinyint DEFAULT '0',
  `PreferenceRank` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PreferenceReason` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PreferenceText` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `FaithText` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `DistanceFromSchool` int DEFAULT '0',
  `CrownService` tinyint DEFAULT '0',
  `InYearEntry` tinyint DEFAULT '0',
  `DatePlaceRequired` bigint DEFAULT NULL,
  `InYearText` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `ApplAddressAsPupil` tinyint DEFAULT '0',
  `OfferStatus` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ApplicantsID`),
  KEY `WDIDX_applicants_pupilForname` (`pupilForname`),
  KEY `WDIDX_applicants_PupilSurname` (`PupilSurname`),
  KEY `WDIDX_applicants_gender` (`gender`),
  KEY `WDIDX_applicants_LookedAfter` (`LookedAfter`),
  KEY `WDIDX_applicants_Statement` (`Statement`),
  KEY `WDIDX_applicants_PhoneContactID` (`PhoneContactID`),
  KEY `WDIDX_applicants_Email_Address` (`Email_Address`),
  KEY `WDIDX_applicants_PrefContact` (`PrefContact`),
  KEY `WDIDX_applicants_ApplicationOutcome` (`ApplicationOutcome`),
  KEY `WDIDX_applicants_YearEntryGroup` (`YearEntryGroup`),
  KEY `WDIDX_applicants_ADTFileStatus` (`ADTFileStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicationreferences`
--

DROP TABLE IF EXISTS `applicationreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicationreferences` (
  `ApplicationReferencesID` bigint NOT NULL,
  `UPN` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ApplicationRef` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ApplicationReferencesID`),
  KEY `WDIDX_applicationreferences_UPN` (`UPN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationreferences`
--

LOCK TABLES `applicationreferences` WRITE;
/*!40000 ALTER TABLE `applicationreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicationreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_appliesto`
--

DROP TABLE IF EXISTS `appointment_appliesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_appliesto` (
  `groupname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Appointment_appliesToID` bigint NOT NULL AUTO_INCREMENT,
  `indivOrGroupID` bigint DEFAULT '0',
  `AppointmentsID` bigint DEFAULT '0',
  `Staff` tinyint DEFAULT '0',
  `Student` tinyint DEFAULT '0',
  `Parents` tinyint DEFAULT '0',
  PRIMARY KEY (`Appointment_appliesToID`),
  KEY `WDIDX_appointment_appliesto_groupname` (`groupname`),
  KEY `WDIDX_appointment_appliesto_indivOrGroupID` (`indivOrGroupID`),
  KEY `WDIDX_appointment_appliesto_AppointmentsID` (`AppointmentsID`),
  KEY `WDIDX_appointment_appliesto_Staff` (`Staff`),
  KEY `WDIDX_appointment_appliesto_Student` (`Student`),
  KEY `WDIDX_appointment_appliesto_Parents` (`Parents`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appliesto`
--

LOCK TABLES `appointment_appliesto` WRITE;
/*!40000 ALTER TABLE `appointment_appliesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_appliesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `AppointmentsID` bigint NOT NULL AUTO_INCREMENT,
  `AppName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AppStart` bigint DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `replaceTimetable` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `memoID` bigint DEFAULT '0',
  `appointRepeatID` bigint DEFAULT '0',
  `UserID` bigint DEFAULT NULL,
  PRIMARY KEY (`AppointmentsID`),
  KEY `WDIDX_appointments_AppName` (`AppName`),
  KEY `WDIDX_appointments_location` (`location`),
  KEY `WDIDX_appointments_AppStart` (`AppStart`),
  KEY `WDIDX_appointments_EndTime` (`EndTime`),
  KEY `WDIDX_appointments_memoID` (`memoID`),
  KEY `WDIDX_appointments_appointRepeatID` (`appointRepeatID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointrepeat`
--

DROP TABLE IF EXISTS `appointrepeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointrepeat` (
  `appointRepeatID` bigint NOT NULL AUTO_INCREMENT,
  `repWeeks` int DEFAULT '0',
  `AppointmentsID` bigint DEFAULT '0',
  UNIQUE KEY `appointRepeatID` (`appointRepeatID`),
  KEY `WDIDX_appointrepeat_AppointmentsID` (`AppointmentsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointrepeat`
--

LOCK TABLES `appointrepeat` WRITE;
/*!40000 ALTER TABLE `appointrepeat` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointrepeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_description`
--

DROP TABLE IF EXISTS `assessment_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_description` (
  `Assessment_DescriptionID` bigint NOT NULL AUTO_INCREMENT,
  `AssessmentCode` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Assessment_description` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MadatoryCTF` tinyint DEFAULT '0',
  `ToBeDetermined` tinyint DEFAULT '0',
  `year7_2007equiv` tinyint DEFAULT '0',
  PRIMARY KEY (`Assessment_DescriptionID`),
  KEY `WDIDX_assessment_description_MadatoryCTF` (`MadatoryCTF`),
  KEY `WDIDX_assessment_description_ToBeDetermined` (`ToBeDetermined`),
  KEY `WDIDX_assessment_description_year7_2007equiv` (`year7_2007equiv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_description`
--

LOCK TABLES `assessment_description` WRITE;
/*!40000 ALTER TABLE `assessment_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_focuses`
--

DROP TABLE IF EXISTS `assessment_focuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_focuses` (
  `Assessment_FocusesID` bigint NOT NULL AUTO_INCREMENT,
  `subjectcode` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Component` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Component_Description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AssessmentFocus` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FocusID` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Assessment_Focus_Description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Assessment_FocusesID`),
  KEY `WDIDX_assessment_focuses_subjectcode` (`subjectcode`),
  KEY `WDIDX_assessment_focuses_Component` (`Component`),
  KEY `WDIDX_assessment_focuses_Component_Description` (`Component_Description`),
  KEY `WDIDX_assessment_focuses_AssessmentFocus` (`AssessmentFocus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_focuses`
--

LOCK TABLES `assessment_focuses` WRITE;
/*!40000 ALTER TABLE `assessment_focuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_focuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `Attendance_Code` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SessionsID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  KEY `WDIDX_attendance_SessionsID` (`SessionsID`),
  KEY `WDIDX_attendance_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_attendance_WDIDX_attendance_SessionsIDAttendance_Code` (`SessionsID`,`Attendance_Code`),
  KEY `WDIDX_attendance_WDIDX_Attendance_sessionsIDIndividualsID` (`SessionsID`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_key`
--

DROP TABLE IF EXISTS `attendance_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_key` (
  `Attendance_keyID` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Attendance_keyID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_key`
--

LOCK TABLES `attendance_key` WRITE;
/*!40000 ALTER TABLE `attendance_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audio_assignments`
--

DROP TABLE IF EXISTS `audio_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audio_assignments` (
  `Audio_AssignmentsID` bigint NOT NULL AUTO_INCREMENT,
  `Major_Incident_audioID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Known` tinyint DEFAULT '0',
  UNIQUE KEY `Audio_AssignmentsID` (`Audio_AssignmentsID`),
  KEY `WDIDX_audio_assignments_Major_Incident_audioID` (`Major_Incident_audioID`),
  KEY `WDIDX_audio_assignments_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_audio_assignments_WDIDX_Audio_Assignments_Major_Incid00000` (`Major_Incident_audioID`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audio_assignments`
--

LOCK TABLES `audio_assignments` WRITE;
/*!40000 ALTER TABLE `audio_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `audio_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audio_file`
--

DROP TABLE IF EXISTS `audio_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audio_file` (
  `Audio_fileID` bigint NOT NULL AUTO_INCREMENT,
  `TargetID` bigint DEFAULT '0',
  `Types_keyID` bigint DEFAULT '0',
  `filename` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CloudID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `Audio_fileID` (`Audio_fileID`),
  KEY `WDIDX_audio_file_TargetID` (`TargetID`),
  KEY `WDIDX_audio_file_Types_keyID` (`Types_keyID`),
  KEY `WDIDX_audio_file_filename` (`filename`),
  KEY `WDIDX_audio_file_CloudID` (`CloudID`),
  KEY `WDIDX_audio_file_WDIDX_audio_file_WDIDX_audio_file_WDIDX_Au00001` (`TargetID`,`Types_keyID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audio_file`
--

LOCK TABLES `audio_file` WRITE;
/*!40000 ALTER TABLE `audio_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `audio_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_references`
--

DROP TABLE IF EXISTS `book_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_references` (
  `Book_referencesID` bigint NOT NULL AUTO_INCREMENT,
  `BooksID` bigint DEFAULT '0',
  `Pages` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Lesson_FilesID` bigint DEFAULT '0',
  `Volume` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Book_referencesID`),
  KEY `WDIDX_book_references_BooksID` (`BooksID`),
  KEY `WDIDX_book_references_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_book_references_WDIDX_book_references_WDIDX_Book_refe00002` (`BooksID`,`Pages`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_references`
--

LOCK TABLES `book_references` WRITE;
/*!40000 ALTER TABLE `book_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BooksID` bigint NOT NULL AUTO_INCREMENT,
  `SubjectID` bigint DEFAULT '0',
  `ISBN` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Publisher` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BookTitle` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PublishedDate` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `JournalOrBook` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Edition` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BookDescription` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `BooksID` (`BooksID`),
  KEY `WDIDX_books_SubjectID` (`SubjectID`),
  KEY `WDIDX_books_ISBN` (`ISBN`),
  KEY `WDIDX_books_BookTitle` (`BookTitle`),
  KEY `WDIDX_books_JournalOrBook` (`JournalOrBook`),
  KEY `WDIDX_books_WDIDX_books_SubjectIDBookTitle` (`SubjectID`,`BookTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candtcodes`
--

DROP TABLE IF EXISTS `candtcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candtcodes` (
  `CandTCodesID` bigint NOT NULL,
  `DCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `OptionCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `OptionDesc` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`CandTCodesID`),
  KEY `WDIDX_candtcodes_DCode` (`DCode`),
  KEY `WDIDX_candtcodes_WDIDX_candtcodes_WDIDX_CandTCodes_DCodeOpt00003` (`DCode`,`OptionCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candtcodes`
--

LOCK TABLES `candtcodes` WRITE;
/*!40000 ALTER TABLE `candtcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `candtcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cbds_data_items`
--

DROP TABLE IF EXISTS `cbds_data_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cbds_data_items` (
  `CBDS_Data_itemsID` bigint NOT NULL AUTO_INCREMENT,
  `CBDS_Level` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CBDS_Module` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Identifier_1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Identifier_2` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Data_Item_Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Description` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Type_and_Format` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Code_set_Valid_Values` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Item_Level_Validation` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `XML_Tag` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Class_CBDS` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ESCS_ISB_Compliance` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ESCS_Data_Model` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SIF_Specification` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Collection_Notes` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Mandatory_Notes` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Output_Notes` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `History_Notes` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Multiplicity_Notes` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Source_s` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Item_CBDS_Level` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `RFC_Number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Creation_Date` bigint DEFAULT NULL,
  `Implementation_Date` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Cut_Off_Date` bigint DEFAULT NULL,
  `Data_Item_review_date` bigint DEFAULT NULL,
  `Spring_School_Census_2016` tinyint DEFAULT '0',
  `Summer_School_Census_2016` int DEFAULT '0',
  `Early_Years_2016` int DEFAULT '0',
  `CIN_Cenus_2016_17` int DEFAULT '0',
  `Alt_Provision_2016` int DEFAULT '0',
  `EYFSP_2016` int DEFAULT '0',
  `Phonics_2016` int DEFAULT '0',
  `Keystage_1_2016` int DEFAULT '0',
  `School_Workforce_Census_2016` int DEFAULT '0',
  `Autumn_School_Census_2016` int DEFAULT '0',
  `Child_Social_Work_Worforce_2016` int DEFAULT '0',
  `Spring_School_Census_2017` int DEFAULT '0',
  `Summer_School_Census_2017` int DEFAULT '0',
  `CIN_Census_2017_18` int DEFAULT '0',
  `Alt_Provision_2017` int DEFAULT '0',
  `Early_Years_2017` int DEFAULT '0',
  `SLASC_2017` int DEFAULT '0',
  `EYFSP_2017` int DEFAULT '0',
  `Phonics_2017` int DEFAULT '0',
  `Keystage_1_2017` int DEFAULT '0',
  `School_Workforce_Census_2017` int DEFAULT '0',
  `Child_Social_Work_Worforce_2017` int DEFAULT '0',
  `Autumn_School_Census_2017` int DEFAULT '0',
  `Spring_School_Census_2018` int DEFAULT '0',
  `Summer_School_Census_2018` int DEFAULT '0',
  `Alt_Provision_2018` int DEFAULT '0',
  `ADT_for_admission_in_Sept_2016` int DEFAULT '0',
  `ALT_for_admission_in_Sept_2016` int DEFAULT '0',
  `ASL_for_admission_in_Sept_2016` int DEFAULT '0',
  `APT_for_admission_in_Sept_2016` int DEFAULT '0',
  `AOT_for_admission_in_Sept_2016` int DEFAULT '0',
  `CTF_16` int DEFAULT '0',
  `CTF_17` int DEFAULT '0',
  `Windev_tables_equiv` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`CBDS_Data_itemsID`),
  KEY `WDIDX_cbds_data_items_CBDS_Level` (`CBDS_Level`),
  KEY `WDIDX_cbds_data_items_CBDS_Module` (`CBDS_Module`),
  KEY `WDIDX_cbds_data_items_Identifier_1` (`Identifier_1`),
  KEY `WDIDX_cbds_data_items_Identifier_2` (`Identifier_2`),
  KEY `WDIDX_cbds_data_items_Data_Item_Name` (`Data_Item_Name`),
  KEY `WDIDX_cbds_data_items_XML_Tag` (`XML_Tag`),
  KEY `WDIDX_cbds_data_items_Class_CBDS` (`Class_CBDS`),
  KEY `WDIDX_cbds_data_items_ESCS_ISB_Compliance` (`ESCS_ISB_Compliance`),
  KEY `WDIDX_cbds_data_items_Status` (`Status`),
  KEY `WDIDX_cbds_data_items_SIF_Specification` (`SIF_Specification`),
  KEY `WDIDX_cbds_data_items_Mandatory_Notes` (`Mandatory_Notes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbds_data_items`
--

LOCK TABLES `cbds_data_items` WRITE;
/*!40000 ALTER TABLE `cbds_data_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cbds_data_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childreninneed`
--

DROP TABLE IF EXISTS `childreninneed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `childreninneed` (
  `ChildrenInNeedID` bigint NOT NULL AUTO_INCREMENT,
  `Referral_Date` bigint NOT NULL DEFAULT '0',
  `Primary_Need_Code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CIN_Closure_Date` bigint NOT NULL DEFAULT '0',
  `Reason_for_Closure` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `IndividualsID` bigint DEFAULT '0',
  `Open_Case_Information` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Child_Protection_Plan_start_date` bigint NOT NULL DEFAULT '0',
  `Number_of_previous_Child_Protection_Plans` tinyint DEFAULT '0',
  `Target_Date_for_Initial_Child_Protection_Conference` bigint NOT NULL DEFAULT '0',
  `Date_of_Initial_Child_Protection_Conference` bigint NOT NULL DEFAULT '0',
  `ICPC_not_required` tinyint DEFAULT '0',
  `Referral_No_Further_Action_Flag` tinyint DEFAULT '0',
  `Child_Protection_Plan_End_Date` bigint NOT NULL DEFAULT '0',
  `Initial_Category_of_Abuse` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Plan_Review_Date` bigint NOT NULL DEFAULT '0',
  `Latest_Category_of_Abuse` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Section_47_Enquiry_Actual_Start_Date` bigint NOT NULL DEFAULT '0',
  `Seen_by_Social_Worker` tinyint DEFAULT '0',
  `Assessment_Actual_Start_Date` bigint NOT NULL DEFAULT '0',
  `Source_of_Referral` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Assessment_Authorisation_Date` bigint NOT NULL DEFAULT '0',
  `Assessment_Internal_Review_Date` bigint NOT NULL DEFAULT '0',
  `Factors_Identified_at_Assessment` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ChildrenInNeedID`),
  KEY `WDIDX_childreninneed_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childreninneed`
--

LOCK TABLES `childreninneed` WRITE;
/*!40000 ALTER TABLE `childreninneed` DISABLE KEYS */;
/*!40000 ALTER TABLE `childreninneed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `CollectionsID` bigint NOT NULL AUTO_INCREMENT,
  `Collection_Code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Collection_Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`CollectionsID`),
  KEY `WDIDX_collections_Collection_Name` (`Collection_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactrelationship`
--

DROP TABLE IF EXISTS `contactrelationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactrelationship` (
  `ContactRelationshipID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `ContactsID` bigint DEFAULT '0',
  `Contact_Relationship_to_pupil_child` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `WDIDX_contactrelationship_Archived` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Archived` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Priority` int DEFAULT NULL,
  PRIMARY KEY (`ContactRelationshipID`),
  KEY `WDIDX_contactrelationship_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_contactrelationship_ContactsID` (`ContactsID`),
  KEY `WDIDX_contactrelationship_Priority` (`Priority`),
  KEY `WDIDX_contactrelationship_WDIDX_contactrelationship_Individ00004` (`IndividualsID`,`ContactsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactrelationship`
--

LOCK TABLES `contactrelationship` WRITE;
/*!40000 ALTER TABLE `contactrelationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactrelationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `ContactsID` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `surname` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `forename` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MiddleNames` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Responsibility` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Email_Address` varchar(260) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ZipCode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ContactsID`),
  KEY `WDIDX_contacts_surname` (`surname`),
  KEY `WDIDX_contacts_forename` (`forename`),
  KEY `WDIDX_contacts_gender` (`gender`),
  KEY `WDIDX_contacts_Email_Address` (`Email_Address`),
  KEY `WDIDX_contacts_WDIDX_contacts_forenamesurname` (`forename`,`surname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_plan_header`
--

DROP TABLE IF EXISTS `course_plan_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_plan_header` (
  `Course_plan_headerID` bigint NOT NULL AUTO_INCREMENT,
  `AllorSubOnly` int DEFAULT NULL,
  `title` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `StartDate` bigint NOT NULL DEFAULT '0',
  `DeadlinesID` bigint DEFAULT '0',
  `lessonsAvail` int DEFAULT '0',
  `CoursesID` bigint DEFAULT '0',
  `GroupAppliesTo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EndDate` bigint DEFAULT '0',
  UNIQUE KEY `Course_plan_headerID` (`Course_plan_headerID`),
  KEY `WDIDX_course_plan_header_StartDate` (`StartDate`),
  KEY `WDIDX_course_plan_header_CoursesID` (`CoursesID`),
  KEY `WDIDX_course_plan_header_GroupAppliesTo` (`GroupAppliesTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_plan_header`
--

LOCK TABLES `course_plan_header` WRITE;
/*!40000 ALTER TABLE `course_plan_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_plan_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_segment`
--

DROP TABLE IF EXISTS `course_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_segment` (
  `Course_segmentID` bigint NOT NULL AUTO_INCREMENT,
  `course_plan_headerID` bigint DEFAULT '0',
  `TopicsID` bigint DEFAULT '0',
  `Last_SessionsID` bigint DEFAULT '0',
  `lessonsUsed` int DEFAULT '0',
  UNIQUE KEY `Course_segmentID` (`Course_segmentID`),
  KEY `WDIDX_course_segment_course_plan_headerID` (`course_plan_headerID`),
  KEY `WDIDX_course_segment_TopicsID` (`TopicsID`),
  KEY `WDIDX_course_segment_Last_SessionsID` (`Last_SessionsID`),
  KEY `WDIDX_course_segment_WDIDX_Course_segment_Course_plan_heade00005` (`course_plan_headerID`,`TopicsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_segment`
--

LOCK TABLES `course_segment` WRITE;
/*!40000 ALTER TABLE `course_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CoursesID` bigint NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `courseCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SubjectID` bigint DEFAULT '0',
  `LocalFoldersID` bigint DEFAULT '0',
  `hidden` int DEFAULT '0',
  PRIMARY KEY (`CoursesID`),
  KEY `WDIDX_courses_course_name` (`course_name`),
  KEY `WDIDX_courses_courseCode` (`courseCode`),
  KEY `WDIDX_courses_SubjectID` (`SubjectID`),
  KEY `WDIDX_courses_LocalFoldersID` (`LocalFoldersID`),
  KEY `WDIDX_courses_hidden` (`hidden`),
  KEY `WDIDX_courses_WDIDX_courses_WDIDX_Courses_NameSubjectID` (`course_name`,`SubjectID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'AQA Science Trilogy ','KS4',1,0,0);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_timings`
--

DROP TABLE IF EXISTS `day_timings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_timings` (
  `Period_Id` bigint NOT NULL AUTO_INCREMENT,
  `dy` int DEFAULT '0',
  `finish` time DEFAULT NULL,
  `appliesToGroup` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `periodName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `strt` time DEFAULT NULL,
  `Academic_YearID` bigint DEFAULT '0',
  PRIMARY KEY (`Period_Id`),
  KEY `WDIDX_day_timings_dy` (`dy`),
  KEY `WDIDX_day_timings_finish` (`finish`),
  KEY `WDIDX_day_timings_appliesToGroup` (`appliesToGroup`),
  KEY `WDIDX_day_timings_periodName` (`periodName`),
  KEY `WDIDX_day_timings_strt` (`strt`),
  KEY `WDIDX_day_timings_Academic_YearID` (`Academic_YearID`),
  KEY `WDIDX_day_timings_WDIDX_day_timings_WDIDX_day_timings_dayap00006` (`dy`,`appliesToGroup`),
  KEY `WDIDX_day_timings_WDIDX_day_timings_WDIDX_day_timings_daype00007` (`dy`,`periodName`,`appliesToGroup`),
  KEY `WDIDX_day_timings_WDIDX_day_timings_WDIDX_day_timings_Optim00008` (`dy`,`finish`),
  KEY `WDIDX_day_timings_WDIDX_day_timings_WDIDX_day_timings_Optim00009` (`strt`,`dy`,`finish`),
  KEY `WDIDX_day_timings_WDIDX_day_timings_WDIDX_day_timings_Optim00010` (`strt`,`Period_Id`,`dy`,`finish`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_timings`
--

LOCK TABLES `day_timings` WRITE;
/*!40000 ALTER TABLE `day_timings` DISABLE KEYS */;
/*!40000 ALTER TABLE `day_timings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deadcheck`
--

DROP TABLE IF EXISTS `deadcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deadcheck` (
  `DeadCheckID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `DeadlinesID` bigint DEFAULT '0',
  `Completed` bigint DEFAULT NULL,
  UNIQUE KEY `DeadCheckID` (`DeadCheckID`),
  UNIQUE KEY `DeadlinesID` (`DeadlinesID`),
  KEY `WDIDX_deadcheck_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_deadcheck_Completed` (`Completed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadcheck`
--

LOCK TABLES `deadcheck` WRITE;
/*!40000 ALTER TABLE `deadcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `deadcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deadline_appliesto`
--

DROP TABLE IF EXISTS `deadline_appliesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deadline_appliesto` (
  `deadline_appliesToID` bigint NOT NULL AUTO_INCREMENT,
  `groupname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Staff` tinyint DEFAULT '0',
  `Student` tinyint DEFAULT '0',
  `Parents` tinyint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `DeadlinesID` bigint DEFAULT '0',
  PRIMARY KEY (`deadline_appliesToID`),
  KEY `WDIDX_deadline_appliesto_groupname` (`groupname`),
  KEY `WDIDX_deadline_appliesto_Staff` (`Staff`),
  KEY `WDIDX_deadline_appliesto_Student` (`Student`),
  KEY `WDIDX_deadline_appliesto_Parents` (`Parents`),
  KEY `WDIDX_deadline_appliesto_DeadlinesID` (`DeadlinesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadline_appliesto`
--

LOCK TABLES `deadline_appliesto` WRITE;
/*!40000 ALTER TABLE `deadline_appliesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `deadline_appliesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deadlines`
--

DROP TABLE IF EXISTS `deadlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deadlines` (
  `DeadlinesID` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UserID` bigint DEFAULT '0',
  `DeadlineTime` time DEFAULT NULL,
  `DeadlineDate` bigint NOT NULL DEFAULT '0',
  `Completed` bigint NOT NULL DEFAULT '0',
  `Types_keyID` bigint DEFAULT '0',
  `memoID` bigint DEFAULT '0',
  `groupname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`DeadlinesID`),
  KEY `WDIDX_deadlines_UserID` (`UserID`),
  KEY `WDIDX_deadlines_DeadlineDate` (`DeadlineDate`),
  KEY `WDIDX_deadlines_Completed` (`Completed`),
  KEY `WDIDX_deadlines_Types_keyID` (`Types_keyID`),
  KEY `WDIDX_deadlines_memoID` (`memoID`),
  KEY `WDIDX_deadlines_groupname` (`groupname`),
  KEY `WDIDX_deadlines_WDIDX_deadlines_WDIDX_deadlines_WDIDX_deadl00011` (`title`,`DeadlineDate`),
  KEY `WDIDX_deadlines_WDIDX_deadlines_WDIDX_deadlines_WDIDX_Deadl00012` (`title`,`DeadlineDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadlines`
--

LOCK TABLES `deadlines` WRITE;
/*!40000 ALTER TABLE `deadlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `deadlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dismissedlast`
--

DROP TABLE IF EXISTS `dismissedlast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dismissedlast` (
  `IndividualsID` bigint DEFAULT '0',
  `SessionsID` bigint DEFAULT '0',
  `nLastDis` bigint DEFAULT '0',
  KEY `WDIDX_dismissedlast_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_dismissedlast_SessionsID` (`SessionsID`),
  KEY `WDIDX_dismissedlast_nLastDis` (`nLastDis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dismissedlast`
--

LOCK TABLES `dismissedlast` WRITE;
/*!40000 ALTER TABLE `dismissedlast` DISABLE KEYS */;
/*!40000 ALTER TABLE `dismissedlast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-09-08 11:21:45.733617'),(2,'auth','0001_initial','2022-09-08 11:21:46.003561'),(3,'admin','0001_initial','2022-09-08 11:21:46.065457'),(4,'admin','0002_logentry_remove_auto_add','2022-09-08 11:21:46.086377'),(5,'admin','0003_logentry_add_action_flag_choices','2022-09-08 11:21:46.106316'),(6,'contenttypes','0002_remove_content_type_name','2022-09-08 11:21:46.154804'),(7,'auth','0002_alter_permission_name_max_length','2022-09-08 11:21:46.182491'),(8,'auth','0003_alter_user_email_max_length','2022-09-08 11:21:46.215485'),(9,'auth','0004_alter_user_username_opts','2022-09-08 11:21:46.237426'),(10,'auth','0005_alter_user_last_login_null','2022-09-08 11:21:46.264266'),(11,'auth','0006_require_contenttypes_0002','2022-09-08 11:21:46.278232'),(12,'auth','0007_alter_validators_add_error_messages','2022-09-08 11:21:46.307155'),(13,'auth','0008_alter_user_username_max_length','2022-09-08 11:21:46.337123'),(14,'auth','0009_alter_user_last_name_max_length','2022-09-08 11:21:46.365207'),(15,'auth','0010_alter_group_name_max_length','2022-09-08 11:21:46.396995'),(16,'auth','0011_update_proxy_permissions','2022-09-08 11:21:46.416943'),(17,'auth','0012_alter_user_first_name_max_length','2022-09-08 11:21:46.445847'),(18,'sessions','0001_initial','2022-09-08 11:21:46.476006');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dwelling_occupants`
--

DROP TABLE IF EXISTS `dwelling_occupants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwelling_occupants` (
  `Dwelling_OccupantsID` bigint NOT NULL AUTO_INCREMENT,
  `DwellingsID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `ContactsID` bigint DEFAULT '0',
  PRIMARY KEY (`Dwelling_OccupantsID`),
  KEY `WDIDX_dwelling_occupants_DwellingsID` (`DwellingsID`),
  KEY `WDIDX_dwelling_occupants_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_dwelling_occupants_ContactsID` (`ContactsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dwelling_occupants`
--

LOCK TABLES `dwelling_occupants` WRITE;
/*!40000 ALTER TABLE `dwelling_occupants` DISABLE KEYS */;
/*!40000 ALTER TABLE `dwelling_occupants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dwellings`
--

DROP TABLE IF EXISTS `dwellings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwellings` (
  `DwellingsID` bigint NOT NULL AUTO_INCREMENT,
  `SubNameOrNumber` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `BuildNameNumber` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Street` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Locality` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Town` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AdminArea` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PostTown` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PostCode` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PropertyEasting` decimal(24,6) DEFAULT '0.000000',
  `PropertyNorthing` decimal(24,6) DEFAULT '0.000000',
  `AddressLine1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AddressLine2` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AddressLine3` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AddressLine4` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AddressLine5` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PhoneContactID` int DEFAULT '0',
  PRIMARY KEY (`DwellingsID`),
  KEY `WDIDX_dwellings_PhoneContactID` (`PhoneContactID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dwellings`
--

LOCK TABLES `dwellings` WRITE;
/*!40000 ALTER TABLE `dwellings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dwellings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `effortrecorder`
--

DROP TABLE IF EXISTS `effortrecorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `effortrecorder` (
  `EffortRecorderID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  `Effortscore` tinyint DEFAULT '0',
  UNIQUE KEY `EffortRecorderID` (`EffortRecorderID`),
  KEY `WDIDX_effortrecorder_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_effortrecorder_Lesson_outlineID` (`Lesson_outlineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `effortrecorder`
--

LOCK TABLES `effortrecorder` WRITE;
/*!40000 ALTER TABLE `effortrecorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `effortrecorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emaillinkedarchive`
--

DROP TABLE IF EXISTS `emaillinkedarchive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emaillinkedarchive` (
  `emailLinkedArchiveID` bigint NOT NULL AUTO_INCREMENT,
  `EmailID` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ConversationID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `From` varchar(50) DEFAULT NULL,
  `Preview` varchar(200) DEFAULT NULL,
  `Received` bigint DEFAULT '0',
  `Subject` varchar(100) DEFAULT NULL,
  UNIQUE KEY `emailLinkedArchiveID` (`emailLinkedArchiveID`),
  KEY `WDIDX_emaillinkedarchive_EmailID` (`EmailID`),
  KEY `WDIDX_emaillinkedarchive_ConversationID` (`ConversationID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emaillinkedarchive`
--

LOCK TABLES `emaillinkedarchive` WRITE;
/*!40000 ALTER TABLE `emaillinkedarchive` DISABLE KEYS */;
/*!40000 ALTER TABLE `emaillinkedarchive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entities`
--

DROP TABLE IF EXISTS `entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entities` (
  `EntitiesID` bigint NOT NULL AUTO_INCREMENT,
  `Ent_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tier` int DEFAULT '0',
  PRIMARY KEY (`EntitiesID`),
  KEY `WDIDX_entities_Ent_type` (`Ent_type`),
  KEY `WDIDX_entities_tier` (`tier`),
  KEY `WDIDX_entities_WDIDX_entities_WDIDX_Entities_OptimCompKey_t00013` (`tier`,`EntitiesID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entities`
--

LOCK TABLES `entities` WRITE;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` VALUES (1,'student',1),(2,'teacher',1),(3,'class',2),(4,'year group',3),(5,'keystage',4);
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ethnicitydetails`
--

DROP TABLE IF EXISTS `ethnicitydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ethnicitydetails` (
  `EthnicityID` bigint NOT NULL AUTO_INCREMENT,
  `ExtendedCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ExtendedName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MainCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SubCategory` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CategoryNotes` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MainCategory` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`EthnicityID`),
  KEY `WDIDX_ethnicitydetails_MainCode` (`MainCode`),
  KEY `WDIDX_ethnicitydetails_SubCategory` (`SubCategory`),
  KEY `WDIDX_ethnicitydetails_MainCategory` (`MainCategory`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ethnicitydetails`
--

LOCK TABLES `ethnicitydetails` WRITE;
/*!40000 ALTER TABLE `ethnicitydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ethnicitydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalfile`
--

DROP TABLE IF EXISTS `externalfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `externalfile` (
  `ExternalFileID` bigint NOT NULL AUTO_INCREMENT,
  `filename` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `ExternalFileID` (`ExternalFileID`),
  KEY `WDIDX_externalfile_filename` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalfile`
--

LOCK TABLES `externalfile` WRITE;
/*!40000 ALTER TABLE `externalfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `externalfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_types`
--

DROP TABLE IF EXISTS `file_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_types` (
  `File_TypesID` bigint NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`File_TypesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_types`
--

LOCK TABLES `file_types` WRITE;
/*!40000 ALTER TABLE `file_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filegroup`
--

DROP TABLE IF EXISTS `filegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filegroup` (
  `FileGroupID` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`FileGroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filegroup`
--

LOCK TABLES `filegroup` WRITE;
/*!40000 ALTER TABLE `filegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `filegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foc_reg_header`
--

DROP TABLE IF EXISTS `foc_reg_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foc_reg_header` (
  `Foc_reg_headerID` bigint NOT NULL AUTO_INCREMENT,
  `Register_typesID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Summary` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `conatct_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contact_email` varchar(260) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Foc_reg_headerID`),
  KEY `WDIDX_foc_reg_header_Register_typesID` (`Register_typesID`),
  KEY `WDIDX_foc_reg_header_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_foc_reg_header_WDIDX_foc_reg_header_WDIDX_Foc_reg_hea00014` (`Register_typesID`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foc_reg_header`
--

LOCK TABLES `foc_reg_header` WRITE;
/*!40000 ALTER TABLE `foc_reg_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `foc_reg_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foc_reg_log`
--

DROP TABLE IF EXISTS `foc_reg_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foc_reg_log` (
  `Foc_reg_logID` bigint NOT NULL AUTO_INCREMENT,
  `Foc_reg_headerID` bigint DEFAULT '0',
  `Date_of_entry` bigint NOT NULL DEFAULT '0',
  `Issue_or_support` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `entry` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Foc_reg_logID`),
  KEY `WDIDX_foc_reg_log_Foc_reg_headerID` (`Foc_reg_headerID`),
  KEY `WDIDX_foc_reg_log_Date_of_entry` (`Date_of_entry`),
  KEY `WDIDX_foc_reg_log_Issue_or_support` (`Issue_or_support`),
  KEY `WDIDX_foc_reg_log_WDIDX_foc_reg_log_WDIDX_Foc_reg_log_Date_00015` (`Date_of_entry`,`Foc_reg_headerID`,`Issue_or_support`),
  KEY `WDIDX_foc_reg_log_WDIDX_foc_reg_log_WDIDX_Foc_reg_log_Optim00016` (`Issue_or_support`,`Foc_reg_headerID`),
  KEY `WDIDX_foc_reg_log_WDIDX_foc_reg_log_WDIDX_Foc_reg_log_Optim00017` (`Issue_or_support`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foc_reg_log`
--

LOCK TABLES `foc_reg_log` WRITE;
/*!40000 ALTER TABLE `foc_reg_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `foc_reg_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focusregcolourcodes`
--

DROP TABLE IF EXISTS `focusregcolourcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `focusregcolourcodes` (
  `FocusRegColourCodesID` bigint NOT NULL AUTO_INCREMENT,
  `ColorCode` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`FocusRegColourCodesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focusregcolourcodes`
--

LOCK TABLES `focusregcolourcodes` WRITE;
/*!40000 ALTER TABLE `focusregcolourcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `focusregcolourcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folderids`
--

DROP TABLE IF EXISTS `folderids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folderids` (
  `FolderIDsID` bigint NOT NULL AUTO_INCREMENT,
  `FolderName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OneDriveFolderID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`FolderIDsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folderids`
--

LOCK TABLES `folderids` WRITE;
/*!40000 ALTER TABLE `folderids` DISABLE KEYS */;
/*!40000 ALTER TABLE `folderids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gclientdata`
--

DROP TABLE IF EXISTS `gclientdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gclientdata` (
  `gClientDataID` bigint NOT NULL AUTO_INCREMENT,
  `access_token` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_token` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `expires_in` int DEFAULT '0',
  `token_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `refresh_token` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `gClientDataID` (`gClientDataID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gclientdata`
--

LOCK TABLES `gclientdata` WRITE;
/*!40000 ALTER TABLE `gclientdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `gclientdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradeboundaries`
--

DROP TABLE IF EXISTS `gradeboundaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradeboundaries` (
  `GradeBoundariesID` bigint NOT NULL AUTO_INCREMENT,
  `Lesson_FilesID` bigint DEFAULT '0',
  `Mark` int DEFAULT '0',
  `grade` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`GradeBoundariesID`),
  KEY `WDIDX_gradeboundaries_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_gradeboundaries_Mark` (`Mark`),
  KEY `WDIDX_gradeboundaries_grade` (`grade`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradeboundaries`
--

LOCK TABLES `gradeboundaries` WRITE;
/*!40000 ALTER TABLE `gradeboundaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `gradeboundaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_hierarchy`
--

DROP TABLE IF EXISTS `group_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_hierarchy` (
  `Parent_group` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `Offspring_group` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  KEY `WDIDX_group_hierarchy_Parent_group` (`Parent_group`),
  KEY `WDIDX_group_hierarchy_Offspring_group` (`Offspring_group`),
  KEY `WDIDX_group_hierarchy_WDIDX_group_hierarchy_WDIDX_group_hie00018` (`Parent_group`,`Offspring_group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_hierarchy`
--

LOCK TABLES `group_hierarchy` WRITE;
/*!40000 ALTER TABLE `group_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_membership`
--

DROP TABLE IF EXISTS `group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_membership` (
  `GroupMembershipID` int NOT NULL AUTO_INCREMENT,
  `groupname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint NOT NULL DEFAULT '0',
  `Target` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SubjectID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`GroupMembershipID`),
  KEY `WDIDX_group_membership_groupname` (`groupname`),
  KEY `WDIDX_group_membership_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_group_membership_SubjectID` (`SubjectID`),
  KEY `WDIDX_group_membership_WDIDX_group_membership_groupnameIndi00019` (`groupname`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_membership`
--

LOCK TABLES `group_membership` WRITE;
/*!40000 ALTER TABLE `group_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_totals`
--

DROP TABLE IF EXISTS `group_totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_totals` (
  `Group_totalsID` bigint NOT NULL AUTO_INCREMENT,
  `groupname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TargetsID` bigint DEFAULT '0',
  `Totalpoints` tinyint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  `Threshold` int DEFAULT '0',
  `groupOrEveryone` tinyint DEFAULT '0',
  UNIQUE KEY `Group_totalsID` (`Group_totalsID`),
  KEY `WDIDX_group_totals_groupname` (`groupname`),
  KEY `WDIDX_group_totals_TargetsID` (`TargetsID`),
  KEY `WDIDX_group_totals_Lesson_outlineID` (`Lesson_outlineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_totals`
--

LOCK TABLES `group_totals` WRITE;
/*!40000 ALTER TABLE `group_totals` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_totals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helppoints`
--

DROP TABLE IF EXISTS `helppoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `helppoints` (
  `helpPointsID` bigint NOT NULL AUTO_INCREMENT,
  `DateAndTime` timestamp NULL DEFAULT NULL,
  `IndividualsID` bigint DEFAULT '0',
  `RecordedBy` bigint DEFAULT '0',
  UNIQUE KEY `helpPointsID` (`helpPointsID`),
  KEY `WDIDX_helppoints_DateAndTime` (`DateAndTime`),
  KEY `WDIDX_helppoints_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_helppoints_RecordedBy` (`RecordedBy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helppoints`
--

LOCK TABLES `helppoints` WRITE;
/*!40000 ALTER TABLE `helppoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `helppoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_assignments`
--

DROP TABLE IF EXISTS `image_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_assignments` (
  `Image_assignmentsID` bigint NOT NULL AUTO_INCREMENT,
  `Major_Incident_imagesID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Known` tinyint DEFAULT '0',
  UNIQUE KEY `Image_assignmentsID` (`Image_assignmentsID`),
  KEY `WDIDX_image_assignments_Major_Incident_imagesID` (`Major_Incident_imagesID`),
  KEY `WDIDX_image_assignments_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_image_assignments_WDIDX_Image_assignments_Major_Incid00020` (`Major_Incident_imagesID`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_assignments`
--

LOCK TABLES `image_assignments` WRITE;
/*!40000 ALTER TABLE `image_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_unknowns`
--

DROP TABLE IF EXISTS `incident_unknowns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident_unknowns` (
  `Incident_unknownsID` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Major_transgression_logID` bigint DEFAULT '0',
  UNIQUE KEY `Incident_unknownsID` (`Incident_unknownsID`),
  KEY `WDIDX_incident_unknowns_Name` (`Name`),
  KEY `WDIDX_incident_unknowns_Major_transgression_logID` (`Major_transgression_logID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_unknowns`
--

LOCK TABLES `incident_unknowns` WRITE;
/*!40000 ALTER TABLE `incident_unknowns` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_unknowns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individuals`
--

DROP TABLE IF EXISTS `individuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individuals` (
  `IndividualsID` bigint NOT NULL AUTO_INCREMENT,
  `forename` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `surname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `preferred` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dob` bigint DEFAULT NULL,
  `title` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `Photo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'default-user-image.png',
  `Email_Address` varchar(260) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EntitiesID` bigint DEFAULT '0',
  `exam_number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `loginCode` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ID_numb` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Passw` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `reading_age` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Spelling_age` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `hasPhoto` tinyint DEFAULT '0',
  `MicrosoftID` varchar(100) DEFAULT NULL,
  `MiddleNames` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FormerSurname` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UPN_Unknown_Reason` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Learner_Support_Code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Pupil_s_Former_UPN` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Pupil_Preferred_Surname` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Uniq_Learner_Number_ULN` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LA_Child_ID` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Expected_Date_of_Birth` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Date_of_Death` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Unique_Candidate_Identifier_UCI` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Uniq_Pupil_Number_UPN` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `RestPassw` tinyint DEFAULT '0',
  `GgID` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EthnicityID` bigint DEFAULT NULL,
  UNIQUE KEY `IndividualsID` (`IndividualsID`),
  KEY `WDIDX_individuals_forename` (`forename`),
  KEY `WDIDX_individuals_surname` (`surname`),
  KEY `WDIDX_individuals_preferred` (`preferred`),
  KEY `WDIDX_individuals_dob` (`dob`),
  KEY `WDIDX_individuals_gender` (`gender`),
  KEY `WDIDX_individuals_Photo` (`Photo`),
  KEY `WDIDX_individuals_Email_Address` (`Email_Address`),
  KEY `WDIDX_individuals_EntitiesID` (`EntitiesID`),
  KEY `WDIDX_individuals_exam_number` (`exam_number`),
  KEY `WDIDX_individuals_loginCode` (`loginCode`),
  KEY `WDIDX_individuals_ID_numb` (`ID_numb`),
  KEY `WDIDX_individuals_MicrosoftID` (`MicrosoftID`),
  KEY `WDIDX_individuals_FormerSurname` (`FormerSurname`),
  KEY `WDIDX_individuals_Pupil_s_Former_UPN` (`Pupil_s_Former_UPN`),
  KEY `WDIDX_individuals_Pupil_Preferred_Surname` (`Pupil_Preferred_Surname`),
  KEY `WDIDX_individuals_Uniq_Learner_Number_ULN` (`Uniq_Learner_Number_ULN`),
  KEY `WDIDX_individuals_LA_Child_ID` (`LA_Child_ID`),
  KEY `WDIDX_individuals_Expected_Date_of_Birth` (`Expected_Date_of_Birth`),
  KEY `WDIDX_individuals_Date_of_Death` (`Date_of_Death`),
  KEY `WDIDX_individuals_Unique_Candidate_Identifier_UCI` (`Unique_Candidate_Identifier_UCI`),
  KEY `WDIDX_individuals_Uniq_Pupil_Number_UPN` (`Uniq_Pupil_Number_UPN`),
  KEY `WDIDX_individuals_RestPassw` (`RestPassw`),
  KEY `WDIDX_individuals_GgID` (`GgID`),
  KEY `WDIDX_individuals_EthnicityID` (`EthnicityID`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_foren00021` (`forename`,`surname`,`dob`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_foren00022` (`forename`,`surname`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_Optim00023` (`surname`,`forename`,`EntitiesID`,`preferred`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_Optim00024` (`IndividualsID`,`EntitiesID`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_Optim00025` (`surname`,`EntitiesID`,`forename`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_Optim00026` (`surname`,`EntitiesID`,`loginCode`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_Optim00027` (`IndividualsID`,`surname`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_Optim00028` (`surname`,`forename`),
  KEY `WDIDX_individuals_WDIDX_individuals_WDIDX_Individuals_Optim00029` (`surname`,`forename`,`EntitiesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individuals`
--

LOCK TABLES `individuals` WRITE;
/*!40000 ALTER TABLE `individuals` DISABLE KEYS */;
/*!40000 ALTER TABLE `individuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_educational_psychologists`
--

DROP TABLE IF EXISTS `la_educational_psychologists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `la_educational_psychologists` (
  `Workforce_Educational_psychologistsID` bigint NOT NULL AUTO_INCREMENT,
  `Educational_Psychologists_Full_Time` int DEFAULT '0',
  `Educational_Psychologists_Part_Time` int DEFAULT '0',
  `Educational_Psychologists_FTE` decimal(24,6) DEFAULT '0.000000',
  PRIMARY KEY (`Workforce_Educational_psychologistsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_educational_psychologists`
--

LOCK TABLES `la_educational_psychologists` WRITE;
/*!40000 ALTER TABLE `la_educational_psychologists` DISABLE KEYS */;
/*!40000 ALTER TABLE `la_educational_psychologists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_lookup`
--

DROP TABLE IF EXISTS `language_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_lookup` (
  `Language_LookUpID` bigint NOT NULL AUTO_INCREMENT,
  `OriginalCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OldLanguageName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NewLanguageCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NewLanguageName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NewDialectCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DialectCodeAvail` tinyint DEFAULT '0',
  `CodeChange` tinyint DEFAULT '0',
  PRIMARY KEY (`Language_LookUpID`),
  KEY `WDIDX_language_lookup_OriginalCode` (`OriginalCode`),
  KEY `WDIDX_language_lookup_OldLanguageName` (`OldLanguageName`),
  KEY `WDIDX_language_lookup_NewLanguageCode` (`NewLanguageCode`),
  KEY `WDIDX_language_lookup_NewLanguageName` (`NewLanguageName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_lookup`
--

LOCK TABLES `language_lookup` WRITE;
/*!40000 ALTER TABLE `language_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `LanguagesID` bigint NOT NULL AUTO_INCREMENT,
  `LanguageCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LanguageName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DialectCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`LanguagesID`),
  KEY `WDIDX_languages_LanguageCode` (`LanguageCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `latest_file_io` (
  `thread` varchar(149) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `file` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `latency` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `operation` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `requested` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `latest_file_io`
--

LOCK TABLES `latest_file_io` WRITE;
/*!40000 ALTER TABLE `latest_file_io` DISABLE KEYS */;
/*!40000 ALTER TABLE `latest_file_io` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lea_clg`
--

DROP TABLE IF EXISTS `lea_clg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lea_clg` (
  `LEA_CLGID` bigint NOT NULL AUTO_INCREMENT,
  `LEA_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CLG_Code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CLG_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`LEA_CLGID`),
  KEY `WDIDX_lea_clg_LEA_code` (`LEA_code`),
  KEY `WDIDX_lea_clg_CLG_Code` (`CLG_Code`),
  KEY `WDIDX_lea_clg_CLG_name` (`CLG_name`),
  KEY `WDIDX_lea_clg_WDIDX_lea_clg_WDIDX_LEA_CLG_LEA_codeCLG_Code` (`LEA_code`,`CLG_Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lea_clg`
--

LOCK TABLES `lea_clg` WRITE;
/*!40000 ALTER TABLE `lea_clg` DISABLE KEYS */;
/*!40000 ALTER TABLE `lea_clg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lea_history`
--

DROP TABLE IF EXISTS `lea_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lea_history` (
  `LEA_HistoryID` bigint NOT NULL AUTO_INCREMENT,
  `New_LEA_Code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `New_LEA_Name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Old_LEA_Code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Old_LEA_Name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Year_changed` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`LEA_HistoryID`),
  KEY `WDIDX_lea_history_New_LEA_Code` (`New_LEA_Code`),
  KEY `WDIDX_lea_history_New_LEA_Name` (`New_LEA_Name`),
  KEY `WDIDX_lea_history_Old_LEA_Code` (`Old_LEA_Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lea_history`
--

LOCK TABLES `lea_history` WRITE;
/*!40000 ALTER TABLE `lea_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `lea_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lea_names`
--

DROP TABLE IF EXISTS `lea_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lea_names` (
  `LEA_namesID` bigint NOT NULL AUTO_INCREMENT,
  `LEA_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LEA_Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LEA_Region_country` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LEA_notes` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`LEA_namesID`),
  KEY `WDIDX_lea_names_LEA_Region_country` (`LEA_Region_country`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lea_names`
--

LOCK TABLES `lea_names` WRITE;
/*!40000 ALTER TABLE `lea_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `lea_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_file_favourites`
--

DROP TABLE IF EXISTS `lesson_file_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_file_favourites` (
  `Lesson_file_favouritesID` bigint NOT NULL AUTO_INCREMENT,
  `Lesson_FilesID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`Lesson_file_favouritesID`),
  KEY `WDIDX_lesson_file_favourites_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_lesson_file_favourites_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_lesson_file_favourites_WDIDX_lesson_file_favourites_W00030` (`Lesson_FilesID`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_file_favourites`
--

LOCK TABLES `lesson_file_favourites` WRITE;
/*!40000 ALTER TABLE `lesson_file_favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_file_favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_files`
--

DROP TABLE IF EXISTS `lesson_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_files` (
  `Lesson_FilesID` bigint NOT NULL AUTO_INCREMENT,
  `filename` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AudioFile` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `File_TypesID` bigint DEFAULT '0',
  `mimetypesID` bigint DEFAULT '0',
  `timeReq` int DEFAULT '0',
  `LocalFoldersID` bigint DEFAULT '0',
  `hidden` tinyint DEFAULT '0',
  `CloudID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Lesson_file_favouritesID` bigint DEFAULT NULL,
  `marksAvail` smallint DEFAULT '0',
  PRIMARY KEY (`Lesson_FilesID`),
  KEY `WDIDX_lesson_files_filename` (`filename`),
  KEY `WDIDX_lesson_files_File_TypesID` (`File_TypesID`),
  KEY `WDIDX_lesson_files_mimetypesID` (`mimetypesID`),
  KEY `WDIDX_lesson_files_LocalFoldersID` (`LocalFoldersID`),
  KEY `WDIDX_lesson_files_hidden` (`hidden`),
  KEY `WDIDX_lesson_files_CloudID` (`CloudID`),
  KEY `WDIDX_lesson_files_Lesson_file_favouritesID` (`Lesson_file_favouritesID`),
  KEY `WDIDX_lesson_files_WDIDX_lesson_files_WDIDX_Lesson_Files_Le00031` (`Lesson_FilesID`,`LocalFoldersID`),
  KEY `WDIDX_lesson_files_WDIDX_lesson_files_WDIDX_Lesson_Files_fi00032` (`filename`,`LocalFoldersID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_files`
--

LOCK TABLES `lesson_files` WRITE;
/*!40000 ALTER TABLE `lesson_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_memos`
--

DROP TABLE IF EXISTS `lesson_memos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_memos` (
  `Lesson_memosID` bigint NOT NULL AUTO_INCREMENT,
  `memo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Lesson_FilesID` bigint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  PRIMARY KEY (`Lesson_memosID`),
  KEY `WDIDX_lesson_memos_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_lesson_memos_Lesson_outlineID` (`Lesson_outlineID`),
  KEY `WDIDX_lesson_memos_WDIDX_lesson_memos_Lesson_FilesIDLesson_00033` (`Lesson_FilesID`,`Lesson_outlineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_memos`
--

LOCK TABLES `lesson_memos` WRITE;
/*!40000 ALTER TABLE `lesson_memos` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_memos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_objectives`
--

DROP TABLE IF EXISTS `lesson_objectives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_objectives` (
  `lesson_objectivesID` bigint NOT NULL AUTO_INCREMENT,
  `lessonsID` bigint DEFAULT '0',
  `objective` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`lesson_objectivesID`),
  KEY `WDIDX_lesson_objectives_lessonsID` (`lessonsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_objectives`
--

LOCK TABLES `lesson_objectives` WRITE;
/*!40000 ALTER TABLE `lesson_objectives` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_objectives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_outline`
--

DROP TABLE IF EXISTS `lesson_outline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_outline` (
  `Lesson_outlineID` bigint NOT NULL AUTO_INCREMENT,
  `lessonsID` bigint DEFAULT '0',
  `timetable_entriesID` bigint DEFAULT '0',
  `SessionsID` bigint DEFAULT '0',
  `topic_plan_headerID` bigint DEFAULT '0',
  `Lesson_PlansID` bigint DEFAULT NULL,
  PRIMARY KEY (`Lesson_outlineID`),
  KEY `WDIDX_lesson_outline_lessonsID` (`lessonsID`),
  KEY `WDIDX_lesson_outline_timetable_entriesID` (`timetable_entriesID`),
  KEY `WDIDX_lesson_outline_SessionsID` (`SessionsID`),
  KEY `WDIDX_lesson_outline_topic_plan_headerID` (`topic_plan_headerID`),
  KEY `WDIDX_lesson_outline_Lesson_PlansID` (`Lesson_PlansID`),
  KEY `WDIDX_lesson_outline_WDIDX_lesson_outline_WDIDX_Lesson_outl00034` (`lessonsID`,`timetable_entriesID`,`SessionsID`),
  KEY `WDIDX_lesson_outline_WDIDX_lesson_outline_WDIDX_Lesson_outl00035` (`timetable_entriesID`,`SessionsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_outline`
--

LOCK TABLES `lesson_outline` WRITE;
/*!40000 ALTER TABLE `lesson_outline` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_outline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_plans`
--

DROP TABLE IF EXISTS `lesson_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_plans` (
  `Lesson_PlansID` bigint NOT NULL AUTO_INCREMENT,
  `Lesson_outlineID` bigint DEFAULT '0',
  `Lesson_FilesID` bigint DEFAULT '0',
  `LessonOrder` int DEFAULT '0',
  `PrintReq` int DEFAULT '0',
  `LessonStarterQuestionsID` bigint DEFAULT '0',
  `Lesson_memosID` bigint DEFAULT '0',
  PRIMARY KEY (`Lesson_PlansID`),
  KEY `WDIDX_lesson_plans_Lesson_outlineID` (`Lesson_outlineID`),
  KEY `WDIDX_lesson_plans_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_lesson_plans_LessonOrder` (`LessonOrder`),
  KEY `WDIDX_lesson_plans_Lesson_memosID` (`Lesson_memosID`),
  KEY `WDIDX_lesson_plans_WDIDX_lesson_plans_WDIDX_Lesson_Plans_Le00036` (`Lesson_outlineID`,`Lesson_FilesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_plans`
--

LOCK TABLES `lesson_plans` WRITE;
/*!40000 ALTER TABLE `lesson_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessonquestion`
--

DROP TABLE IF EXISTS `lessonquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessonquestion` (
  `LessonQuestionID` bigint NOT NULL AUTO_INCREMENT,
  `Question` varchar(400) DEFAULT NULL,
  `MarksAvailable` int DEFAULT '0',
  `Answer` varchar(400) DEFAULT NULL,
  `Lesson_FilesID` bigint DEFAULT '0',
  PRIMARY KEY (`LessonQuestionID`),
  KEY `WDIDX_LessonQuestion_Lesson_FilesID` (`Lesson_FilesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessonquestion`
--

LOCK TABLES `lessonquestion` WRITE;
/*!40000 ALTER TABLE `lessonquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessonquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `lessonsID` bigint NOT NULL AUTO_INCREMENT,
  `lessonName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TopicsID` bigint DEFAULT '0',
  `lessonCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LocalFoldersID` bigint DEFAULT '0',
  `Summary` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `hidden` int DEFAULT '0',
  PRIMARY KEY (`lessonsID`),
  KEY `WDIDX_lessons_lessonName` (`lessonName`),
  KEY `WDIDX_lessons_TopicsID` (`TopicsID`),
  KEY `WDIDX_lessons_LocalFoldersID` (`LocalFoldersID`),
  KEY `WDIDX_lessons_hidden` (`hidden`),
  KEY `WDIDX_lessons_WDIDX_lessons_WDIDX_lessons_TopicsIDName` (`TopicsID`,`lessonName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessonstarterquestions`
--

DROP TABLE IF EXISTS `lessonstarterquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessonstarterquestions` (
  `LessonStarterQuestionsID` bigint NOT NULL AUTO_INCREMENT,
  `lessonsID` bigint DEFAULT '0',
  `StartQuestion` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Answer` varchar(400) DEFAULT NULL,
  `marksAvail` smallint DEFAULT '0',
  `Skill_linkID` bigint DEFAULT '0',
  PRIMARY KEY (`LessonStarterQuestionsID`),
  KEY `WDIDX_lessonstarterquestions_lessonsID` (`lessonsID`),
  KEY `WDIDX_lessonstarterquestions_Skill_linkID` (`Skill_linkID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessonstarterquestions`
--

LOCK TABLES `lessonstarterquestions` WRITE;
/*!40000 ALTER TABLE `lessonstarterquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessonstarterquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_emails`
--

DROP TABLE IF EXISTS `linked_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_emails` (
  `id_linked_emails` int NOT NULL AUTO_INCREMENT,
  `graph_id` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_linked_emails`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_emails`
--

LOCK TABLES `linked_emails` WRITE;
/*!40000 ALTER TABLE `linked_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_files`
--

DROP TABLE IF EXISTS `linked_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_files` (
  `Linked_filesID` bigint NOT NULL AUTO_INCREMENT,
  `FileA` bigint DEFAULT '0',
  `FileGroupID` bigint DEFAULT '0',
  `lessonsID` bigint DEFAULT '0',
  PRIMARY KEY (`Linked_filesID`),
  KEY `WDIDX_linked_files_FileA` (`FileA`),
  KEY `WDIDX_linked_files_FileGroupID` (`FileGroupID`),
  KEY `WDIDX_linked_files_lessonsID` (`lessonsID`),
  KEY `WDIDX_linked_files_WDIDX_linked_files_WDIDX_Linked_files_Fi00037` (`FileA`,`FileGroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_files`
--

LOCK TABLES `linked_files` WRITE;
/*!40000 ALTER TABLE `linked_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localfolders`
--

DROP TABLE IF EXISTS `localfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localfolders` (
  `LocalFoldersID` bigint NOT NULL AUTO_INCREMENT,
  `FolderName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ParentID` bigint DEFAULT '0',
  `SubjectID` bigint DEFAULT '0',
  `hidden` tinyint DEFAULT '0',
  `CloudID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TopicsID` bigint DEFAULT NULL,
  `CoursesID` bigint DEFAULT NULL,
  `Lesson_FilesID` bigint DEFAULT NULL,
  PRIMARY KEY (`LocalFoldersID`),
  KEY `WDIDX_localfolders_FolderName` (`FolderName`),
  KEY `WDIDX_localfolders_ParentID` (`ParentID`),
  KEY `WDIDX_localfolders_SubjectID` (`SubjectID`),
  KEY `WDIDX_localfolders_hidden` (`hidden`),
  KEY `WDIDX_localfolders_CloudID` (`CloudID`),
  KEY `WDIDX_localfolders_TopicsID` (`TopicsID`),
  KEY `WDIDX_localfolders_CoursesID` (`CoursesID`),
  KEY `WDIDX_localfolders_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_localfolders_WDIDX_localfolders_WDIDX_LocalFolders_Fo00038` (`FolderName`,`ParentID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localfolders`
--

LOCK TABLES `localfolders` WRITE;
/*!40000 ALTER TABLE `localfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `localfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_incident_involved`
--

DROP TABLE IF EXISTS `major_incident_involved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_incident_involved` (
  `Major_Incident_InvolvedID` bigint NOT NULL AUTO_INCREMENT,
  `Major_transgression_logID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Witness` tinyint DEFAULT '0',
  `Known` tinyint DEFAULT '0',
  UNIQUE KEY `Major_Incident_InvolvedID` (`Major_Incident_InvolvedID`),
  KEY `WDIDX_major_incident_involved_Major_transgression_logID` (`Major_transgression_logID`),
  KEY `WDIDX_major_incident_involved_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_major_incident_involved_Witness` (`Witness`),
  KEY `WDIDX_major_incident_involved_WDIDX_Major_Incident_Involved00039` (`Major_transgression_logID`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_incident_involved`
--

LOCK TABLES `major_incident_involved` WRITE;
/*!40000 ALTER TABLE `major_incident_involved` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_incident_involved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_incident_statement`
--

DROP TABLE IF EXISTS `major_incident_statement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_incident_statement` (
  `Major_incident_statementID` bigint NOT NULL AUTO_INCREMENT,
  `Major_transgression_logID` bigint DEFAULT '0',
  `Statement` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `IndividualsID` bigint DEFAULT '0',
  `RecordedBy` bigint DEFAULT '0',
  `TimeRec` timestamp NULL DEFAULT NULL,
  `Known` tinyint DEFAULT '0',
  UNIQUE KEY `Major_incident_statementID` (`Major_incident_statementID`),
  KEY `WDIDX_major_incident_statement_Major_transgression_logID` (`Major_transgression_logID`),
  KEY `WDIDX_major_incident_statement_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_major_incident_statement_RecordedBy` (`RecordedBy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_incident_statement`
--

LOCK TABLES `major_incident_statement` WRITE;
/*!40000 ALTER TABLE `major_incident_statement` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_incident_statement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_transgression_log`
--

DROP TABLE IF EXISTS `major_transgression_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_transgression_log` (
  `Major_transgression_logID` bigint NOT NULL AUTO_INCREMENT,
  `DateAndTime` timestamp NULL DEFAULT NULL,
  `Major_transgression_typesID` bigint DEFAULT '0',
  `Details` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `RecordedBy` bigint DEFAULT '0',
  `Resolved` tinyint DEFAULT '0',
  `roomsID` bigint DEFAULT '0',
  UNIQUE KEY `Major_transgression_logID` (`Major_transgression_logID`),
  KEY `WDIDX_major_transgression_log_DateAndTime` (`DateAndTime`),
  KEY `WDIDX_major_transgression_log_Major_transgression_typesID` (`Major_transgression_typesID`),
  KEY `WDIDX_major_transgression_log_RecordedBy` (`RecordedBy`),
  KEY `WDIDX_major_transgression_log_Resolved` (`Resolved`),
  KEY `WDIDX_major_transgression_log_roomsID` (`roomsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_transgression_log`
--

LOCK TABLES `major_transgression_log` WRITE;
/*!40000 ALTER TABLE `major_transgression_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_transgression_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_transgression_types`
--

DROP TABLE IF EXISTS `major_transgression_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_transgression_types` (
  `Major_transgression_typesID` bigint NOT NULL AUTO_INCREMENT,
  `Major_transgression_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Sanction_typesID` bigint DEFAULT '0',
  UNIQUE KEY `Major_transgression_typesID` (`Major_transgression_typesID`),
  UNIQUE KEY `Major_transgression_name` (`Major_transgression_name`),
  KEY `WDIDX_major_transgression_types_Sanction_typesID` (`Sanction_typesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_transgression_types`
--

LOCK TABLES `major_transgression_types` WRITE;
/*!40000 ALTER TABLE `major_transgression_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_transgression_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markbook`
--

DROP TABLE IF EXISTS `markbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markbook` (
  `MarkbookID` bigint NOT NULL AUTO_INCREMENT,
  `Mark` int DEFAULT '0',
  `grade` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SingleArraySkill` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `WorkAssignmentID` bigint DEFAULT '0',
  PRIMARY KEY (`MarkbookID`),
  KEY `WDIDX_markbook_Mark` (`Mark`),
  KEY `WDIDX_markbook_grade` (`grade`),
  KEY `WDIDX_markbook_WorkAssignmentID` (`WorkAssignmentID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markbook`
--

LOCK TABLES `markbook` WRITE;
/*!40000 ALTER TABLE `markbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `markbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markbookmarks`
--

DROP TABLE IF EXISTS `markbookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markbookmarks` (
  `MarkBookMarksID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `MarkSchemeAnswersID` bigint DEFAULT '0',
  `Mark` int DEFAULT '0',
  `MarkbookID` bigint DEFAULT NULL,
  PRIMARY KEY (`MarkBookMarksID`),
  KEY `WDIDX_markbookmarks_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_markbookmarks_MarkSchemeAnswersID` (`MarkSchemeAnswersID`),
  KEY `WDIDX_markbookmarks_Mark` (`Mark`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markbookmarks`
--

LOCK TABLES `markbookmarks` WRITE;
/*!40000 ALTER TABLE `markbookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `markbookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markschemeanswers`
--

DROP TABLE IF EXISTS `markschemeanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markschemeanswers` (
  `MarkSchemeAnswersID` bigint NOT NULL AUTO_INCREMENT,
  `QuestionNo` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AnswerListed` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Skills_keyID` bigint DEFAULT '0',
  `SubTopic` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MarkschemeHeaderID` bigint DEFAULT '0',
  `marksAvail` smallint DEFAULT '0',
  UNIQUE KEY `MarkSchemeAnswersID` (`MarkSchemeAnswersID`),
  KEY `WDIDX_markschemeanswers_QuestionNo` (`QuestionNo`),
  KEY `WDIDX_markschemeanswers_Skills_keyID` (`Skills_keyID`),
  KEY `WDIDX_markschemeanswers_SubTopic` (`SubTopic`),
  KEY `WDIDX_markschemeanswers_MarkschemeHeaderID` (`MarkschemeHeaderID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markschemeanswers`
--

LOCK TABLES `markschemeanswers` WRITE;
/*!40000 ALTER TABLE `markschemeanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `markschemeanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markschemeheader`
--

DROP TABLE IF EXISTS `markschemeheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markschemeheader` (
  `MarkschemeHeaderID` bigint NOT NULL AUTO_INCREMENT,
  `Lesson_FilesID` bigint DEFAULT '0',
  `marksAvail` smallint DEFAULT '0',
  `schemeFileID` bigint DEFAULT '0',
  PRIMARY KEY (`MarkschemeHeaderID`),
  KEY `WDIDX_markschemeheader_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_markschemeheader_schemeFileID` (`schemeFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markschemeheader`
--

LOCK TABLES `markschemeheader` WRITE;
/*!40000 ALTER TABLE `markschemeheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `markschemeheader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marktypes`
--

DROP TABLE IF EXISTS `marktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marktypes` (
  `MarkTypesID` bigint NOT NULL AUTO_INCREMENT,
  `MarkTypeName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`MarkTypesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marktypes`
--

LOCK TABLES `marktypes` WRITE;
/*!40000 ALTER TABLE `marktypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `marktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memo` (
  `memoID` bigint NOT NULL AUTO_INCREMENT,
  `memo_content` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`memoID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memopairings`
--

DROP TABLE IF EXISTS `memopairings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memopairings` (
  `MemoPairingsID` bigint NOT NULL AUTO_INCREMENT,
  `StandardizedMemoID` bigint DEFAULT '0',
  `StandardizeReplacementsID` bigint DEFAULT '0',
  PRIMARY KEY (`MemoPairingsID`),
  KEY `WDIDX_MemoPairings_StandardizedMemoID` (`StandardizedMemoID`),
  KEY `WDIDX_MemoPairings_StandardizeReplacementsID` (`StandardizeReplacementsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memopairings`
--

LOCK TABLES `memopairings` WRITE;
/*!40000 ALTER TABLE `memopairings` DISABLE KEYS */;
/*!40000 ALTER TABLE `memopairings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memory_by_host_by_current_bytes` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `current_count_used` double DEFAULT NULL,
  `current_allocated` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `current_avg_alloc` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `current_max_alloc` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `total_allocated` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory_by_host_by_current_bytes`
--

LOCK TABLES `memory_by_host_by_current_bytes` WRITE;
/*!40000 ALTER TABLE `memory_by_host_by_current_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory_by_host_by_current_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memory_global_total` (
  `total_allocated` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory_global_total`
--

LOCK TABLES `memory_global_total` WRITE;
/*!40000 ALTER TABLE `memory_global_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory_global_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metrics` (
  `Variable_name` varchar(193) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Variable_value` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Type` varchar(210) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Enabled` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mimetypes`
--

DROP TABLE IF EXISTS `mimetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mimetypes` (
  `IDmimeTypes` bigint NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`IDmimeTypes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mimetypes`
--

LOCK TABLES `mimetypes` WRITE;
/*!40000 ALTER TABLE `mimetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mimetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minor_trangression_targets`
--

DROP TABLE IF EXISTS `minor_trangression_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minor_trangression_targets` (
  `Minor_trangression_targetsID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `NumbOfSess` tinyint DEFAULT '0',
  `SanctID` bigint DEFAULT '0',
  `TLimit` int DEFAULT '0',
  UNIQUE KEY `Minor_trangression_targetsID` (`Minor_trangression_targetsID`),
  KEY `WDIDX_minor_trangression_targets_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minor_trangression_targets`
--

LOCK TABLES `minor_trangression_targets` WRITE;
/*!40000 ALTER TABLE `minor_trangression_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `minor_trangression_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minor_transgression_log`
--

DROP TABLE IF EXISTS `minor_transgression_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minor_transgression_log` (
  `Minor_transgression_logID` bigint NOT NULL AUTO_INCREMENT,
  `Minor_Transgression_typesID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `MinorPoints` tinyint DEFAULT '0',
  `Sanction_setID` bigint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  UNIQUE KEY `Minor_transgression_logID` (`Minor_transgression_logID`),
  KEY `WDIDX_minor_transgression_log_Minor_Transgression_typesID` (`Minor_Transgression_typesID`),
  KEY `WDIDX_minor_transgression_log_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_minor_transgression_log_Sanction_setID` (`Sanction_setID`),
  KEY `WDIDX_minor_transgression_log_Lesson_outlineID` (`Lesson_outlineID`),
  KEY `WDIDX_minor_transgression_log_WDIDX_Minor_transgression_log00040` (`IndividualsID`,`Lesson_outlineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minor_transgression_log`
--

LOCK TABLES `minor_transgression_log` WRITE;
/*!40000 ALTER TABLE `minor_transgression_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `minor_transgression_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minor_transgression_types`
--

DROP TABLE IF EXISTS `minor_transgression_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minor_transgression_types` (
  `Minor_Transgression_typesID` bigint NOT NULL AUTO_INCREMENT,
  `Minor_transgression_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Transgression_points` int DEFAULT '0',
  `Default` varchar(1) DEFAULT NULL,
  UNIQUE KEY `Minor_Transgression_typesID` (`Minor_Transgression_typesID`),
  UNIQUE KEY `Minor_transgression_name` (`Minor_transgression_name`),
  KEY `WDIDX_minor_transgression_types_Transgression_points` (`Transgression_points`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minor_transgression_types`
--

LOCK TABLES `minor_transgression_types` WRITE;
/*!40000 ALTER TABLE `minor_transgression_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `minor_transgression_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigation`
--

DROP TABLE IF EXISTS `mitigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitigation` (
  `MitigationID` bigint NOT NULL AUTO_INCREMENT,
  `Sanction_setID` bigint DEFAULT '0',
  `Text` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `MitigationID` (`MitigationID`),
  KEY `WDIDX_mitigation_Sanction_setID` (`Sanction_setID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigation`
--

LOCK TABLES `mitigation` WRITE;
/*!40000 ALTER TABLE `mitigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mitigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nation_states_and_countries`
--

DROP TABLE IF EXISTS `nation_states_and_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nation_states_and_countries` (
  `Nation_States_and_CountriesID` bigint NOT NULL AUTO_INCREMENT,
  `ISO_3166_1_Alpha_3` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Nation_Short_Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Nation_Long_Name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ISO_3166_1_Alpha_2` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ISO_3166_1_Code_Numeric` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Current` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Notes` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Nation_States_and_CountriesID`),
  KEY `WDIDX_nation_states_and_countries_ISO_3166_1_Alpha_2` (`ISO_3166_1_Alpha_2`),
  KEY `WDIDX_nation_states_and_countries_ISO_3166_1_Code_Numeric` (`ISO_3166_1_Code_Numeric`),
  KEY `WDIDX_nation_states_and_countries_Current` (`Current`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nation_states_and_countries`
--

LOCK TABLES `nation_states_and_countries` WRITE;
/*!40000 ALTER TABLE `nation_states_and_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `nation_states_and_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newmembers`
--

DROP TABLE IF EXISTS `newmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newmembers` (
  `NewMembersID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `SuppliedCode` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`NewMembersID`),
  KEY `WDIDX_newmembers_SuppliedCode` (`SuppliedCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newmembers`
--

LOCK TABLES `newmembers` WRITE;
/*!40000 ALTER TABLE `newmembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `newmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nodes` (
  `NodesID` bigint NOT NULL AUTO_INCREMENT,
  `Node1` bigint DEFAULT '0',
  `ElementID1` bigint DEFAULT '0',
  `Node2` bigint DEFAULT '0',
  `ElementID2` bigint DEFAULT '0',
  PRIMARY KEY (`NodesID`),
  KEY `WDIDX_nodes_Node1` (`Node1`),
  KEY `WDIDX_nodes_ElementID1` (`ElementID1`),
  KEY `WDIDX_nodes_Node2` (`Node2`),
  KEY `WDIDX_nodes_ElementID2` (`ElementID2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodetable`
--

DROP TABLE IF EXISTS `nodetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nodetable` (
  `NodeTableID` bigint NOT NULL AUTO_INCREMENT,
  `NodeName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`NodeTableID`),
  KEY `WDIDX_nodetable_NodeName` (`NodeName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodetable`
--

LOCK TABLES `nodetable` WRITE;
/*!40000 ALTER TABLE `nodetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `NoticesID` bigint NOT NULL AUTO_INCREMENT,
  `memoID` bigint DEFAULT '0',
  `StandardizedMemoID` bigint DEFAULT '0',
  `StudentID` bigint DEFAULT '0',
  `CarerID` bigint DEFAULT '0',
  `Acknowledged` bigint DEFAULT '0',
  PRIMARY KEY (`NoticesID`),
  KEY `WDIDX_Notices_memoID` (`memoID`),
  KEY `WDIDX_Notices_StandardizedMemoID` (`StandardizedMemoID`),
  KEY `WDIDX_Notices_StudentID` (`StudentID`),
  KEY `WDIDX_Notices_CarerID` (`CarerID`),
  KEY `WDIDX_Notices_Acknowledged` (`Acknowledged`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `off_timetable_event`
--

DROP TABLE IF EXISTS `off_timetable_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `off_timetable_event` (
  `Off_timetable_eventID` bigint NOT NULL AUTO_INCREMENT,
  `StartDate` bigint NOT NULL DEFAULT '0',
  `EndTime` time DEFAULT NULL,
  `EndDate` bigint NOT NULL DEFAULT '0',
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `appliesTo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Room_bookingsID` bigint NOT NULL DEFAULT '0',
  `StartTime` time DEFAULT NULL,
  PRIMARY KEY (`Off_timetable_eventID`),
  KEY `WDIDX_off_timetable_event_StartDate` (`StartDate`),
  KEY `WDIDX_off_timetable_event_EndTime` (`EndTime`),
  KEY `WDIDX_off_timetable_event_EndDate` (`EndDate`),
  KEY `WDIDX_off_timetable_event_Name` (`Name`),
  KEY `WDIDX_off_timetable_event_appliesTo` (`appliesTo`),
  KEY `WDIDX_off_timetable_event_Room_bookingsID` (`Room_bookingsID`),
  KEY `WDIDX_off_timetable_event_StartTime` (`StartTime`),
  KEY `WDIDX_off_timetable_event_WDIDX_off_timetable_event_WDIDX_O00041` (`Name`,`StartDate`,`appliesTo`),
  KEY `WDIDX_off_timetable_event_WDIDX_Off_timetable_event_NameSta00042` (`Name`,`StartDate`,`appliesTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `off_timetable_event`
--

LOCK TABLES `off_timetable_event` WRITE;
/*!40000 ALTER TABLE `off_timetable_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `off_timetable_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `off_timetable_sessions`
--

DROP TABLE IF EXISTS `off_timetable_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `off_timetable_sessions` (
  `Off_Timetable_sessionsID` bigint NOT NULL AUTO_INCREMENT,
  `Off_timetable_eventID` bigint DEFAULT '0',
  `SessionsID` bigint DEFAULT '0',
  PRIMARY KEY (`Off_Timetable_sessionsID`),
  KEY `WDIDX_off_timetable_sessions_Off_timetable_eventID` (`Off_timetable_eventID`),
  KEY `WDIDX_off_timetable_sessions_SessionsID` (`SessionsID`),
  KEY `WDIDX_off_timetable_sessions_WDIDX_off_timetable_sessions_W00043` (`SessionsID`,`Off_timetable_eventID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `off_timetable_sessions`
--

LOCK TABLES `off_timetable_sessions` WRITE;
/*!40000 ALTER TABLE `off_timetable_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `off_timetable_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onedrive`
--

DROP TABLE IF EXISTS `onedrive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onedrive` (
  `accesstoken` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `refreshtoken` varchar(1100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `individualsFile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `photosFile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `groupsFile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `RegisterFile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `timetableFile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `setupFile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Exercises` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `schemeFile` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `appFolderID` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PorB` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT NULL,
  UNIQUE KEY `IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onedrive`
--

LOCK TABLES `onedrive` WRITE;
/*!40000 ALTER TABLE `onedrive` DISABLE KEYS */;
/*!40000 ALTER TABLE `onedrive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onetoonetuition`
--

DROP TABLE IF EXISTS `onetoonetuition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onetoonetuition` (
  `OneToOneTuitionID` bigint NOT NULL AUTO_INCREMENT,
  `Tuition_Attainment_Target_Focus` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT '0',
  `Tuition_Start_Date` bigint NOT NULL DEFAULT '0',
  `Tuition_Completion_Status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Tuition_Completed_Hours` tinyint DEFAULT '0',
  PRIMARY KEY (`OneToOneTuitionID`),
  KEY `WDIDX_onetoonetuition_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onetoonetuition`
--

LOCK TABLES `onetoonetuition` WRITE;
/*!40000 ALTER TABLE `onetoonetuition` DISABLE KEYS */;
/*!40000 ALTER TABLE `onetoonetuition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisation_common_elements`
--

DROP TABLE IF EXISTS `organisation_common_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisation_common_elements` (
  `Organisation_Common_ElementsID` bigint NOT NULL AUTO_INCREMENT,
  `Email_Address` varchar(260) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Sub_dwelling` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Dwelling` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Street` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Locality` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Town` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Administrative_Area` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Post_town` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PostCode` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Address_Line_1` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Address_Line_2` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Address_Line_3` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Address_Line_4` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Address_Line_5` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Body_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Telephone` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `National_Curriculum_Year_Group` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Change_to_proprietor_indicator` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Organisation_Common_ElementsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisation_common_elements`
--

LOCK TABLES `organisation_common_elements` WRITE;
/*!40000 ALTER TABLE `organisation_common_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `organisation_common_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pospoints`
--

DROP TABLE IF EXISTS `pospoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pospoints` (
  `PosPointsID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  `points` tinyint DEFAULT '0',
  UNIQUE KEY `PosPointsID` (`PosPointsID`),
  KEY `WDIDX_pospoints_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_pospoints_Lesson_outlineID` (`Lesson_outlineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pospoints`
--

LOCK TABLES `pospoints` WRITE;
/*!40000 ALTER TABLE `pospoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `pospoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post16learningaims`
--

DROP TABLE IF EXISTS `post16learningaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post16learningaims` (
  `Post16LearningAimsID` bigint NOT NULL AUTO_INCREMENT,
  `Learning_Aim_Start_Date` bigint DEFAULT NULL,
  `Learning_Aim_Planned_End_Date` bigint DEFAULT NULL,
  `Learning_Aim_Actual_End_Date` bigint DEFAULT NULL,
  `Learning_Aim_Status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `IndividualsID` bigint DEFAULT '0',
  `Core_aim_indicator` tinyint DEFAULT '0',
  `Learning_Aim_Withdrawal_Reason` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Traineeship` tinyint DEFAULT '0',
  UNIQUE KEY `Post16LearningAimsID` (`Post16LearningAimsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post16learningaims`
--

LOCK TABLES `post16learningaims` WRITE;
/*!40000 ALTER TABLE `post16learningaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `post16learningaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previousschools`
--

DROP TABLE IF EXISTS `previousschools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `previousschools` (
  `PreviousSchoolsID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `Previous_School_LA_number` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Previous_School_Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Previous_School_DfE_Establishment_Number` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_StatusID` bigint DEFAULT '0',
  PRIMARY KEY (`PreviousSchoolsID`),
  KEY `WDIDX_previousschools_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previousschools`
--

LOCK TABLES `previousschools` WRITE;
/*!40000 ALTER TABLE `previousschools` DISABLE KEYS */;
/*!40000 ALTER TABLE `previousschools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_check_lost_instrumentation` (
  `variable_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `variable_value` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_check_lost_instrumentation`
--

LOCK TABLES `ps_check_lost_instrumentation` WRITE;
/*!40000 ALTER TABLE `ps_check_lost_instrumentation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_check_lost_instrumentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_admissions`
--

DROP TABLE IF EXISTS `pupil_admissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_admissions` (
  `Pupil_AdmissionsID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `Admissions_entry_year_and_month` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Admissions_entry_year_group` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ADT_File_status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Text_file_header` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Statemented` tinyint DEFAULT '0',
  `Verified_address` tinyint DEFAULT '0',
  `Preference_Rank` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `Preference_reason` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `Preference_reason_text` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Aptitude_code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Aptitude_text` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Faith_text` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Distance_from_school` int DEFAULT '0',
  `LA_pre_banding_information` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LA_other_text` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Local_reference` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Medical_or_social_information` tinyint DEFAULT '0',
  `Criterion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Priority` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Admission_policy_criterion` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Notification_method` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Ranking_of_offers` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Date_Place_Required` bigint NOT NULL DEFAULT '0',
  `In_Year_Text` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Date_Last_Attended` bigint NOT NULL DEFAULT '0',
  `Accept_Text` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Offer_status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Application_reference` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `In_Year` tinyint DEFAULT '0',
  `Council_Tax_Reference` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LA_In_Year_Text` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `Faith` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Supplementary_Parental_Offer_Response` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Admissions_In_Care` tinyint DEFAULT '0',
  `Admissions_Care_Authority` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Alternative_Contact_Notes` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Pupil_AdmissionsID`),
  KEY `WDIDX_pupil_admissions_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_admissions`
--

LOCK TABLES `pupil_admissions` WRITE;
/*!40000 ALTER TABLE `pupil_admissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_admissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_assessment`
--

DROP TABLE IF EXISTS `pupil_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_assessment` (
  `Pupil_AssessmentID` bigint NOT NULL AUTO_INCREMENT,
  `Assessment_Year` int DEFAULT '0',
  `Assessment_Result_Indicator` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Assessment_Type` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Assessment_Component` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Component_Result` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Assessment_Locale` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT '0',
  `Assessment_Date` bigint NOT NULL DEFAULT '0',
  `Assessment_Subject` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Assessment_Identifier` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Component_Result_Type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Pupil_AssessmentID`),
  KEY `WDIDX_pupil_assessment_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_assessment`
--

LOCK TABLES `pupil_assessment` WRITE;
/*!40000 ALTER TABLE `pupil_assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_assessment_question_level_data`
--

DROP TABLE IF EXISTS `pupil_assessment_question_level_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_assessment_question_level_data` (
  `Pupil_assessment_question_level_dataID` bigint NOT NULL AUTO_INCREMENT,
  `Pupil_AssessmentID` bigint DEFAULT '0',
  `Assessment_Focus` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Focus_Order` tinyint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`Pupil_assessment_question_level_dataID`),
  KEY `WDIDX_pupil_assessment_question_level_data_Pupil_AssessmentID` (`Pupil_AssessmentID`),
  KEY `WDIDX_pupil_assessment_question_level_data_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_assessment_question_level_data`
--

LOCK TABLES `pupil_assessment_question_level_data` WRITE;
/*!40000 ALTER TABLE `pupil_assessment_question_level_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_assessment_question_level_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_attendance`
--

DROP TABLE IF EXISTS `pupil_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_attendance` (
  `Pupil_AttendanceID` bigint NOT NULL AUTO_INCREMENT,
  `Attendance_Year` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Attendance_period_start_date` bigint NOT NULL DEFAULT '0',
  `Possible_Sessions` int DEFAULT '0',
  `Sessions_Attended` int DEFAULT '0',
  `Sessions_missed_due_to_Authorised_Absence` int DEFAULT '0',
  `Sessions_missed_due_to_Unauthorised_Absence` int DEFAULT '0',
  `Number_of_sessions_missed` int DEFAULT '0',
  `Funded_Hours` decimal(24,6) DEFAULT '0.000000',
  `Hours_at_Setting` decimal(24,6) DEFAULT '0.000000',
  `Unit_Contact_Time_Pupil` int DEFAULT '0',
  `Total_funded_spring_hours` decimal(24,6) DEFAULT '0.000000',
  `Attendance_Codes` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Attendance_marks_for_all_sessions` varchar(999) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`Pupil_AttendanceID`),
  KEY `WDIDX_pupil_attendance_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_attendance`
--

LOCK TABLES `pupil_attendance` WRITE;
/*!40000 ALTER TABLE `pupil_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_exclusions`
--

DROP TABLE IF EXISTS `pupil_exclusions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_exclusions` (
  `Pupil_ExclusionsID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `Exclusion_Category` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Exclusion_Reason` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Exclusion_Start_Date` bigint DEFAULT NULL,
  `Exclusion_Actual_Number_of_Sessions` int DEFAULT '0',
  UNIQUE KEY `Pupil_ExclusionsID` (`Pupil_ExclusionsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_exclusions`
--

LOCK TABLES `pupil_exclusions` WRITE;
/*!40000 ALTER TABLE `pupil_exclusions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_exclusions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_qualifications`
--

DROP TABLE IF EXISTS `pupil_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_qualifications` (
  `Pupil_QualificationsID` bigint NOT NULL AUTO_INCREMENT,
  `Qualification_Number` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Subject_Classification_Code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`Pupil_QualificationsID`),
  KEY `WDIDX_pupil_qualifications_Qualification_Number` (`Qualification_Number`),
  KEY `WDIDX_pupil_qualifications_Subject_Classification_Code` (`Subject_Classification_Code`),
  KEY `WDIDX_pupil_qualifications_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_qualifications`
--

LOCK TABLES `pupil_qualifications` WRITE;
/*!40000 ALTER TABLE `pupil_qualifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_removal_grounds`
--

DROP TABLE IF EXISTS `pupil_removal_grounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_removal_grounds` (
  `Pupil_Removal_GroundsID` bigint NOT NULL AUTO_INCREMENT,
  `RemovalGroundsCode` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `RemovalReason` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ReasonDescription` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `StatutoryRefernce` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Pupil_Removal_GroundsID`),
  KEY `WDIDX_pupil_removal_grounds_RemovalGroundsCode` (`RemovalGroundsCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_removal_grounds`
--

LOCK TABLES `pupil_removal_grounds` WRITE;
/*!40000 ALTER TABLE `pupil_removal_grounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_removal_grounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_sen`
--

DROP TABLE IF EXISTS `pupil_sen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_sen` (
  `Pupil_SENID` bigint NOT NULL AUTO_INCREMENT,
  `Member_of_SEN_Unit_or_special_class_indicator` tinyint DEFAULT '0',
  `Member_of_resourced_provision_indicator` tinyint DEFAULT '0',
  `Pupil_date_placed_upon_stage` bigint NOT NULL DEFAULT '0',
  `Pupil_SEN_Type_ranking` int DEFAULT '0',
  `Pupil_Medical_Flag` tinyint DEFAULT '0',
  `Pupil_SEN_type_code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SEN_End_Date` bigint NOT NULL DEFAULT '0',
  `SEN_Need_Start_Date` bigint NOT NULL DEFAULT '0',
  `SEN_Need_End_Date` bigint NOT NULL DEFAULT '0',
  `SEN_Provision` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`Pupil_SENID`),
  KEY `WDIDX_pupil_sen_Member_of_SEN_Unit_or_special_class_indicator` (`Member_of_SEN_Unit_or_special_class_indicator`),
  KEY `WDIDX_pupil_sen_Member_of_resourced_provision_indicator` (`Member_of_resourced_provision_indicator`),
  KEY `WDIDX_pupil_sen_Pupil_date_placed_upon_stage` (`Pupil_date_placed_upon_stage`),
  KEY `WDIDX_pupil_sen_Pupil_SEN_Type_ranking` (`Pupil_SEN_Type_ranking`),
  KEY `WDIDX_pupil_sen_Pupil_Medical_Flag` (`Pupil_Medical_Flag`),
  KEY `WDIDX_pupil_sen_Pupil_SEN_type_code` (`Pupil_SEN_type_code`),
  KEY `WDIDX_pupil_sen_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_sen`
--

LOCK TABLES `pupil_sen` WRITE;
/*!40000 ALTER TABLE `pupil_sen` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_sen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_sen_provision`
--

DROP TABLE IF EXISTS `pupil_sen_provision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_sen_provision` (
  `Pupil_SEN_ProvisionID` bigint NOT NULL AUTO_INCREMENT,
  `ProvisionCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ProvisionName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ProvisionNotes` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Pupil_SEN_ProvisionID`),
  KEY `WDIDX_pupil_sen_provision_ProvisionCode` (`ProvisionCode`),
  KEY `WDIDX_pupil_sen_provision_ProvisionName` (`ProvisionName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_sen_provision`
--

LOCK TABLES `pupil_sen_provision` WRITE;
/*!40000 ALTER TABLE `pupil_sen_provision` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_sen_provision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupil_status`
--

DROP TABLE IF EXISTS `pupil_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupil_status` (
  `Pupil_StatusID` bigint NOT NULL AUTO_INCREMENT,
  `Pupil_child_Enrolment_status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Date_of_entry` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Date_of_Leaving` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Part_time_Indicator` tinyint DEFAULT '0',
  `Pupil_Boarder_Indicator` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Class_Type_Indicator` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Entry_Date` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Leaving_Date` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Leaving_Reason` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_s_Actual_National_Curriculum_Year_Group` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_s_Actual_National_Curriculum_Year_Group_on_Leaving` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Removal_Grounds` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`Pupil_StatusID`),
  KEY `WDIDX_pupil_status_Pupil_child_Enrolment_status` (`Pupil_child_Enrolment_status`),
  KEY `WDIDX_pupil_status_Pupil_Date_of_entry` (`Pupil_Date_of_entry`),
  KEY `WDIDX_pupil_status_Pupil_Date_of_Leaving` (`Pupil_Date_of_Leaving`),
  KEY `WDIDX_pupil_status_Pupil_Part_time_Indicator` (`Pupil_Part_time_Indicator`),
  KEY `WDIDX_pupil_status_Pupil_Boarder_Indicator` (`Pupil_Boarder_Indicator`),
  KEY `WDIDX_pupil_status_Pupil_Class_Type_Indicator` (`Pupil_Class_Type_Indicator`),
  KEY `WDIDX_pupil_status_Pupil_Entry_Date` (`Pupil_Entry_Date`),
  KEY `WDIDX_pupil_status_Pupil_Leaving_Date` (`Pupil_Leaving_Date`),
  KEY `WDIDX_pupil_status_Leaving_Reason` (`Leaving_Reason`),
  KEY `WDIDX_pupil_status_Pupil_s_Actual_National_Curriculum_Year_Group` (`Pupil_s_Actual_National_Curriculum_Year_Group`),
  KEY `WDIDX_pupil_status_Pupil_s_Actual_National_Curriculum_Year_00044` (`Pupil_s_Actual_National_Curriculum_Year_Group_on_Leaving`),
  KEY `WDIDX_pupil_status_Pupil_Removal_Grounds` (`Pupil_Removal_Grounds`),
  KEY `WDIDX_pupil_status_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupil_status`
--

LOCK TABLES `pupil_status` WRITE;
/*!40000 ALTER TABLE `pupil_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupil_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupilcharacteristics`
--

DROP TABLE IF EXISTS `pupilcharacteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupilcharacteristics` (
  `PupilCharacteristicsID` bigint NOT NULL AUTO_INCREMENT,
  `Pupil_Free_School_Meal_Review_Date` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `In_Care_Indicator` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `In_Care_Caring_Authority_Code` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Language_Code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Service_Children_in_Education_Indicator` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Type_of_Disability` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Language_Type` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Crown_Service` tinyint DEFAULT '0',
  `FSM_Eligibility_Start_Date` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FSM_Eligibility_End_Date` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Youth_Support_Services_Agreement_Indicator` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Learner_Support_Code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Top_up_funding_indicator` tinyint DEFAULT '0',
  `Full_time_employment_indicator` tinyint DEFAULT '0',
  `School_Lunch_Taken` tinyint DEFAULT '0',
  `Planned_Learning_Hours` int DEFAULT '0',
  `Planned_Employability_Enrichment_and_Pastorl_Hours` int DEFAULT '0',
  `Maths_GCSE_Highest_Prior_Attainment` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Maths_GCSE_Prior_Attainment_Year_Group` int DEFAULT '0',
  `English_GCSE_Highest_Prior_Attainment` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `English_GCSE_Prior_Attainment_Year_Group` int DEFAULT '0',
  `Early_years_pupil_premium_eligibility` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Early_years_pupil_premium_basis_for_funding` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Exempt_for_maths_GCSE_condition_of_funding` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Exempt_for_English_GCSE_condition_of_funding` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Child_Ethnicity` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Basis_for_funding` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Post_looked_after_arrangements` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Nationality` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pupil_Country_of_Birth` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Proficiency_in_English` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Proficiency_in_English_Date` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Source_of_Pupil_Ethnic_Code` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Source_for_Service_Child_Indicator` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Extended_childcare_hours` decimal(24,6) DEFAULT '0.000000',
  `thirty_hour_code` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Disability_access_fund_indicator` tinyint DEFAULT '0',
  `URN_of_previous_school` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Primary_reason_for_placements` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `placement_Association` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Attendance_Pattern` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Sessions_per_week` int DEFAULT '0',
  `Partner_UKPRN` int DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`PupilCharacteristicsID`),
  KEY `WDIDX_pupilcharacteristics_Pupil_Free_School_Meal_Review_Date` (`Pupil_Free_School_Meal_Review_Date`),
  KEY `WDIDX_pupilcharacteristics_In_Care_Indicator` (`In_Care_Indicator`),
  KEY `WDIDX_pupilcharacteristics_In_Care_Caring_Authority_Code` (`In_Care_Caring_Authority_Code`),
  KEY `WDIDX_pupilcharacteristics_Language_Code` (`Language_Code`),
  KEY `WDIDX_pupilcharacteristics_Service_Children_in_Education_In00045` (`Service_Children_in_Education_Indicator`),
  KEY `WDIDX_pupilcharacteristics_Type_of_Disability` (`Type_of_Disability`),
  KEY `WDIDX_pupilcharacteristics_Language_Type` (`Language_Type`),
  KEY `WDIDX_pupilcharacteristics_Crown_Service` (`Crown_Service`),
  KEY `WDIDX_pupilcharacteristics_FSM_Eligibility_Start_Date` (`FSM_Eligibility_Start_Date`),
  KEY `WDIDX_pupilcharacteristics_FSM_Eligibility_End_Date` (`FSM_Eligibility_End_Date`),
  KEY `WDIDX_pupilcharacteristics_Youth_Support_Services_Agreement00046` (`Youth_Support_Services_Agreement_Indicator`),
  KEY `WDIDX_pupilcharacteristics_Learner_Support_Code` (`Learner_Support_Code`),
  KEY `WDIDX_pupilcharacteristics_Top_up_funding_indicator` (`Top_up_funding_indicator`),
  KEY `WDIDX_pupilcharacteristics_Full_time_employment_indicator` (`Full_time_employment_indicator`),
  KEY `WDIDX_pupilcharacteristics_School_Lunch_Taken` (`School_Lunch_Taken`),
  KEY `WDIDX_pupilcharacteristics_Planned_Learning_Hours` (`Planned_Learning_Hours`),
  KEY `WDIDX_pupilcharacteristics_Planned_Employability_Enrichment00047` (`Planned_Employability_Enrichment_and_Pastorl_Hours`),
  KEY `WDIDX_pupilcharacteristics_Maths_GCSE_Highest_Prior_Attainment` (`Maths_GCSE_Highest_Prior_Attainment`),
  KEY `WDIDX_pupilcharacteristics_Maths_GCSE_Prior_Attainment_Year00048` (`Maths_GCSE_Prior_Attainment_Year_Group`),
  KEY `WDIDX_pupilcharacteristics_English_GCSE_Highest_Prior_Attainment` (`English_GCSE_Highest_Prior_Attainment`),
  KEY `WDIDX_pupilcharacteristics_English_GCSE_Prior_Attainment_Ye00049` (`English_GCSE_Prior_Attainment_Year_Group`),
  KEY `WDIDX_pupilcharacteristics_Early_years_pupil_premium_eligibility` (`Early_years_pupil_premium_eligibility`),
  KEY `WDIDX_pupilcharacteristics_Early_years_pupil_premium_basis_00050` (`Early_years_pupil_premium_basis_for_funding`),
  KEY `WDIDX_pupilcharacteristics_Exempt_for_maths_GCSE_condition_00051` (`Exempt_for_maths_GCSE_condition_of_funding`),
  KEY `WDIDX_pupilcharacteristics_Exempt_for_English_GCSE_conditio00052` (`Exempt_for_English_GCSE_condition_of_funding`),
  KEY `WDIDX_pupilcharacteristics_Child_Ethnicity` (`Child_Ethnicity`),
  KEY `WDIDX_pupilcharacteristics_Basis_for_funding` (`Basis_for_funding`),
  KEY `WDIDX_pupilcharacteristics_Post_looked_after_arrangements` (`Post_looked_after_arrangements`),
  KEY `WDIDX_pupilcharacteristics_Pupil_Nationality` (`Pupil_Nationality`),
  KEY `WDIDX_pupilcharacteristics_Pupil_Country_of_Birth` (`Pupil_Country_of_Birth`),
  KEY `WDIDX_pupilcharacteristics_Proficiency_in_English` (`Proficiency_in_English`),
  KEY `WDIDX_pupilcharacteristics_Proficiency_in_English_Date` (`Proficiency_in_English_Date`),
  KEY `WDIDX_pupilcharacteristics_Source_of_Pupil_Ethnic_Code` (`Source_of_Pupil_Ethnic_Code`),
  KEY `WDIDX_pupilcharacteristics_Source_for_Service_Child_Indicator` (`Source_for_Service_Child_Indicator`),
  KEY `WDIDX_pupilcharacteristics_Extended_childcare_hours` (`Extended_childcare_hours`),
  KEY `WDIDX_pupilcharacteristics_thirty_hour_code` (`thirty_hour_code`),
  KEY `WDIDX_pupilcharacteristics_Disability_access_fund_indicator` (`Disability_access_fund_indicator`),
  KEY `WDIDX_pupilcharacteristics_URN_of_previous_school` (`URN_of_previous_school`),
  KEY `WDIDX_pupilcharacteristics_Primary_reason_for_placements` (`Primary_reason_for_placements`),
  KEY `WDIDX_pupilcharacteristics_placement_Association` (`placement_Association`),
  KEY `WDIDX_pupilcharacteristics_Attendance_Pattern` (`Attendance_Pattern`),
  KEY `WDIDX_pupilcharacteristics_Sessions_per_week` (`Sessions_per_week`),
  KEY `WDIDX_pupilcharacteristics_Partner_UKPRN` (`Partner_UKPRN`),
  KEY `WDIDX_pupilcharacteristics_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupilcharacteristics`
--

LOCK TABLES `pupilcharacteristics` WRITE;
/*!40000 ALTER TABLE `pupilcharacteristics` DISABLE KEYS */;
/*!40000 ALTER TABLE `pupilcharacteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reason_for_leaving`
--

DROP TABLE IF EXISTS `reason_for_leaving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reason_for_leaving` (
  `Reason_for_LeavingID` bigint NOT NULL AUTO_INCREMENT,
  `Reason_Code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Reason_description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Current` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Reason_for_LeavingID`),
  KEY `WDIDX_reason_for_leaving_Current` (`Current`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reason_for_leaving`
--

LOCK TABLES `reason_for_leaving` WRITE;
/*!40000 ALTER TABLE `reason_for_leaving` DISABLE KEYS */;
/*!40000 ALTER TABLE `reason_for_leaving` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_types`
--

DROP TABLE IF EXISTS `register_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_types` (
  `Register_typesID` bigint NOT NULL DEFAULT '0',
  `RegName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FocusRegColourCodesID` bigint DEFAULT '0',
  `contact_name` varchar(50) DEFAULT NULL,
  `contact_email` varchar(260) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `Register_typesID` (`Register_typesID`),
  KEY `WDIDX_register_types_RegName` (`RegName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_types`
--

LOCK TABLES `register_types` WRITE;
/*!40000 ALTER TABLE `register_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewardslimits`
--

DROP TABLE IF EXISTS `rewardslimits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewardslimits` (
  `RewardsLimitsID` bigint NOT NULL AUTO_INCREMENT,
  `AttainGrp1Blk` tinyint DEFAULT '0',
  `AttainGrp2Blk` tinyint DEFAULT '0',
  `AttainGrpYr` tinyint DEFAULT '0',
  `AttainYr1Blk` tinyint DEFAULT '0',
  `AttainYrBlk` tinyint DEFAULT '0',
  `AttainYrYr` tinyint DEFAULT '0',
  `ProgGrp1Blk` tinyint DEFAULT '0',
  `ProgGrp2Blk` tinyint DEFAULT '0',
  `ProgGrpYr` tinyint DEFAULT '0',
  `ProgYr1Blk` tinyint DEFAULT '0',
  `ProgYr2Blk` tinyint DEFAULT '0',
  `ProgYrYr` tinyint DEFAULT '0',
  `AttainTopPercent` tinyint DEFAULT '0',
  `ProgTopPercent` tinyint DEFAULT '0',
  PRIMARY KEY (`RewardsLimitsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewardslimits`
--

LOCK TABLES `rewardslimits` WRITE;
/*!40000 ALTER TABLE `rewardslimits` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewardslimits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_bookings`
--

DROP TABLE IF EXISTS `room_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_bookings` (
  `Room_bookingsID` bigint NOT NULL AUTO_INCREMENT,
  `roomsID` bigint DEFAULT '0',
  `Lesson_outlineID` bigint DEFAULT '0',
  `Room_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AppointmentsID` bigint DEFAULT '0',
  UNIQUE KEY `Room_bookingsID` (`Room_bookingsID`),
  KEY `WDIDX_room_bookings_roomsID` (`roomsID`),
  KEY `WDIDX_room_bookings_Room_name` (`Room_name`),
  KEY `WDIDX_room_bookings_AppointmentsID` (`AppointmentsID`),
  KEY `WDIDX_room_bookings_WDIDX_room_bookings_WDIDX_room_bookings00053` (`roomsID`,`Lesson_outlineID`),
  KEY `WDIDX_room_bookings_WDIDX_room_bookings_WDIDX_Room_bookings00054` (`roomsID`,`Lesson_outlineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_bookings`
--

LOCK TABLES `room_bookings` WRITE;
/*!40000 ALTER TABLE `room_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_types` (
  `room_typesID` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type_of_room` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`room_typesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `roomsID` bigint NOT NULL AUTO_INCREMENT,
  `Room_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `room_typesID` bigint DEFAULT '0',
  `places` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Seats_across` int DEFAULT '0',
  `Seat_down` int DEFAULT '0',
  `Room_description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `capacity` int DEFAULT '0',
  PRIMARY KEY (`roomsID`),
  KEY `WDIDX_rooms_Room_name` (`Room_name`),
  KEY `WDIDX_rooms_room_typesID` (`room_typesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_freed`
--

DROP TABLE IF EXISTS `rooms_freed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms_freed` (
  `Rooms_FreedID` bigint NOT NULL AUTO_INCREMENT,
  `roomsID` bigint DEFAULT '0',
  `SessionsID` bigint DEFAULT '0',
  UNIQUE KEY `Rooms_FreedID` (`Rooms_FreedID`),
  KEY `WDIDX_rooms_freed_roomsID` (`roomsID`),
  KEY `WDIDX_rooms_freed_SessionsID` (`SessionsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_freed`
--

LOCK TABLES `rooms_freed` WRITE;
/*!40000 ALTER TABLE `rooms_freed` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms_freed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safeguardissues`
--

DROP TABLE IF EXISTS `safeguardissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safeguardissues` (
  `safeguardIssuesID` bigint NOT NULL AUTO_INCREMENT,
  `initialDate` bigint DEFAULT '0',
  `issueDesc` varchar(200) DEFAULT NULL,
  `Current` varchar(1) DEFAULT NULL,
  `IndividualsID` bigint DEFAULT '0',
  `EnteredBy` bigint DEFAULT '0',
  PRIMARY KEY (`safeguardIssuesID`),
  KEY `WDIDX_safeguardIssues_Current` (`Current`),
  KEY `WDIDX_safeguardIssues_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_safeguardIssues_EnteredBy` (`EnteredBy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safeguardissues`
--

LOCK TABLES `safeguardissues` WRITE;
/*!40000 ALTER TABLE `safeguardissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `safeguardissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safeguardobs`
--

DROP TABLE IF EXISTS `safeguardobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safeguardobs` (
  `SafeguardObsID` bigint NOT NULL AUTO_INCREMENT,
  `DateTimeObs` bigint DEFAULT '0',
  `SafeguardObsType` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `leaderID` bigint DEFAULT '0',
  PRIMARY KEY (`SafeguardObsID`),
  KEY `WDIDX_SafeguardObs_DateTimeObs` (`DateTimeObs`),
  KEY `WDIDX_SafeguardObs_SafeguardObsType` (`SafeguardObsType`),
  KEY `WDIDX_SafeguardObs_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_SafeguardObs_leaderID` (`leaderID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safeguardobs`
--

LOCK TABLES `safeguardobs` WRITE;
/*!40000 ALTER TABLE `safeguardobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `safeguardobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safeguardobstype`
--

DROP TABLE IF EXISTS `safeguardobstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safeguardobstype` (
  `SafeguardObsTypeID` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Level` tinyint DEFAULT '0',
  PRIMARY KEY (`SafeguardObsTypeID`),
  KEY `WDIDX_SafeguardObsType_Level` (`Level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safeguardobstype`
--

LOCK TABLES `safeguardobstype` WRITE;
/*!40000 ALTER TABLE `safeguardobstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `safeguardobstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction_attendance`
--

DROP TABLE IF EXISTS `sanction_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanction_attendance` (
  `Sanction_attendanceID` bigint NOT NULL AUTO_INCREMENT,
  `Sanction_sessionsID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `Sanction_attendanceID` (`Sanction_attendanceID`),
  KEY `WDIDX_sanction_attendance_Sanction_sessionsID` (`Sanction_sessionsID`),
  KEY `WDIDX_sanction_attendance_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_sanction_attendance_status` (`status`),
  KEY `WDIDX_sanction_attendance_WDIDX_Sanction_attendance_Sanctio00055` (`Sanction_sessionsID`,`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction_attendance`
--

LOCK TABLES `sanction_attendance` WRITE;
/*!40000 ALTER TABLE `sanction_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanction_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction_escalations`
--

DROP TABLE IF EXISTS `sanction_escalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanction_escalations` (
  `Sanction_escalationsID` bigint NOT NULL AUTO_INCREMENT,
  `Sanct1Level` int DEFAULT '0',
  `Sanction2ID` bigint DEFAULT '0',
  `HowMany` int DEFAULT '0',
  `Duration_weeks` int DEFAULT '0',
  `Sanction2_level` tinyint DEFAULT '0',
  UNIQUE KEY `Sanction_escalationsID` (`Sanction_escalationsID`),
  KEY `WDIDX_sanction_escalations_Sanct1Level` (`Sanct1Level`),
  KEY `WDIDX_sanction_escalations_Sanction2_level` (`Sanction2_level`),
  KEY `WDIDX_sanction_escalations_WDIDX_Sanction_escalations_Sanct00056` (`Sanct1Level`,`Sanction2ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction_escalations`
--

LOCK TABLES `sanction_escalations` WRITE;
/*!40000 ALTER TABLE `sanction_escalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanction_escalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction_sessions`
--

DROP TABLE IF EXISTS `sanction_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanction_sessions` (
  `Sanction_sessionsID` bigint NOT NULL AUTO_INCREMENT,
  `StartTime` timestamp NULL DEFAULT NULL,
  `FinishTime` timestamp NULL DEFAULT NULL,
  `roomsID` bigint DEFAULT '0',
  `SessionName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Sanction_typesID` bigint DEFAULT '0',
  UNIQUE KEY `Sanction_sessionsID` (`Sanction_sessionsID`),
  KEY `WDIDX_sanction_sessions_StartTime` (`StartTime`),
  KEY `WDIDX_sanction_sessions_FinishTime` (`FinishTime`),
  KEY `WDIDX_sanction_sessions_roomsID` (`roomsID`),
  KEY `WDIDX_sanction_sessions_SessionName` (`SessionName`),
  KEY `WDIDX_sanction_sessions_Sanction_typesID` (`Sanction_typesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction_sessions`
--

LOCK TABLES `sanction_sessions` WRITE;
/*!40000 ALTER TABLE `sanction_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanction_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction_set`
--

DROP TABLE IF EXISTS `sanction_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanction_set` (
  `Sanction_setID` bigint NOT NULL AUTO_INCREMENT,
  `Major` tinyint DEFAULT '0',
  `TransgressionID` bigint DEFAULT '0',
  `Sanction_sessionsID` bigint DEFAULT '0',
  `DateAndTime` bigint DEFAULT NULL,
  `RecordedBy` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Sanction_typesID` bigint DEFAULT '0',
  UNIQUE KEY `Sanction_setID` (`Sanction_setID`),
  KEY `WDIDX_sanction_set_Sanction_sessionsID` (`Sanction_sessionsID`),
  KEY `WDIDX_sanction_set_DateAndTime` (`DateAndTime`),
  KEY `WDIDX_sanction_set_RecordedBy` (`RecordedBy`),
  KEY `WDIDX_sanction_set_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_sanction_set_Sanction_typesID` (`Sanction_typesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction_set`
--

LOCK TABLES `sanction_set` WRITE;
/*!40000 ALTER TABLE `sanction_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanction_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction_staff`
--

DROP TABLE IF EXISTS `sanction_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanction_staff` (
  `Sanction_StaffID` bigint NOT NULL AUTO_INCREMENT,
  `Sanction_sessionsID` bigint DEFAULT '0',
  UNIQUE KEY `Sanction_StaffID` (`Sanction_StaffID`),
  KEY `WDIDX_sanction_staff_Sanction_sessionsID` (`Sanction_sessionsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction_staff`
--

LOCK TABLES `sanction_staff` WRITE;
/*!40000 ALTER TABLE `sanction_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanction_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction_types`
--

DROP TABLE IF EXISTS `sanction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanction_types` (
  `Sanction_typesID` bigint NOT NULL AUTO_INCREMENT,
  `Sanction_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Sanction_level` int DEFAULT '0',
  UNIQUE KEY `Sanction_typesID` (`Sanction_typesID`),
  UNIQUE KEY `Sanction_name` (`Sanction_name`),
  KEY `WDIDX_sanction_types_Sanction_level` (`Sanction_level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction_types`
--

LOCK TABLES `sanction_types` WRITE;
/*!40000 ALTER TABLE `sanction_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_admissions`
--

DROP TABLE IF EXISTS `school_admissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_admissions` (
  `School_admissionsID` bigint NOT NULL AUTO_INCREMENT,
  `Admission_appeals_lodged` int DEFAULT '0',
  `Admission_appeals_withdrawn` int DEFAULT '0',
  `Appeals_heard_by_Ind_Admissions_Com` int DEFAULT '0',
  `Ind_Admissions_Com_decided_in_parent_s_favour` int DEFAULT '0',
  `Ind_Admissions_Com_rejected_appeal` int DEFAULT '0',
  `Admissions_entry_year_group` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`School_admissionsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_admissions`
--

LOCK TABLES `school_admissions` WRITE;
/*!40000 ALTER TABLE `school_admissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_admissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_attendance_codes`
--

DROP TABLE IF EXISTS `school_attendance_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_attendance_codes` (
  `School_attendance_codesID` bigint NOT NULL AUTO_INCREMENT,
  `AttendanceCode` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AttendanceCodeDescr` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CensusIncusion` tinyint DEFAULT '0',
  PRIMARY KEY (`School_attendance_codesID`),
  KEY `WDIDX_school_attendance_codes_CensusIncusion` (`CensusIncusion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_attendance_codes`
--

LOCK TABLES `school_attendance_codes` WRITE;
/*!40000 ALTER TABLE `school_attendance_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_attendance_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_childcare`
--

DROP TABLE IF EXISTS `school_childcare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_childcare` (
  `School_childcareID` bigint NOT NULL AUTO_INCREMENT,
  `Childcare_provider` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Childcare_weeks_open` int DEFAULT '0',
  `Other_Schools` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Type_of_childcare` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Childcare_on_site` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Number_Of_Childcare_places` int DEFAULT '0',
  `Signposting_off_site_childcare_provision` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`School_childcareID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_childcare`
--

LOCK TABLES `school_childcare` WRITE;
/*!40000 ALTER TABLE `school_childcare` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_childcare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_class`
--

DROP TABLE IF EXISTS `school_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_class` (
  `School_ClassID` bigint NOT NULL AUTO_INCREMENT,
  `Class_Reference_Name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Number_of_Teachers_in_the_Class` int DEFAULT '0',
  `Number_of_Adult_Non_Teachers_in_the_Class` int DEFAULT '0',
  `Class_Activity` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Number_of_Pupils_from_the_host_school_in_the_class` int DEFAULT '0',
  `Number_of_Pupils_from_other_schools_in_the_class` int DEFAULT '0',
  `Class_Type` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Class_Key_Stage` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Class_Year_Group` int DEFAULT '0',
  PRIMARY KEY (`School_ClassID`),
  KEY `WDIDX_school_class_Class_Reference_Name` (`Class_Reference_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_class`
--

LOCK TABLES `school_class` WRITE;
/*!40000 ALTER TABLE `school_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_detail`
--

DROP TABLE IF EXISTS `school_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_detail` (
  `schoolName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `routerName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Password` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `timetable_length` int DEFAULT '0',
  `SMTP` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `locationLat` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `locationLong` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `currentWeek` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `teacher_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lastLocCheck` bigint DEFAULT NULL,
  `Student_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `IMAP_port` int DEFAULT '0',
  `SMTP_port` int DEFAULT '0',
  `IMAP` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `teacherEntID` bigint DEFAULT '0',
  `studentEntID` bigint DEFAULT '0',
  `accountType` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GoogleAPIKey` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `OneDriveAPIKey` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GoogleSecretKey` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `OneDriceSecretKey` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `DwellingsID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `schoolName` (`schoolName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_detail`
--

LOCK TABLES `school_detail` WRITE;
/*!40000 ALTER TABLE `school_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_pupil_numbers`
--

DROP TABLE IF EXISTS `school_pupil_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_pupil_numbers` (
  `School_pupil_NumbersID` bigint NOT NULL AUTO_INCREMENT,
  `Boy_19_over` int DEFAULT '0',
  `Boy_18` int DEFAULT '0',
  `Boy_17` int DEFAULT '0',
  `Boy_16` int DEFAULT '0',
  `Boy_15` int DEFAULT '0',
  `Boy_14` int DEFAULT '0',
  `Boy_13` int DEFAULT '0',
  `Boy_12` int DEFAULT '0',
  `Boy_11` int DEFAULT '0',
  `Boy_10` int DEFAULT '0',
  `Boy_9` int DEFAULT '0',
  `Boy_8` int DEFAULT '0',
  `Boy_7` int DEFAULT '0',
  `Boy_6` int DEFAULT '0',
  `Boy_5` int DEFAULT '0',
  `Boy_4_upper` int DEFAULT '0',
  `Boy_4_middle` int DEFAULT '0',
  `Boy_4_lower` int DEFAULT '0',
  `Boy_3_upper` int DEFAULT '0',
  `Boy_3_middle` int DEFAULT '0',
  `Boy_3_lower` int DEFAULT '0',
  `Boy_2` int DEFAULT '0',
  `Boy_1` int DEFAULT '0',
  `Boy_under_1` int DEFAULT '0',
  `Girl_19_over` int DEFAULT '0',
  `Boy_total` int DEFAULT '0',
  `Girl_18` int DEFAULT '0',
  `Girl_17` int DEFAULT '0',
  `Girl_16` int DEFAULT '0',
  `Girl_15` int DEFAULT '0',
  `Girl_14` int DEFAULT '0',
  `Girl_13` int DEFAULT '0',
  `Girl_12` int DEFAULT '0',
  `Girl_11` int DEFAULT '0',
  `Girl_10` int DEFAULT '0',
  `Girl_9` int DEFAULT '0',
  `Girl_8` int DEFAULT '0',
  `Girl_7` int DEFAULT '0',
  `Girl_6` int DEFAULT '0',
  `Girl_5` int DEFAULT '0',
  `Girl_4_upper` int DEFAULT '0',
  `Girl_4_middle` int DEFAULT '0',
  `Girl_4_lower` int DEFAULT '0',
  `Girl_3_upper` int DEFAULT '0',
  `Girl_3_middle` int DEFAULT '0',
  `Girl_3_lower` int DEFAULT '0',
  `Girl_2` int DEFAULT '0',
  `Girl_1` int DEFAULT '0',
  `Girl_under_1` int DEFAULT '0',
  `Girl_total` int DEFAULT '0',
  `Boy_PT_19_over` int DEFAULT '0',
  `Boy_PT_18` int DEFAULT '0',
  `Boy_Pt_17` int DEFAULT '0',
  `Boy_Pt_16` int DEFAULT '0',
  `Boy_Pt_15` int DEFAULT '0',
  `Boy_Pt_14` int DEFAULT '0',
  `Boy_Pt_13` int DEFAULT '0',
  `Boy_Pt_12` int DEFAULT '0',
  `Boy_Pt_11` int DEFAULT '0',
  `Boy_Pt_10` int DEFAULT '0',
  `Boy_Pt_9` int DEFAULT '0',
  `Boy_Pt_8` int DEFAULT '0',
  `Boy_Pt_7` int DEFAULT '0',
  `Boy_Pt_6` int DEFAULT '0',
  `Boy_Pt_5` int DEFAULT '0',
  `Boy_Pt_4_upper` int DEFAULT '0',
  `Boy_Pt_4_middle` int DEFAULT '0',
  `Boy_Pt_4_lower` int DEFAULT '0',
  `Boy_Pt_3_upper` int DEFAULT '0',
  `Boy_Pt_3_middle` int DEFAULT '0',
  `Boy_Pt_3_lower` int DEFAULT '0',
  `Boy_Pt_2` int DEFAULT '0',
  `Boy_Pt_1` int DEFAULT '0',
  `Boy_Pt_under_1` int DEFAULT '0',
  `Boy_Pt_total` int DEFAULT '0',
  `Girl_PT_19_over` int DEFAULT '0',
  `Girl_PT_18` int DEFAULT '0',
  `Girl_PT_17` int DEFAULT '0',
  `Girl_PT_16` int DEFAULT '0',
  `Girl_PT_15` int DEFAULT '0',
  `Girl_PT_14` int DEFAULT '0',
  `Girl_PT_13` int DEFAULT '0',
  `Girl_PT_12` int DEFAULT '0',
  `Girl_PT_11` int DEFAULT '0',
  `Girl_PT_10` int DEFAULT '0',
  `Girl_PT_9` int DEFAULT '0',
  `Girl_PT_8` int DEFAULT '0',
  `Girl_PT_7` int DEFAULT '0',
  `Girl_PT_6` int DEFAULT '0',
  `Girl_PT_5` int DEFAULT '0',
  `Girl_PT_4_upper` int DEFAULT '0',
  `Girl_PT_4_middle` int DEFAULT '0',
  `Girl_PT_4_lower` int DEFAULT '0',
  `Girl_PT_3_upper` int DEFAULT '0',
  `Girl_PT_3_middle` int DEFAULT '0',
  `Girl_PT_3_lower` int DEFAULT '0',
  `Girl_PT_2` int DEFAULT '0',
  `Girl_PT_1` int DEFAULT '0',
  `Girl_PT_Under_1` int DEFAULT '0',
  `Girl_PT_total` int DEFAULT '0',
  `Boarding_boys` int DEFAULT '0',
  `Boarding_girls` int DEFAULT '0',
  `Pupils_in_care` int DEFAULT '0',
  `Pupil_SEN_statement` int DEFAULT '0',
  `Pupil_SEN_no_statement` int DEFAULT '0',
  `Courses_boys_15_level_4_and_above` int DEFAULT '0',
  `Courses_boys_15_international_baccalaureate` int DEFAULT '0',
  `Course_boys15GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_boys_15_other_level_3_equivalents` int DEFAULT '0',
  `Courses_boys_15_GCSE_IGCSE` int DEFAULT '0',
  `Courses_boys_15_other_level_2_courses` int DEFAULT '0',
  `Courses_boys_15_other_level_1_courses` int DEFAULT '0',
  `Courses_boys_15_other_courses` int DEFAULT '0',
  `Courses_boys_16_level_4_and_above` int DEFAULT '0',
  `Courses_boys_16_international_baccalaureate` int DEFAULT '0',
  `Course_boys16GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_boys_16_other_level_3_equivalents` int DEFAULT '0',
  `Courses_boys_16_GCSE_IGCSE` int DEFAULT '0',
  `Courses_boys_16_other_level_2_courses` int DEFAULT '0',
  `Courses_boys_16_other_level_1_courses` int DEFAULT '0',
  `Courses_boys_16_other_courses` int DEFAULT '0',
  `Courses_boys_17_level_4_and_above` int DEFAULT '0',
  `Courses_boys_17_international_baccalaureate` int DEFAULT '0',
  `Course_boys17GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_boys_17_other_level_3_equivalents` int DEFAULT '0',
  `Courses_boys_17_GCSE_IGCSE` int DEFAULT '0',
  `Courses_boys_17_other_level_2_courses` int DEFAULT '0',
  `Courses_boys_17_other_level_1_courses` int DEFAULT '0',
  `Courses_boys_17_other_courses` int DEFAULT '0',
  `Courses_boys_18_and_over_level_4_and_above` int DEFAULT '0',
  `Courses_boys_18_and_over_international_baccalaureate` int DEFAULT '0',
  `Course_boys18GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_boys_18_and_over_other_level_3_equivalents` int DEFAULT '0',
  `Courses_boys_18_and_over_GCSE_IGCSE` int DEFAULT '0',
  `Courses_boys_18_and_over_other_level_2_courses` int DEFAULT '0',
  `Courses_boys_18_and_over_other_level_1_courses` int DEFAULT '0',
  `Courses_boys_18_and_over_other_courses` int DEFAULT '0',
  `Courses_girls_15_level_4_and_above` int DEFAULT '0',
  `Courses_girls_15_international_baccalaureate` int DEFAULT '0',
  `Course_girls15GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_girls_15_other_level_3_equivalents` int DEFAULT '0',
  `Courses_girls_15_GCSE_IGCSE` int DEFAULT '0',
  `Courses_girls_15_other_level_2_courses` int DEFAULT '0',
  `Courses_girls_15_other_level_1_courses` int DEFAULT '0',
  `Courses_girls_15_other_courses` int DEFAULT '0',
  `Courses_girls_16_level_4_and_above` int DEFAULT '0',
  `Courses_girls_16_international_baccalaureate` int DEFAULT '0',
  `Course_girls16GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_girls_16_other_level_3_equivalents` int DEFAULT '0',
  `Courses_girls_16_GCSE_IGCSE` int DEFAULT '0',
  `Courses_girls_16_other_level_2_courses` int DEFAULT '0',
  `Courses_girls_16_other_level_1_courses` int DEFAULT '0',
  `Courses_girls_16_other_courses` int DEFAULT '0',
  `Courses_girls_17_level_4_and_above` int DEFAULT '0',
  `Courses_girls_17_international_baccalaureate` int DEFAULT '0',
  `Course_girls17GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_girls_17_other_level_3_equivalents` int DEFAULT '0',
  `Courses_girls_17_GCSE_IGCSE` int DEFAULT '0',
  `Courses_girls_17_other_level_2_courses` int DEFAULT '0',
  `Courses_girls_17_other_level_1_courses` int DEFAULT '0',
  `Courses_girls_17_other_courses` int DEFAULT '0',
  `Courses_girls_18_and_over_level_4_and_above` int DEFAULT '0',
  `Courses_girls_18_and_over_international_baccalaureate` int DEFAULT '0',
  `Course_girls18GCSE_AlevelPreUPrincGCSE_ASlevel_preUShort` int DEFAULT '0',
  `Courses_girls_18_and_over_other_level_3_equivalents` int DEFAULT '0',
  `Courses_girls_18_and_over_GCSE_IGCSE` int DEFAULT '0',
  `Courses_girls_18_and_over_other_level_2_courses` int DEFAULT '0',
  `Courses_girls_18_and_over_other_level_1_courses` int DEFAULT '0',
  `Courses_girls_18_and_over_other_courses` int DEFAULT '0',
  `Courses_boys_final_year_key_stage_4` int DEFAULT '0',
  `Courses_girls_final_year_key_stage_4` int DEFAULT '0',
  `Part_Time_pupils_not_at_school` int DEFAULT '0',
  `Private_Study_pupils` int DEFAULT '0',
  `Pupils_at_Another_School` int DEFAULT '0',
  `Pupils_on_Work_Experience` int DEFAULT '0',
  `Pupils_at_FE_Colleges` int DEFAULT '0',
  PRIMARY KEY (`School_pupil_NumbersID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_pupil_numbers`
--

LOCK TABLES `school_pupil_numbers` WRITE;
/*!40000 ALTER TABLE `school_pupil_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_pupil_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_pupil_statistics`
--

DROP TABLE IF EXISTS `school_pupil_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_pupil_statistics` (
  `School_pupil_statisticsID` bigint NOT NULL AUTO_INCREMENT,
  `Free_School_Meals_Taken` int DEFAULT '0',
  `School_Term` int DEFAULT '0',
  `Number_of_3_year_olds` int DEFAULT '0',
  `Number_of_4_year_olds` int DEFAULT '0',
  `Number_of_2_year_olds` int DEFAULT '0',
  PRIMARY KEY (`School_pupil_statisticsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_pupil_statistics`
--

LOCK TABLES `school_pupil_statistics` WRITE;
/*!40000 ALTER TABLE `school_pupil_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_pupil_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_reconciliation`
--

DROP TABLE IF EXISTS `school_reconciliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_reconciliation` (
  `School_reconciliationID` bigint NOT NULL AUTO_INCREMENT,
  `Part_Time_pupils_not_at_school` int DEFAULT '0',
  PRIMARY KEY (`School_reconciliationID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_reconciliation`
--

LOCK TABLES `school_reconciliation` WRITE;
/*!40000 ALTER TABLE `school_reconciliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_reconciliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_slasc`
--

DROP TABLE IF EXISTS `school_slasc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_slasc` (
  `School_SLASCID` bigint NOT NULL AUTO_INCREMENT,
  `School_accommodation_change_indicator` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `School_accommodation_change_details` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Lowest_annual_fee_day_pupils` int DEFAULT '0',
  `Lowest_annual_fee_boarding_pupils` int DEFAULT '0',
  `Highest_annual_fee_day_pupils` int DEFAULT '0',
  `Highest_annual_fee_boarding_pupils` int DEFAULT '0',
  `Approved_places` int DEFAULT '0',
  `Boarding_pupils_reference_year_minus_2` int DEFAULT '0',
  `Boarding_pupils_reference_year_minus_1` int DEFAULT '0',
  `Boarding_pupils_forthcomming_year` int DEFAULT '0',
  `Accommodation_295_Days` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`School_SLASCID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_slasc`
--

LOCK TABLES `school_slasc` WRITE;
/*!40000 ALTER TABLE `school_slasc` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_slasc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_survey`
--

DROP TABLE IF EXISTS `school_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_survey` (
  `School_surveyID` bigint NOT NULL AUTO_INCREMENT,
  `Contact_Telephone_Number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Collection_Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Survey_Year` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Survey_Reference_Date` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Date_and_Time_when_the_message_file_is_produced` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Survey_Contact` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Headteacher_name` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Charity_name` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Charity_number` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Survey_Term` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Source_Level` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Software_Code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Serial_No` int DEFAULT '0',
  `Release` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `X_Version` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CBDS_Level` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Type_of_CTF_file` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Source_LEA` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Destination_LEA` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Data_descriptor_for_Partial_CTF` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Destination_School` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Source_School` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Supplier_ID` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Academic_Year_of_Transfer` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Type_of_Partial_CTF` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`School_surveyID`),
  KEY `WDIDX_school_survey_Collection_Name` (`Collection_Name`),
  KEY `WDIDX_school_survey_Survey_Year` (`Survey_Year`),
  KEY `WDIDX_school_survey_CBDS_Level` (`CBDS_Level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_survey`
--

LOCK TABLES `school_survey` WRITE;
/*!40000 ALTER TABLE `school_survey` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_survey_staff_details`
--

DROP TABLE IF EXISTS `school_survey_staff_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_survey_staff_details` (
  `Staff_DetailsID` bigint NOT NULL AUTO_INCREMENT,
  `Teacher_full_time_men` int DEFAULT '0',
  `Teacher_full_time_women` int DEFAULT '0',
  `Teacher_part_time_men` int DEFAULT '0',
  `Teacher_part_time_men_hours` int DEFAULT '0',
  `Teacher_part_time_women` int DEFAULT '0',
  `Teacher_part_time_women_hours` int DEFAULT '0',
  `Newly_appointed_teachers_nil_return` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Newly_appointed_support_staff_nil_return` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Individual_proprietor_nil_return` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Proprietor_body_nil_return` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Newly_appointed_body_member_nil_return` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Post_held_indicator` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Leaving_teachers_nil_return` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Leaving_support_staff_nil_return` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Post_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Support_Head_Count` int DEFAULT '0',
  `Occasionals_QTS` int DEFAULT '0',
  `Occasionals_NOTQTS` int DEFAULT '0',
  `Occasionals_NOTKNWN` int DEFAULT '0',
  `Total_teaching_staff_at_establishment` int DEFAULT '0',
  `Category_of_Agency_TP_Support_staff` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Estab_Level_2` int DEFAULT '0',
  `Estab_Level_2_Math` int DEFAULT '0',
  `Estab_Level_2_English` int DEFAULT '0',
  `Estab_Level_3_Math` int DEFAULT '0',
  `Estab_Level_3_English` int DEFAULT '0',
  `Level_3_pre_September_2014` int DEFAULT '0',
  `Level_3_post_September_2014` int DEFAULT '0',
  `Total_staff_at_provider` int DEFAULT '0',
  `Number_of_Level_2_staff` int DEFAULT '0',
  `Number_of_Level_3_staff_non_managerial` int DEFAULT '0',
  `Number_of_Level_3_staff_managerial` int DEFAULT '0',
  `Numb_of_QTSstaff_who_work_with_children_under_5` int DEFAULT '0',
  `Numb_of_staff_with_EYTS_work_with_children_under_5` int DEFAULT '0',
  `Number_of_agency_workers_covering_vacancies_FTE` int DEFAULT '0',
  `Number_of_agency_workers_covering_vacancies_headcount` int DEFAULT '0',
  `Number_of_vacancies` int DEFAULT '0',
  `Reason_for_absence` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Staff_DetailsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_survey_staff_details`
--

LOCK TABLES `school_survey_staff_details` WRITE;
/*!40000 ALTER TABLE `school_survey_staff_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_survey_staff_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools_connections`
--

DROP TABLE IF EXISTS `schools_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools_connections` (
  `Schools_ConnectionsID` int NOT NULL AUTO_INCREMENT,
  `School_LA_Number` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `School_Name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `School_DfE_Establishment_Number` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Schools_ConnectionsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools_connections`
--

LOCK TABLES `schools_connections` WRITE;
/*!40000 ALTER TABLE `schools_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `schools_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seating_plans`
--

DROP TABLE IF EXISTS `seating_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seating_plans` (
  `seating_plansID` bigint NOT NULL AUTO_INCREMENT,
  `seating_arrangement` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `roomsID` bigint DEFAULT '0',
  `groupsID` bigint DEFAULT '0',
  PRIMARY KEY (`seating_plansID`),
  KEY `WDIDX_seating_plans_roomsID` (`roomsID`),
  KEY `WDIDX_seating_plans_groupsID` (`groupsID`),
  KEY `WDIDX_seating_plans_WDIDX_seating_plans_WDIDX_seating_plans00057` (`roomsID`,`groupsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seating_plans`
--

LOCK TABLES `seating_plans` WRITE;
/*!40000 ALTER TABLE `seating_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `seating_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_clash`
--

DROP TABLE IF EXISTS `session_clash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_clash` (
  `session_clashID` bigint NOT NULL AUTO_INCREMENT,
  `AttendanceID` bigint DEFAULT '0',
  `Off_timetable_eventID` bigint DEFAULT '0',
  PRIMARY KEY (`session_clashID`),
  KEY `WDIDX_session_clash_AttendanceID` (`AttendanceID`),
  KEY `WDIDX_session_clash_Off_timetable_eventID` (`Off_timetable_eventID`),
  KEY `WDIDX_session_clash_WDIDX_session_clash_WDIDX_session_clash00058` (`AttendanceID`,`Off_timetable_eventID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_clash`
--

LOCK TABLES `session_clash` WRITE;
/*!40000 ALTER TABLE `session_clash` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_clash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_ssl_status` (
  `thread_id` bigint NOT NULL DEFAULT '0',
  `ssl_version` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ssl_cipher` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ssl_sessions_reused` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_ssl_status`
--

LOCK TABLES `session_ssl_status` WRITE;
/*!40000 ALTER TABLE `session_ssl_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_ssl_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `SessionsID` bigint NOT NULL AUTO_INCREMENT,
  `Period_Id` bigint DEFAULT '0',
  `DateAndStart` bigint DEFAULT NULL,
  `Teaching_BlocksID` bigint DEFAULT '0',
  `DateAndEnd` bigint DEFAULT NULL,
  PRIMARY KEY (`SessionsID`),
  KEY `WDIDX_sessions_Period_Id` (`Period_Id`),
  KEY `WDIDX_sessions_DateAndStart` (`DateAndStart`),
  KEY `WDIDX_sessions_Teaching_BlocksID` (`Teaching_BlocksID`),
  KEY `WDIDX_sessions_DateAndEnd` (`DateAndEnd`),
  KEY `WDIDX_sessions_WDIDX_sessions_WDIDX_sessions_WDIDX_sessions00059` (`Period_Id`,`DateAndStart`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_attached`
--

DROP TABLE IF EXISTS `skill_attached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_attached` (
  `Skill_attachedID` bigint NOT NULL AUTO_INCREMENT,
  `Skills_keyID` bigint DEFAULT '0',
  `Lesson_FilesID` bigint DEFAULT '0',
  `CoursesID` bigint DEFAULT '0',
  UNIQUE KEY `Skill_attachedID` (`Skill_attachedID`),
  KEY `WDIDX_skill_attached_Skills_keyID` (`Skills_keyID`),
  KEY `WDIDX_skill_attached_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_skill_attached_CoursesID` (`CoursesID`),
  KEY `WDIDX_skill_attached_WDIDX_skill_attached_WDIDX_skill_attac00060` (`Skills_keyID`,`Lesson_FilesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_attached`
--

LOCK TABLES `skill_attached` WRITE;
/*!40000 ALTER TABLE `skill_attached` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_link`
--

DROP TABLE IF EXISTS `skill_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_link` (
  `Skill_linkID` bigint NOT NULL AUTO_INCREMENT,
  `ParentSkillID` bigint DEFAULT '0',
  `OffspringSkillID` bigint DEFAULT '0',
  `CoursesID` bigint DEFAULT '0',
  UNIQUE KEY `Skill_linkID` (`Skill_linkID`),
  KEY `WDIDX_skill_link_ParentSkillID` (`ParentSkillID`),
  KEY `WDIDX_skill_link_OffspringSkillID` (`OffspringSkillID`),
  KEY `WDIDX_skill_link_CoursesID` (`CoursesID`),
  KEY `WDIDX_skill_link_WDIDX_skill_link_WDIDX_skill_link_WDIDX_Sk00061` (`ParentSkillID`,`OffspringSkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_link`
--

LOCK TABLES `skill_link` WRITE;
/*!40000 ALTER TABLE `skill_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_key`
--

DROP TABLE IF EXISTS `skills_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills_key` (
  `Skills_keyID` bigint NOT NULL AUTO_INCREMENT,
  `Skill_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Criteria1` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Criteria2` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Criteria3` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Criteria4` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `hidden` int DEFAULT NULL,
  `Criteria5` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DevelopmentAge` double DEFAULT '0',
  `SkillDescription` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Skills_keyID`),
  KEY `WDIDX_skills_key_Skill_name` (`Skill_name`),
  KEY `WDIDX_skills_key_hidden` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_key`
--

LOCK TABLES `skills_key` WRITE;
/*!40000 ALTER TABLE `skills_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillsenable`
--

DROP TABLE IF EXISTS `skillsenable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillsenable` (
  `SkillsEnableID` bigint NOT NULL AUTO_INCREMENT,
  `Activity` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Skills_keyID` bigint DEFAULT '0',
  PRIMARY KEY (`SkillsEnableID`),
  KEY `WDIDX_skillsenable_Skills_keyID` (`Skills_keyID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillsenable`
--

LOCK TABLES `skillsenable` WRITE;
/*!40000 ALTER TABLE `skillsenable` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillsenable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillsmapheader`
--

DROP TABLE IF EXISTS `skillsmapheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillsmapheader` (
  `SkillsMapHeaderID` bigint NOT NULL AUTO_INCREMENT,
  `CoursesID` bigint DEFAULT '0',
  `Skills_keyID` bigint DEFAULT '0',
  `Skill_linkID` bigint DEFAULT '0',
  `pointAx` int DEFAULT '0',
  `pointBx` int DEFAULT '0',
  `pointAy` int DEFAULT '0',
  `pointBy` int DEFAULT '0',
  PRIMARY KEY (`SkillsMapHeaderID`),
  KEY `WDIDX_skillsmapheader_CoursesID` (`CoursesID`),
  KEY `WDIDX_skillsmapheader_Skills_keyID` (`Skills_keyID`),
  KEY `WDIDX_skillsmapheader_Skill_linkID` (`Skill_linkID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillsmapheader`
--

LOCK TABLES `skillsmapheader` WRITE;
/*!40000 ALTER TABLE `skillsmapheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillsmapheader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillsmarkbook`
--

DROP TABLE IF EXISTS `skillsmarkbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillsmarkbook` (
  `SkillsMarkbookID` bigint NOT NULL AUTO_INCREMENT,
  `MarkbookID` bigint DEFAULT '0',
  `Skills_keyID` bigint DEFAULT '0',
  `Mark` int DEFAULT '0',
  PRIMARY KEY (`SkillsMarkbookID`),
  KEY `WDIDX_skillsmarkbook_MarkbookID` (`MarkbookID`),
  KEY `WDIDX_skillsmarkbook_Skills_keyID` (`Skills_keyID`),
  KEY `WDIDX_skillsmarkbook_Mark` (`Mark`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillsmarkbook`
--

LOCK TABLES `skillsmarkbook` WRITE;
/*!40000 ALTER TABLE `skillsmarkbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillsmarkbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillsreference`
--

DROP TABLE IF EXISTS `skillsreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillsreference` (
  `SkillsReferenceID` bigint NOT NULL AUTO_INCREMENT,
  `Skills_keyID` bigint DEFAULT '0',
  `File_TypesID` bigint DEFAULT '0',
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`SkillsReferenceID`),
  KEY `WDIDX_skillsreference_Skills_keyID` (`Skills_keyID`),
  KEY `WDIDX_skillsreference_File_TypesID` (`File_TypesID`),
  KEY `WDIDX_skillsreference_Name` (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillsreference`
--

LOCK TABLES `skillsreference` WRITE;
/*!40000 ALTER TABLE `skillsreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `skillsreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_details`
--

DROP TABLE IF EXISTS `staff_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_details` (
  `Staff_DetailsID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `National_Insurance_Number` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Teacher_Number` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `QT_Status` tinyint DEFAULT '0',
  `HLTA_Status` tinyint DEFAULT '0',
  `QTS_Route` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Ethnic_Code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Disability` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `HCPC_identifier` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Qualifying_institution` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Qualification_level` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Step_up_graduate` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Role_within_organisation` int DEFAULT '0',
  `Social_worker_origin` int DEFAULT '0',
  `Destination_of_leaver` int DEFAULT '0',
  `FTE_as_at_30_September_previous_census_year` decimal(24,6) DEFAULT '0.000000',
  `Number_of_cases_held_at_30_September` int DEFAULT '0',
  `Agency_worker_length_of_contract` int DEFAULT '0',
  `Reason_for_leaving` int DEFAULT '0',
  `Frontline_graduate` int DEFAULT '0',
  `Absent_on_30_September` int DEFAULT '0',
  `Agency_worker_indicator` int DEFAULT '0',
  PRIMARY KEY (`Staff_DetailsID`),
  KEY `WDIDX_staff_details_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_staff_details_National_Insurance_Number` (`National_Insurance_Number`),
  KEY `WDIDX_staff_details_Teacher_Number` (`Teacher_Number`),
  KEY `WDIDX_staff_details_QT_Status` (`QT_Status`),
  KEY `WDIDX_staff_details_HLTA_Status` (`HLTA_Status`),
  KEY `WDIDX_staff_details_QTS_Route` (`QTS_Route`),
  KEY `WDIDX_staff_details_Ethnic_Code` (`Ethnic_Code`),
  KEY `WDIDX_staff_details_Disability` (`Disability`),
  KEY `WDIDX_staff_details_HCPC_identifier` (`HCPC_identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_details`
--

LOCK TABLES `staff_details` WRITE;
/*!40000 ALTER TABLE `staff_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_vacancies`
--

DROP TABLE IF EXISTS `staff_vacancies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_vacancies` (
  `Staff_VacanciesID` bigint NOT NULL AUTO_INCREMENT,
  `Vacancy_Tenure` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Vacancy_Temporarily_Filled` tinyint DEFAULT '0',
  `Vacancy_Advertised` tinyint DEFAULT '0',
  `Vacancy_Subject` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Vacancy_Post` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Staff_VacanciesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_vacancies`
--

LOCK TABLES `staff_vacancies` WRITE;
/*!40000 ALTER TABLE `staff_vacancies` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_vacancies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_structure`
--

DROP TABLE IF EXISTS `standard_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standard_structure` (
  `tier2` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tier3` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tier4` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tier5` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `non_timetable` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_structure`
--

LOCK TABLES `standard_structure` WRITE;
/*!40000 ALTER TABLE `standard_structure` DISABLE KEYS */;
/*!40000 ALTER TABLE `standard_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standardizedmemo`
--

DROP TABLE IF EXISTS `standardizedmemo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standardizedmemo` (
  `StandardizedMemoID` bigint NOT NULL AUTO_INCREMENT,
  `MemoName` varchar(50) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`StandardizedMemoID`),
  KEY `WDIDX_StandardizedMemo_MemoName` (`MemoName`),
  KEY `WDIDX_StandardizedMemo_Type` (`Type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standardizedmemo`
--

LOCK TABLES `standardizedmemo` WRITE;
/*!40000 ALTER TABLE `standardizedmemo` DISABLE KEYS */;
/*!40000 ALTER TABLE `standardizedmemo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standardizereplacements`
--

DROP TABLE IF EXISTS `standardizereplacements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standardizereplacements` (
  `StandardizeReplacementsID` bigint NOT NULL AUTO_INCREMENT,
  `FormReplacement` varchar(100) DEFAULT NULL,
  `FemaleForm` varchar(50) DEFAULT NULL,
  `MaleForm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StandardizeReplacementsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standardizereplacements`
--

LOCK TABLES `standardizereplacements` WRITE;
/*!40000 ALTER TABLE `standardizereplacements` DISABLE KEYS */;
/*!40000 ALTER TABLE `standardizereplacements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `std_homework`
--

DROP TABLE IF EXISTS `std_homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `std_homework` (
  `HomeworkName` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `std_homework`
--

LOCK TABLES `std_homework` WRITE;
/*!40000 ALTER TABLE `std_homework` DISABLE KEYS */;
/*!40000 ALTER TABLE `std_homework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `SubjectID` bigint NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `subjectcode` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LocalRootDir` bigint DEFAULT '0',
  `LocalFoldersID` bigint DEFAULT '0',
  PRIMARY KEY (`SubjectID`),
  KEY `WDIDX_subject_subject_name` (`subject_name`),
  KEY `WDIDX_subject_subjectcode` (`subjectcode`),
  KEY `WDIDX_subject_LocalRootDir` (`LocalRootDir`),
  KEY `WDIDX_subject_LocalFoldersID` (`LocalFoldersID`),
  KEY `WDIDX_subject_WDIDX_subject_WDIDX_Subject_OptimCompKey_subj00062` (`subject_name`,`SubjectID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Science','SCI',0,0);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `value` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `set_by` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `variable` (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targets` (
  `TargetsID` bigint NOT NULL AUTO_INCREMENT,
  `DateSet` bigint DEFAULT NULL,
  `SubjectID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `Target` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `TargetsID` (`TargetsID`),
  KEY `WDIDX_targets_SubjectID` (`SubjectID`),
  KEY `WDIDX_targets_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_targets_Target` (`Target`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachgroups`
--

DROP TABLE IF EXISTS `teachgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachgroups` (
  `groupsID` bigint NOT NULL AUTO_INCREMENT,
  `groupEmail` varchar(100) DEFAULT NULL,
  `groupname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `EntitiesID` bigint DEFAULT '0',
  `leaderID` bigint DEFAULT '0',
  `MicrosoftID` varchar(100) DEFAULT NULL,
  `ThreadID` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`groupsID`),
  KEY `WDIDX_teachgroups_groupname` (`groupname`),
  KEY `WDIDX_teachgroups_EntitiesID` (`EntitiesID`),
  KEY `WDIDX_teachgroups_leaderID` (`leaderID`),
  KEY `WDIDX_teachgroups_MicrosoftID` (`MicrosoftID`),
  KEY `WDIDX_teachgroups_groupname_EntitiesID` (`groupname`,`EntitiesID`),
  KEY `WDIDX_teachgroups_groupname_leaderID` (`groupname`,`leaderID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachgroups`
--

LOCK TABLES `teachgroups` WRITE;
/*!40000 ALTER TABLE `teachgroups` DISABLE KEYS */;
INSERT INTO `teachgroups` VALUES (1,NULL,'9A1',3,0,NULL,NULL),(2,NULL,'8A1',3,0,NULL,NULL),(3,NULL,'7A1',3,0,NULL,NULL),(4,NULL,'10A1',3,0,NULL,NULL);
/*!40000 ALTER TABLE `teachgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaching_blocks`
--

DROP TABLE IF EXISTS `teaching_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaching_blocks` (
  `Teaching_BlocksID` bigint NOT NULL AUTO_INCREMENT,
  `StartDate` bigint DEFAULT NULL,
  `FinishDate` bigint DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `appliesTo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Academic_YearID` bigint DEFAULT '0',
  PRIMARY KEY (`Teaching_BlocksID`),
  KEY `WDIDX_teaching_blocks_StartDate` (`StartDate`),
  KEY `WDIDX_teaching_blocks_FinishDate` (`FinishDate`),
  KEY `WDIDX_teaching_blocks_Name` (`Name`),
  KEY `WDIDX_teaching_blocks_appliesTo` (`appliesTo`),
  KEY `WDIDX_teaching_blocks_Academic_YearID` (`Academic_YearID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaching_blocks`
--

LOCK TABLES `teaching_blocks` WRITE;
/*!40000 ALTER TABLE `teaching_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `teaching_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephonecontact`
--

DROP TABLE IF EXISTS `telephonecontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephonecontact` (
  `TelephoneContactID` bigint NOT NULL AUTO_INCREMENT,
  `PhoneNumber` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PhoneType` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ContactsID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`TelephoneContactID`),
  KEY `WDIDX_telephonecontact_PhoneNumber` (`PhoneNumber`),
  KEY `WDIDX_telephonecontact_ContactsID` (`ContactsID`),
  KEY `WDIDX_telephonecontact_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephonecontact`
--

LOCK TABLES `telephonecontact` WRITE;
/*!40000 ALTER TABLE `telephonecontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephonecontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable_entries` (
  `timetable_entriesID` bigint NOT NULL AUTO_INCREMENT,
  `Period_Id` bigint DEFAULT '0',
  `groupsID` bigint DEFAULT '0',
  `roomsID` bigint DEFAULT '0',
  `SubjectID` bigint DEFAULT '0',
  `Academic_YearID` bigint DEFAULT '0',
  PRIMARY KEY (`timetable_entriesID`),
  KEY `WDIDX_timetable_entries_Period_Id` (`Period_Id`),
  KEY `WDIDX_timetable_entries_groupsID` (`groupsID`),
  KEY `WDIDX_timetable_entries_roomsID` (`roomsID`),
  KEY `WDIDX_timetable_entries_SubjectID` (`SubjectID`),
  KEY `WDIDX_timetable_entries_Academic_YearID` (`Academic_YearID`),
  KEY `WDIDX_timetable_entries_WDIDX_timetable_entries_WDIDX_timet00063` (`Period_Id`,`groupsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_entries`
--

LOCK TABLES `timetable_entries` WRITE;
/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic_plan_header`
--

DROP TABLE IF EXISTS `topic_plan_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic_plan_header` (
  `topic_plan_headerID` bigint NOT NULL AUTO_INCREMENT,
  `Date_of_topicPlan` bigint NOT NULL DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `TopicsID` bigint DEFAULT '0',
  `groupname` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`topic_plan_headerID`),
  KEY `WDIDX_topic_plan_header_Date_of_topicPlan` (`Date_of_topicPlan`),
  KEY `WDIDX_topic_plan_header_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_topic_plan_header_TopicsID` (`TopicsID`),
  KEY `WDIDX_topic_plan_header_groupname` (`groupname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic_plan_header`
--

LOCK TABLES `topic_plan_header` WRITE;
/*!40000 ALTER TABLE `topic_plan_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `topic_plan_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `TopicsID` bigint NOT NULL AUTO_INCREMENT,
  `topicName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `topicLong` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `topicsCode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CoursesID` bigint DEFAULT NULL,
  `LocalFoldersID` bigint DEFAULT NULL,
  `Topic_block_tableID` bigint DEFAULT NULL,
  `hidden` int DEFAULT '0',
  `SpecificationRefID` bigint DEFAULT NULL,
  PRIMARY KEY (`TopicsID`),
  KEY `WDIDX_topics_topicName` (`topicName`),
  KEY `WDIDX_topics_topicLong` (`topicLong`),
  KEY `WDIDX_topics_topicsCode` (`topicsCode`),
  KEY `WDIDX_topics_CoursesID` (`CoursesID`),
  KEY `WDIDX_topics_LocalFoldersID` (`LocalFoldersID`),
  KEY `WDIDX_topics_Topic_block_tableID` (`Topic_block_tableID`),
  KEY `WDIDX_topics_hidden` (`hidden`),
  KEY `WDIDX_topics_WDIDX_topics_WDIDX_Topics_topicNameCoursesID` (`topicName`,`CoursesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_clashes`
--

DROP TABLE IF EXISTS `tt_clashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tt_clashes` (
  `timetable_entriesID` bigint DEFAULT '0',
  `clashNumb` int DEFAULT '0',
  `field` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  KEY `WDIDX_tt_clashes_timetable_entriesID` (`timetable_entriesID`),
  KEY `WDIDX_tt_clashes_clashNumb` (`clashNumb`),
  KEY `WDIDX_tt_clashes_field` (`field`),
  KEY `WDIDX_tt_clashes_WDIDX_tt_clashes_WDIDX_TT_clashes_timetabl00064` (`timetable_entriesID`,`field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_clashes`
--

LOCK TABLES `tt_clashes` WRITE;
/*!40000 ALTER TABLE `tt_clashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tt_clashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_key`
--

DROP TABLE IF EXISTS `types_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types_key` (
  `Types_keyID` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Types_keyID`),
  KEY `WDIDX_types_key_Name` (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_key`
--

LOCK TABLES `types_key` WRITE;
/*!40000 ALTER TABLE `types_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `types_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weblinks`
--

DROP TABLE IF EXISTS `weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weblinks` (
  `WeblinksID` bigint NOT NULL AUTO_INCREMENT,
  `Internet_site` varchar(260) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Lesson_FilesID` bigint DEFAULT '0',
  `SubjectID` bigint DEFAULT '0',
  `SiteName` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`WeblinksID`),
  KEY `WDIDX_weblinks_Internet_site` (`Internet_site`),
  KEY `WDIDX_weblinks_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_weblinks_SubjectID` (`SubjectID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weblinks`
--

LOCK TABLES `weblinks` WRITE;
/*!40000 ALTER TABLE `weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekcalcs`
--

DROP TABLE IF EXISTS `weekcalcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekcalcs` (
  `WeekCalcsID` bigint NOT NULL AUTO_INCREMENT,
  `StartDate` bigint NOT NULL DEFAULT '0',
  `WeekAorB` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Teaching_BlocksID` bigint DEFAULT '0',
  PRIMARY KEY (`WeekCalcsID`),
  KEY `WDIDX_weekcalcs_StartDate` (`StartDate`),
  KEY `WDIDX_weekcalcs_WeekAorB` (`WeekAorB`),
  KEY `WDIDX_weekcalcs_Teaching_BlocksID` (`Teaching_BlocksID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekcalcs`
--

LOCK TABLES `weekcalcs` WRITE;
/*!40000 ALTER TABLE `weekcalcs` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekcalcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wifinetwork`
--

DROP TABLE IF EXISTS `wifinetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wifinetwork` (
  `WiFiNetworkID` bigint NOT NULL AUTO_INCREMENT,
  `WifiNameSSID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`WiFiNetworkID`),
  KEY `WDIDX_wifinetwork_WifiNameSSID` (`WifiNameSSID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wifinetwork`
--

LOCK TABLES `wifinetwork` WRITE;
/*!40000 ALTER TABLE `wifinetwork` DISABLE KEYS */;
/*!40000 ALTER TABLE `wifinetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workassignment`
--

DROP TABLE IF EXISTS `workassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workassignment` (
  `WorkAssignmentID` bigint NOT NULL AUTO_INCREMENT,
  `Lesson_outlineID` bigint DEFAULT '0',
  `IndividualsID` bigint DEFAULT '0',
  `DateSet` bigint NOT NULL DEFAULT '0',
  `DueDate` bigint NOT NULL DEFAULT '0',
  `DateCollected` bigint NOT NULL DEFAULT '0',
  `Completed` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Lesson_FilesID` bigint DEFAULT '0',
  `MarkTypesID` bigint DEFAULT '0',
  PRIMARY KEY (`WorkAssignmentID`),
  KEY `WDIDX_workassignment_Lesson_outlineID` (`Lesson_outlineID`),
  KEY `WDIDX_workassignment_IndividualsID` (`IndividualsID`),
  KEY `WDIDX_workassignment_Lesson_FilesID` (`Lesson_FilesID`),
  KEY `WDIDX_workassignment_MarkTypesID` (`MarkTypesID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workassignment`
--

LOCK TABLES `workassignment` WRITE;
/*!40000 ALTER TABLE `workassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `workassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workforce_absence`
--

DROP TABLE IF EXISTS `workforce_absence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workforce_absence` (
  `Workforce_AbsenceID` bigint NOT NULL AUTO_INCREMENT,
  `First_Day` bigint DEFAULT NULL,
  `Working_Days_Lost` decimal(24,6) DEFAULT '0.000000',
  `Last_Day` bigint DEFAULT NULL,
  `Absence_Category` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IndividualsID` bigint DEFAULT '0',
  PRIMARY KEY (`Workforce_AbsenceID`),
  KEY `WDIDX_workforce_absence_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workforce_absence`
--

LOCK TABLES `workforce_absence` WRITE;
/*!40000 ALTER TABLE `workforce_absence` DISABLE KEYS */;
/*!40000 ALTER TABLE `workforce_absence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workforce_contracts`
--

DROP TABLE IF EXISTS `workforce_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workforce_contracts` (
  `Workforce_contractsID` bigint NOT NULL AUTO_INCREMENT,
  `Contract_Agreement_Type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Start_Date` bigint DEFAULT NULL,
  `End_Date` bigint DEFAULT NULL,
  `Date_of_Arrival_in_School` bigint DEFAULT NULL,
  `Destination` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Hours_worked_per_week` int DEFAULT '0',
  `FTE_Hours_per_week` decimal(24,6) DEFAULT '0.000000',
  `Full_Time_Equivalence_in_Post` decimal(24,6) DEFAULT '0.000000',
  `Start_Date_in_Role` bigint DEFAULT NULL,
  `End_Date_in_Role` bigint DEFAULT NULL,
  `Safeguarded_Salary` tinyint DEFAULT '0',
  `Daily_Rate` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Additional_Payment_Amount` decimal(24,6) DEFAULT '0.000000',
  `Role_Identifier` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Origin` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Weeks_per_year` int DEFAULT '0',
  `Pay_Range` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pay_Framework` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Pay_Range_Minimum` decimal(24,6) DEFAULT '0.000000',
  `Pay_Range_Maximum` decimal(24,6) DEFAULT '0.000000',
  `Pay_Review_Date` bigint DEFAULT NULL,
  `Pay_Start_Date` bigint DEFAULT NULL,
  `Pay_End_Date` bigint DEFAULT NULL,
  `Category_of_Additional_Payment` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PostName` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LA_or_School_level` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Base_Pay` decimal(24,6) DEFAULT '0.000000',
  PRIMARY KEY (`Workforce_contractsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workforce_contracts`
--

LOCK TABLES `workforce_contracts` WRITE;
/*!40000 ALTER TABLE `workforce_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `workforce_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workforce_curriculum`
--

DROP TABLE IF EXISTS `workforce_curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workforce_curriculum` (
  `Workforce_curriculumID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `Hours` decimal(24,6) DEFAULT '0.000000',
  `Subject_Code` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Year_Group` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Workforce_curriculumID`),
  KEY `WDIDX_workforce_curriculum_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workforce_curriculum`
--

LOCK TABLES `workforce_curriculum` WRITE;
/*!40000 ALTER TABLE `workforce_curriculum` DISABLE KEYS */;
/*!40000 ALTER TABLE `workforce_curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workforce_qualifications`
--

DROP TABLE IF EXISTS `workforce_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workforce_qualifications` (
  `WorkforceID` bigint NOT NULL AUTO_INCREMENT,
  `IndividualsID` bigint DEFAULT '0',
  `Class_of_Degree` int DEFAULT '0',
  `Qualification_Code` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Subject_Code_1` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Subject_Code_2` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`WorkforceID`),
  KEY `WDIDX_workforce_qualifications_IndividualsID` (`IndividualsID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workforce_qualifications`
--

LOCK TABLES `workforce_qualifications` WRITE;
/*!40000 ALTER TABLE `workforce_qualifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `workforce_qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workhierarchy`
--

DROP TABLE IF EXISTS `workhierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workhierarchy` (
  `WorkHierarchyID` bigint NOT NULL AUTO_INCREMENT,
  `GrID` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  `MemID` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tier` int DEFAULT '0',
  PRIMARY KEY (`WorkHierarchyID`),
  KEY `WDIDX_workhierarchy_GrID` (`GrID`),
  KEY `WDIDX_workhierarchy_MemID` (`MemID`),
  KEY `WDIDX_workhierarchy_tier` (`tier`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workhierarchy`
--

LOCK TABLES `workhierarchy` WRITE;
/*!40000 ALTER TABLE `workhierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `workhierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$host_summary` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `statements` double DEFAULT NULL,
  `statement_latency` double DEFAULT NULL,
  `statement_avg_latency` double DEFAULT NULL,
  `table_scans` double DEFAULT NULL,
  `file_ios` double DEFAULT NULL,
  `file_io_latency` double DEFAULT NULL,
  `current_connections` double DEFAULT NULL,
  `total_connections` double DEFAULT NULL,
  `unique_users` bigint NOT NULL DEFAULT '0',
  `current_memory` double DEFAULT NULL,
  `total_memory_allocated` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$host_summary`
--

LOCK TABLES `x$host_summary` WRITE;
/*!40000 ALTER TABLE `x$host_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$host_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$host_summary_by_file_io` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ios` double DEFAULT NULL,
  `io_latency` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$host_summary_by_file_io`
--

LOCK TABLES `x$host_summary_by_file_io` WRITE;
/*!40000 ALTER TABLE `x$host_summary_by_file_io` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$host_summary_by_file_io` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$host_summary_by_file_io_type` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `event_name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total` bigint NOT NULL DEFAULT '0',
  `total_latency` bigint NOT NULL DEFAULT '0',
  `max_latency` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$host_summary_by_file_io_type`
--

LOCK TABLES `x$host_summary_by_file_io_type` WRITE;
/*!40000 ALTER TABLE `x$host_summary_by_file_io_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$host_summary_by_file_io_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$host_summary_by_stages` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `event_name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total` bigint NOT NULL DEFAULT '0',
  `total_latency` bigint NOT NULL DEFAULT '0',
  `avg_latency` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$host_summary_by_stages`
--

LOCK TABLES `x$host_summary_by_stages` WRITE;
/*!40000 ALTER TABLE `x$host_summary_by_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$host_summary_by_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$host_summary_by_statement_latency` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total_latency` double DEFAULT NULL,
  `max_latency` bigint DEFAULT NULL,
  `lock_latency` double DEFAULT NULL,
  `rows_sent` double DEFAULT NULL,
  `rows_examined` double DEFAULT NULL,
  `rows_affected` double DEFAULT NULL,
  `full_scans` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$host_summary_by_statement_latency`
--

LOCK TABLES `x$host_summary_by_statement_latency` WRITE;
/*!40000 ALTER TABLE `x$host_summary_by_statement_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$host_summary_by_statement_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$host_summary_by_statement_type` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `statement` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total` bigint NOT NULL DEFAULT '0',
  `total_latency` bigint NOT NULL DEFAULT '0',
  `max_latency` bigint NOT NULL DEFAULT '0',
  `lock_latency` bigint NOT NULL DEFAULT '0',
  `rows_sent` bigint NOT NULL DEFAULT '0',
  `rows_examined` bigint NOT NULL DEFAULT '0',
  `rows_affected` bigint NOT NULL DEFAULT '0',
  `full_scans` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$host_summary_by_statement_type`
--

LOCK TABLES `x$host_summary_by_statement_type` WRITE;
/*!40000 ALTER TABLE `x$host_summary_by_statement_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$host_summary_by_statement_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$innodb_buffer_stats_by_schema` (
  `object_schema` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `allocated` double DEFAULT NULL,
  `data` double DEFAULT NULL,
  `pages` bigint NOT NULL DEFAULT '0',
  `pages_hashed` bigint NOT NULL DEFAULT '0',
  `pages_old` bigint NOT NULL DEFAULT '0',
  `rows_cached` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$innodb_buffer_stats_by_schema`
--

LOCK TABLES `x$innodb_buffer_stats_by_schema` WRITE;
/*!40000 ALTER TABLE `x$innodb_buffer_stats_by_schema` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$innodb_buffer_stats_by_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$innodb_buffer_stats_by_table` (
  `object_schema` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `object_name` longtext CHARACTER SET ucs2 COLLATE ucs2_general_ci,
  `allocated` double DEFAULT NULL,
  `data` double DEFAULT NULL,
  `pages` bigint NOT NULL DEFAULT '0',
  `pages_hashed` bigint NOT NULL DEFAULT '0',
  `pages_old` bigint NOT NULL DEFAULT '0',
  `rows_cached` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$innodb_buffer_stats_by_table`
--

LOCK TABLES `x$innodb_buffer_stats_by_table` WRITE;
/*!40000 ALTER TABLE `x$innodb_buffer_stats_by_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$innodb_buffer_stats_by_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$innodb_lock_waits` (
  `wait_started` timestamp NULL DEFAULT NULL,
  `wait_age_secs` bigint DEFAULT NULL,
  `locked_table` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `blocking_trx_age` time DEFAULT NULL,
  `locked_index` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `locked_type` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `waiting_trx_id` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `waiting_trx_started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `waiting_trx_rows_locked` bigint NOT NULL DEFAULT '0',
  `waiting_trx_rows_modified` bigint NOT NULL DEFAULT '0',
  `waiting_pid` bigint NOT NULL DEFAULT '0',
  `waiting_query` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `waiting_lock_id` varchar(81) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `wait_age` time DEFAULT NULL,
  `waiting_lock_mode` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `blocking_trx_id` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `blocking_pid` bigint NOT NULL DEFAULT '0',
  `blocking_query` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `blocking_lock_id` varchar(81) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `blocking_lock_mode` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `blocking_trx_started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `waiting_trx_age` time DEFAULT NULL,
  `blocking_trx_rows_locked` bigint NOT NULL DEFAULT '0',
  `blocking_trx_rows_modified` bigint NOT NULL DEFAULT '0',
  `sql_kill_blocking_query` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sql_kill_blocking_connection` varchar(26) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$innodb_lock_waits`
--

LOCK TABLES `x$innodb_lock_waits` WRITE;
/*!40000 ALTER TABLE `x$innodb_lock_waits` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$innodb_lock_waits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$io_global_by_file_by_bytes` (
  `file` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `count_read` bigint NOT NULL DEFAULT '0',
  `total_read` bigint NOT NULL DEFAULT '0',
  `avg_read` decimal(23,4) NOT NULL DEFAULT '0.0000',
  `count_write` bigint NOT NULL DEFAULT '0',
  `total_written` bigint NOT NULL DEFAULT '0',
  `avg_write` decimal(23,4) NOT NULL DEFAULT '0.0000',
  `total` bigint NOT NULL DEFAULT '0',
  `write_pct` decimal(26,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$io_global_by_file_by_bytes`
--

LOCK TABLES `x$io_global_by_file_by_bytes` WRITE;
/*!40000 ALTER TABLE `x$io_global_by_file_by_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$io_global_by_file_by_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$io_global_by_file_by_latency` (
  `file` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total` bigint NOT NULL DEFAULT '0',
  `total_latency` bigint NOT NULL DEFAULT '0',
  `count_read` bigint NOT NULL DEFAULT '0',
  `read_latency` bigint NOT NULL DEFAULT '0',
  `count_write` bigint NOT NULL DEFAULT '0',
  `write_latency` bigint NOT NULL DEFAULT '0',
  `count_misc` bigint NOT NULL DEFAULT '0',
  `misc_latency` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$io_global_by_file_by_latency`
--

LOCK TABLES `x$io_global_by_file_by_latency` WRITE;
/*!40000 ALTER TABLE `x$io_global_by_file_by_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$io_global_by_file_by_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$io_global_by_wait_by_bytes` (
  `event_name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total` bigint NOT NULL DEFAULT '0',
  `total_latency` bigint NOT NULL DEFAULT '0',
  `min_latency` bigint NOT NULL DEFAULT '0',
  `avg_latency` bigint NOT NULL DEFAULT '0',
  `max_latency` bigint NOT NULL DEFAULT '0',
  `count_read` bigint NOT NULL DEFAULT '0',
  `total_read` bigint NOT NULL DEFAULT '0',
  `avg_read` decimal(23,4) NOT NULL DEFAULT '0.0000',
  `count_write` bigint NOT NULL DEFAULT '0',
  `total_written` bigint NOT NULL DEFAULT '0',
  `avg_written` decimal(23,4) NOT NULL DEFAULT '0.0000',
  `total_requested` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$io_global_by_wait_by_bytes`
--

LOCK TABLES `x$io_global_by_wait_by_bytes` WRITE;
/*!40000 ALTER TABLE `x$io_global_by_wait_by_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$io_global_by_wait_by_bytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$io_global_by_wait_by_latency` (
  `event_name` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total` bigint NOT NULL DEFAULT '0',
  `total_latency` bigint NOT NULL DEFAULT '0',
  `avg_latency` bigint NOT NULL DEFAULT '0',
  `max_latency` bigint NOT NULL DEFAULT '0',
  `read_latency` bigint NOT NULL DEFAULT '0',
  `write_latency` bigint NOT NULL DEFAULT '0',
  `misc_latency` bigint NOT NULL DEFAULT '0',
  `count_read` bigint NOT NULL DEFAULT '0',
  `total_read` bigint NOT NULL DEFAULT '0',
  `avg_read` decimal(23,4) NOT NULL DEFAULT '0.0000',
  `count_write` bigint NOT NULL DEFAULT '0',
  `total_written` bigint NOT NULL DEFAULT '0',
  `avg_written` decimal(23,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$io_global_by_wait_by_latency`
--

LOCK TABLES `x$io_global_by_wait_by_latency` WRITE;
/*!40000 ALTER TABLE `x$io_global_by_wait_by_latency` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$io_global_by_wait_by_latency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$latest_file_io` (
  `thread` varchar(149) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `file` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `latency` bigint DEFAULT NULL,
  `operation` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `requested` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$latest_file_io`
--

LOCK TABLES `x$latest_file_io` WRITE;
/*!40000 ALTER TABLE `x$latest_file_io` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$latest_file_io` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x$memory_by_host_by_current_bytes` (
  `host` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `current_count_used` double DEFAULT NULL,
  `current_allocated` double DEFAULT NULL,
  `current_avg_alloc` double NOT NULL DEFAULT '0',
  `current_max_alloc` bigint DEFAULT NULL,
  `total_allocated` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x$memory_by_host_by_current_bytes`
--

LOCK TABLES `x$memory_by_host_by_current_bytes` WRITE;
/*!40000 ALTER TABLE `x$memory_by_host_by_current_bytes` DISABLE KEYS */;
/*!40000 ALTER TABLE `x$memory_by_host_by_current_bytes` ENABLE KEYS */;
UNLOCK TABLES;


INSERT INTO entities (Ent_type, tier) VALUES ('student',1);
INSERT INTO entities (Ent_type, tier) VALUES ('teacher',1);
INSERT INTO entities (Ent_type, tier) VALUES ('class',2);
INSERT INTO entities (Ent_type, tier) VALUES ('year group',3);
INSERT INTO entities (Ent_type, tier) VALUES ('key stage',4);
INSERT INTO entities (Ent_type, tier) VALUES ('school',5);
INSERT INTO entities (Ent_type, tier) VALUES ('subject year',3);
INSERT INTO teachgroups (groupname, entitiesID) VALUES ('ALL', (SELECT entities.entitiesID from entities WHERE entities.Ent_type='school' LIMIT 1)); 

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28 20:04:30
