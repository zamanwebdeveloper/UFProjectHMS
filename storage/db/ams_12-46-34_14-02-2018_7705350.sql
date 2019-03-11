SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET FOREIGN_KEY_CHECKS=0;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `ams`
--




CREATE TABLE `access_level` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create` tinyint(1) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `update` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `module_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `access_level_module_id_foreign` (`module_id`),
  KEY `access_level_role_id_foreign` (`role_id`),
  KEY `access_level_created_by_foreign` (`created_by`),
  KEY `access_level_updated_by_foreign` (`updated_by`),
  CONSTRAINT `access_level_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `access_level_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `access_level_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `access_level_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO access_level VALUES
("1","1","1","1","1","1","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:53"),
("2","1","1","1","1","2","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:53"),
("3","1","1","1","1","3","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:53"),
("4","1","1","1","1","4","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:54"),
("5","1","1","1","1","5","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:54"),
("6","1","1","1","1","6","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:54"),
("7","1","1","1","1","7","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:54"),
("8","1","1","1","1","8","1","1","1","2017-12-07 12:03:30","2017-12-07 12:03:54"),
("9","1","1","1","1","9","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("10","1","1","1","1","10","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("11","1","1","1","1","11","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("12","1","1","1","1","12","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("13","1","1","1","1","13","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("14","1","1","1","1","14","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("15","1","1","1","1","15","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("16","1","1","1","1","16","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("17","1","1","1","1","17","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("18","1","1","1","1","18","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("19","1","1","1","1","19","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("20","1","1","1","1","20","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("21","1","1","1","1","21","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("22","1","1","1","1","22","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("23","1","1","1","1","23","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("24","1","1","1","1","24","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("25","1","1","1","1","25","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("26","1","1","1","1","26","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:54"),
("27","1","1","1","1","27","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:55"),
("28","1","1","1","1","28","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:55"),
("29","1","1","1","1","29","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:55"),
("30","1","1","1","1","30","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:55"),
("31","1","1","1","1","31","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:55"),
("32","1","1","1","1","32","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:55"),
("33","1","1","1","1","33","1","1","1","2017-12-07 12:03:31","2017-12-07 12:03:55"),
("34","1","1","1","1","34","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("35","1","1","1","1","35","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("36","1","1","1","1","36","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("37","1","1","1","1","37","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("38","1","1","1","1","38","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("39","1","1","1","1","39","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("40","1","1","1","1","40","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("41","1","1","1","1","41","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("42","1","1","1","1","42","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("43","1","1","1","1","43","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("44","1","1","1","1","44","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:55"),
("45","1","1","1","1","45","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("46","1","1","1","1","46","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("47","1","1","1","1","47","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("48","1","1","1","1","48","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("49","1","1","1","1","49","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("50","1","1","1","1","50","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("51","1","1","1","1","51","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("52","1","1","1","1","52","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("53","1","1","1","1","53","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("54","1","1","1","1","54","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("55","1","1","1","1","55","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("56","1","1","1","1","56","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("57","1","1","1","1","57","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("58","1","1","1","1","58","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("59","1","1","1","1","59","1","1","1","2017-12-07 12:03:32","2017-12-07 12:03:56"),
("60","1","1","1","1","60","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("61","1","1","1","1","61","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("62","1","1","1","1","62","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("63","1","1","1","1","63","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("64","1","1","1","1","64","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("65","1","1","1","1","65","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("66","1","1","1","1","66","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("67","1","1","1","1","67","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("68","1","1","1","1","68","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:56"),
("69","1","1","1","1","69","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("70","1","1","1","1","70","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("71","1","1","1","1","71","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("72","1","1","1","1","72","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("73","1","1","1","1","73","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("74","1","1","1","1","74","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("75","1","1","1","1","75","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("76","1","1","1","1","76","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("77","1","1","1","1","77","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("78","1","1","1","1","78","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("79","1","1","1","1","79","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("80","1","1","1","1","80","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("81","1","1","1","1","81","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("82","1","1","1","1","82","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("83","1","1","1","1","83","1","1","1","2017-12-07 12:03:33","2017-12-07 12:03:57"),
("84","1","1","1","1","84","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("85","1","1","1","1","85","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("86","1","1","1","1","86","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("87","1","1","1","1","87","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("88","1","1","1","1","88","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("89","1","1","1","1","89","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("90","1","1","1","1","90","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("91","1","1","1","1","91","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("92","1","1","1","1","92","1","1","1","2017-12-07 12:03:34","2017-12-07 12:03:57"),
("93","1","1","1","1","93","1","1","1","2018-02-14 10:17:21","2018-02-14 10:17:38"),
("94","1","1","1","1","94","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("95","1","1","1","1","95","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("96","1","1","1","1","96","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("97","1","1","1","1","97","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("98","1","1","1","1","98","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("99","1","1","1","1","99","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("100","1","1","1","1","100","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38");
INSERT INTO access_level VALUES
("101","1","1","1","1","101","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("102","1","1","1","1","102","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("103","1","1","1","1","103","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("104","1","1","1","1","104","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("105","1","1","1","1","105","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:38"),
("106","1","1","1","1","106","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:39"),
("107","1","1","1","1","107","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:39"),
("108","1","1","1","1","108","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:39"),
("109","1","1","1","1","109","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:39"),
("110","1","1","1","1","110","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:39"),
("111","1","1","1","1","111","1","1","1","2018-02-14 10:17:22","2018-02-14 10:17:39");




CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `dashboard_watchlist` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_type_id` int(10) unsigned NOT NULL,
  `parent_account_type_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_account_type_id_foreign` (`account_type_id`),
  KEY `account_parent_account_type_id_foreign` (`parent_account_type_id`),
  KEY `account_branch_id_foreign` (`branch_id`),
  KEY `account_created_by_foreign` (`created_by`),
  KEY `account_updated_by_foreign` (`updated_by`),
  CONSTRAINT `account_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `account_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `account_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `account_parent_account_type_id_foreign` FOREIGN KEY (`parent_account_type_id`) REFERENCES `parent_account_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `account_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO account VALUES
("1","Advance Tax","Advance Tax","Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment.","0","1","3","1","1","1","1","1970-03-10 02:49:29","1981-03-16 06:52:49"),
("2","Employee Advance","Employee Advance","Money paid out to an employee in advance can be tracked here till it is repaid or shown to be spent for company purposes.","0","1","3","1","1","1","1","1997-12-03 08:55:43","1974-02-21 15:35:02"),
("3","Cash","Cash","It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.","0","1","4","1","1","1","1","1999-01-26 21:04:22","1992-04-29 06:03:11"),
("4","Undeposited Funds","Undeposited Funds","Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.","0","1","4","1","1","1","1","1997-09-26 02:23:53","2014-09-19 14:15:02"),
("5","Accounts Receivable","Accounts Receivable","The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.","0","1","2","1","1","1","1","2007-01-28 05:19:25","1990-04-17 03:21:18"),
("6","Inventory Asset","Inventory Asset","An account which tracks the value of goods in your inventory.","0","1","7","1","1","1","1","2008-02-03 03:39:21","1977-04-30 14:18:14"),
("7","Opening Balance Adjustments","Opening Balance Adjustments","This account will hold the difference in the debits and credits entered during the opening balance.","0","1","9","2","1","1","1","2000-07-20 23:15:03","1994-04-01 04:22:07"),
("8","Employee Reimbursements","Employee Reimbursements","This account can be used to track the reimbursements that are due to be paid out to employees.","0","1","9","2","1","1","1","1981-04-01 02:47:15","1979-06-24 06:27:03"),
("9","Tax Payable","Tax Payable","The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.","0","1","9","2","1","1","1","1995-02-25 08:33:36","1996-06-19 18:03:03"),
("10","Unearned Revenue","Unearned Revenue","A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.","0","1","9","2","1","1","1","1999-06-08 07:12:54","1997-08-16 07:01:05"),
("11","Accounts Payable","Accounts Payable","This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.","0","1","13","2","1","1","1","2011-09-19 11:17:03","2012-11-15 16:53:28"),
("12","Tag Adjustments","Tag Adjustments","This adjustment account tracks the transfers between different reporting tags.","0","1","12","2","1","1","1","1978-10-10 01:01:20","1984-10-30 18:33:59"),
("13","Drawings","Drawings","The money withdrawn from a business by its owner can be tracked with this account.","0","1","14","3","1","1","1","1978-02-07 07:49:00","2012-02-16 13:31:06"),
("14","Opening Balance Offset","Opening Balance Offset","This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.","0","1","14","3","1","1","1","1982-09-14 13:50:04","1998-01-27 10:50:26"),
("15","Owner Equity","Owner Equity","The owners rights to the assets of a company can be quantified in the owner\'s equity account.","0","1","14","3","1","1","1","1990-01-14 05:23:34","1976-11-15 08:47:24"),
("16","Sales","Sales","The income from the sales in your business is recorded under the sales account.","0","1","15","4","1","1","1","1997-09-29 09:06:35","2014-02-26 03:43:29"),
("17","General Income","General Income","A general category of account where you can record any income which cannot be recorded into any other category.","0","1","15","4","1","1","1","1979-07-30 19:28:40","1990-11-03 21:35:35"),
("18","Other Charges","Other Charges","Miscellaneous charges like adjustments made to the invoice can be recorded in this account.","0","1","15","4","1","1","1","1996-08-18 17:52:09","2010-05-11 23:36:48"),
("19","Interest Income","Interest Income","A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.","0","1","15","4","1","1","1","1990-07-09 14:06:24","1993-09-19 03:25:42"),
("20","Shipping Charge","Shipping Charge","Shipping charges made to the invoice will be recorded in this account.","0","1","15","4","1","1","1","2000-07-18 03:38:06","1979-09-06 02:03:34"),
("21","Discount","Discount","Any reduction on your selling price as a discount can be recorded into the discount account.","0","1","15","4","1","1","1","1981-03-29 23:12:35","1983-08-23 21:09:54"),
("22","Late Fee Income","Late Fee Income","Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date.","0","1","15","4","1","1","1","1972-02-28 10:38:07","1974-05-24 06:09:56"),
("23","Other Expenses","Other Expenses","Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.","0","1","17","5","1","1","1","1992-03-26 16:23:57","2015-02-14 18:40:20"),
("24","Bad Debt","Bad Debt","Any amount which is lost and is unrecoverable is recorded into the bad debt account.","0","1","17","5","1","1","1","1971-08-14 11:33:48","2006-09-28 21:32:41"),
("25","Exchange Gain or Loss","Exchange Gain or Loss","Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.","0","1","19","5","1","1","1","2001-11-29 02:11:47","1980-01-19 01:42:57"),
("26","Cost of Goods Sold","Cost of Goods Sold","An expense account which tracks the value of the goods sold.","0","1","18","5","1","1","1","2008-05-01 16:53:46","1981-03-21 08:30:33"),
("27","Prepaid Expense","Prepaid Expense","An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.","0","1","3","1","1","1","1","1980-04-30 19:53:37","2014-03-05 12:46:21"),
("28","Conveyance","Conveyance","An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.","0","1","17","5","1","1","1","1996-10-07 04:25:26","1985-06-24 20:58:20"),
("30","Agent Commission","Agent Commission","Agent Commission.","0","1","3","1","1","1","1","1981-12-25 20:47:42","1994-01-05 12:00:24");




CREATE TABLE `account_information_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `machine_model_no_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_model_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_model_no_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_model_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_part_no_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_part_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_part_no_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_part_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_serial_no_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_serial_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_serial_no_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_serial_no_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_quantity_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_quantity_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_quantity_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_quantity_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_warranty_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_warranty_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_warranty_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_warranty_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_unit_price_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_unit_price_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_unit_price_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optional_unit_price_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `bill_amount` int(11) DEFAULT NULL,
  `business_promotion_amount` int(11) DEFAULT NULL,
  `bill_format` tinyint(4) DEFAULT NULL,
  `customer_type` tinyint(4) DEFAULT NULL,
  `price_type` tinyint(4) DEFAULT NULL,
  `billing_information_consignee` longtext COLLATE utf8_unicode_ci,
  `billing_information__different_consignee` longtext COLLATE utf8_unicode_ci,
  `payment_terms` tinyint(4) DEFAULT NULL,
  `purchaser_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaser_telephone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaser_email_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaser_designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaser_mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaser_fax_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_of_payment_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_of_payment_telephone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_of_payment_email_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_of_payment_designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_of_payment_mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_of_payment_fax_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visit_customer_permises` tinyint(4) DEFAULT NULL,
  `customer_occupying_permises` date DEFAULT NULL,
  `neighbours_to_confirm_answer` tinyint(4) DEFAULT NULL,
  `permises_rent` tinyint(4) DEFAULT NULL,
  `office_setup` tinyint(4) DEFAULT NULL,
  `no_of_staff` int(11) DEFAULT NULL,
  `building_type` tinyint(4) DEFAULT NULL,
  `customer_get_contact` tinyint(4) DEFAULT NULL,
  `liase_with` tinyint(4) DEFAULT NULL,
  `confident_of_payment` tinyint(4) DEFAULT NULL,
  `receive_purchase_order` tinyint(4) DEFAULT NULL,
  `delivery_product_before` tinyint(4) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `signature_of_executive` tinyint(4) DEFAULT NULL,
  `executive_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_of_manager` tinyint(4) DEFAULT NULL,
  `manager_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_of_account` tinyint(4) DEFAULT NULL,
  `account_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_of_admin` tinyint(4) DEFAULT NULL,
  `admin_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_of_director` tinyint(4) DEFAULT NULL,
  `director_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_of_billing_officer` tinyint(4) DEFAULT NULL,
  `billing_officer_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_information_forms_user_id_foreign` (`user_id`),
  KEY `account_information_forms_created_by_foreign` (`created_by`),
  KEY `account_information_forms_updated_by_foreign` (`updated_by`),
  CONSTRAINT `account_information_forms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `account_information_forms_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `account_information_forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `account_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `parent_account_type_id` int(10) unsigned NOT NULL,
  `required_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_type_parent_account_type_id_foreign` (`parent_account_type_id`),
  CONSTRAINT `account_type_parent_account_type_id_foreign` FOREIGN KEY (`parent_account_type_id`) REFERENCES `parent_account_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO account_type VALUES
("1","Other Asset","Track special assets like goodwill and other intangible assets","1","0","1979-06-09 07:12:43","1973-11-18 08:07:28"),
("2","Accounts Receivable","Reflects money owed to you by your customers. Zoho Books provides a default Accounts Receivable account. E.g. Unpaid Invoices","1","1","1986-06-05 12:04:23","2012-05-08 21:28:23"),
("3","Other Current asset","Any short term asset that can be converted into cash or cash equivalents easily - Prepaid expenses - Stocks and Mutual Funds","1","0","2008-10-12 06:39:47","1974-12-22 07:44:13"),
("4","Cash","To keep track of cash and other cash equivalents like petty cash, undeposited funds, etc.","1","0","1970-04-29 06:05:41","1977-09-16 14:49:35"),
("5","Bank","To keep track of bank accounts like Savings, Checking, and Money Market accounts","1","0","1997-01-13 22:04:33","2013-01-19 00:32:05"),
("6","Fixed asset","Any long term investment or an asset that cannot be converted into cash easily like:-Land and Buildings - Plant, Machinery and Equipment - Computers -Furniture","1","0","2004-04-16 23:33:48","1988-02-24 23:57:04"),
("7","Stock","To keep track of your inventory assets.","1","0","2000-04-13 18:02:30","1988-02-22 00:41:38"),
("9","Other Current Liability","Any short term liability like:Customer Deposits - Tax Payable","2","0","2013-03-11 23:01:53","1994-04-19 15:45:50"),
("10","Credit Card","Create a trail of all your credit card transactions by creating a credit card account","2","0","1989-07-18 21:07:28","1988-01-17 06:32:27"),
("11","Long Term Liability","Liabilities that mature after a minimum period of one year like Notes Payable, Debentures, and Long Term Loans","2","0","1972-03-27 02:11:02","1992-07-18 06:30:07"),
("12","Other Liability","Obligation of an entity arising from past transactions or events which would require repayment.- Tax to be paid Loan to be Repaid Accounts Payable etc","2","0","1981-07-31 20:24:38","1993-06-27 07:11:36"),
("13","Accounts Payable","Accounts Payable","2","1","1976-05-06 13:02:06","2005-05-19 18:28:47"),
("14","Equity","Equity","3","0","1989-03-29 02:50:23","1990-05-18 22:13:18"),
("15","income","income","4","0","2010-01-21 02:59:21","1995-01-29 12:06:32"),
("16","Other Income","Other Income","4","0","1996-05-03 00:13:03","1991-04-09 20:05:50"),
("17","Expense","Expense","5","0","1980-01-25 00:11:03","1973-05-11 19:13:16"),
("18","Cost of Goods Sold","Cost of Goods Sold","5","0","1983-08-14 07:58:34","1971-10-21 08:49:19"),
("19","Other Expense","Other Expense","5","0","1974-07-08 06:40:54","1972-09-16 12:21:38");




CREATE TABLE `aftersixydays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `grama_rate` double DEFAULT NULL,
  `receive_date` timestamp NULL DEFAULT NULL,
  `date_of_payment` timestamp NULL DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aftersixydays_recruitingorder_id_unique` (`recruitingorder_id`),
  KEY `aftersixydays_created_by_foreign` (`created_by`),
  KEY `aftersixydays_updated_by_foreign` (`updated_by`),
  CONSTRAINT `aftersixydays_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `aftersixydays_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aftersixydays_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `agents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agents_branch_id_foreign` (`branch_id`),
  KEY `agents_created_by_foreign` (`created_by`),
  KEY `agents_updated_by_foreign` (`updated_by`),
  CONSTRAINT `agents_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `agents_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `agents_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `agreement_paper` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agreement_paper_created_by_foreign` (`created_by`),
  KEY `agreement_paper_updated_by_foreign` (`updated_by`),
  CONSTRAINT `agreement_paper_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `agreement_paper_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `agreement_paper_pax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agreement_paper_id` int(10) unsigned NOT NULL,
  `recruit_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agreement_paper_pax_agreement_paper_id_foreign` (`agreement_paper_id`),
  KEY `agreement_paper_pax_recruit_id_foreign` (`recruit_id`),
  CONSTRAINT `agreement_paper_pax_agreement_paper_id_foreign` FOREIGN KEY (`agreement_paper_id`) REFERENCES `agreement_paper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `agreement_paper_pax_recruit_id_foreign` FOREIGN KEY (`recruit_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `airlines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `airlines_created_by_foreign` (`created_by`),
  KEY `airlines_updated_by_foreign` (`updated_by`),
  CONSTRAINT `airlines_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `airlines_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `airlinetaxs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `airline_id` int(10) unsigned NOT NULL,
  `tickettax_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `airlinetaxs_airline_id_foreign` (`airline_id`),
  KEY `airlinetaxs_tickettax_id_foreign` (`tickettax_id`),
  KEY `airlinetaxs_created_by_foreign` (`created_by`),
  KEY `airlinetaxs_updated_by_foreign` (`updated_by`),
  CONSTRAINT `airlinetaxs_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `airlinetaxs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `airlinetaxs_tickettax_id_foreign` FOREIGN KEY (`tickettax_id`) REFERENCES `tickettaxs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `airlinetaxs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `arrival_recruit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitorder_id` int(10) unsigned NOT NULL,
  `arrival_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `arrival_recruit_recruitorder_id_foreign` (`recruitorder_id`),
  KEY `arrival_recruit_created_by_foreign` (`created_by`),
  KEY `arrival_recruit_updated_by_foreign` (`updated_by`),
  CONSTRAINT `arrival_recruit_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `arrival_recruit_recruitorder_id_foreign` FOREIGN KEY (`recruitorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `arrival_recruit_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `backup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backup_created_by_foreign` (`created_by`),
  KEY `backup_updated_by_foreign` (`updated_by`),
  CONSTRAINT `backup_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `backup_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `backupschedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intervaldays` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `bank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `particulars` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cheque_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `payment_mode_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_contact_id_foreign` (`contact_id`),
  KEY `bank_account_id_foreign` (`account_id`),
  KEY `bank_payment_mode_id_foreign` (`payment_mode_id`),
  KEY `bank_created_by_foreign` (`created_by`),
  KEY `bank_updated_by_foreign` (`updated_by`),
  CONSTRAINT `bank_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bank_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bank_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bank_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bank_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `due_amount` double NOT NULL,
  `bill_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_rates` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_tax` double NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `save` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_vendor_id_foreign` (`vendor_id`),
  KEY `bill_created_by_foreign` (`created_by`),
  KEY `bill_updated_by_foreign` (`updated_by`),
  CONSTRAINT `bill_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `bill_entry` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `amount` double NOT NULL,
  `bill_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_entry_bill_id_foreign` (`bill_id`),
  KEY `bill_entry_account_id_foreign` (`account_id`),
  KEY `bill_entry_tax_id_foreign` (`tax_id`),
  KEY `bill_entry_item_id_foreign` (`item_id`),
  KEY `bill_entry_created_by_foreign` (`created_by`),
  KEY `bill_entry_updated_by_foreign` (`updated_by`),
  CONSTRAINT `bill_entry_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_entry_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_entry_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_entry_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_entry_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_entry_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `bill_return_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_entries_id` int(10) unsigned DEFAULT NULL,
  `returned_quantity` int(11) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_return_entries_bill_entries_id_foreign` (`bill_entries_id`),
  KEY `bill_return_entries_created_by_foreign` (`created_by`),
  KEY `bill_return_entries_updated_by_foreign` (`updated_by`),
  CONSTRAINT `bill_return_entries_bill_entries_id_foreign` FOREIGN KEY (`bill_entries_id`) REFERENCES `bill_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_return_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `bill_return_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `branch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_description` longtext COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `branch_location_unique` (`location`),
  KEY `branch_created_by_foreign` (`created_by`),
  KEY `branch_updated_by_foreign` (`updated_by`),
  CONSTRAINT `branch_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `branch_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO branch VALUES
("1","1vkVWVExPx","Esse corrupti dicta nisi facere accusantium reiciendis veniam quia. Quis a officia quos consequuntur praesentium. Sit saepe qui et sunt iste in eum. Et molestias sint illum voluptatem.","1","1","2010-09-05 05:15:36","2006-04-26 05:02:16",""),
("2","NGWFmN7Lfb","Qui et aliquam porro dolores dolor. Et totam ut est eum ut perspiciatis eum. Atque delectus ipsum voluptatibus eos recusandae. Odit omnis sint qui et.","1","1","1973-05-03 09:39:36","2010-02-11 12:11:35",""),
("3","AZSLnGg7G3","Non asperiores distinctio amet maiores qui ducimus tenetur. Quam earum facilis animi vero vitae natus dolor. Culpa in non harum nobis eum molestiae voluptas. Enim rerum eaque quo neque.","1","1","1981-01-10 11:54:31","1981-12-24 00:13:41",""),
("4","6sX8mKQAw9","Corporis totam eos vitae impedit impedit. Ratione ut quaerat modi. Error quia et sequi asperiores dolores perferendis. In necessitatibus qui minus fugit.","1","1","2007-08-09 05:06:39","1992-09-29 03:27:58",""),
("5","5skVQvasGo","Doloremque voluptate hic reprehenderit facere voluptatibus aut. Eius explicabo pariatur odio. Ipsam dolorum delectus officia quaerat aut id.","1","1","2012-12-21 18:16:18","1999-05-12 12:57:35",""),
("6","QSKsERzx5O","Porro repellendus iusto temporibus quo aut facere soluta. Quia laudantium neque temporibus ea harum. Consequuntur sequi molestiae voluptas odit autem nesciunt.","1","1","2000-03-04 14:34:29","2002-10-28 20:29:02",""),
("7","8GjALqJHqI","Iste voluptatem possimus quo aut libero. Asperiores aut nam expedita itaque consequatur. Nihil nesciunt ratione facere doloribus ut inventore. Blanditiis pariatur reiciendis voluptatem.","1","1","1980-02-27 01:12:14","2000-05-19 07:57:44",""),
("8","wmDTkArzMy","Qui sit dolor qui quasi pariatur magni fugit. Nesciunt voluptas aliquam ea maiores totam impedit.","1","1","2002-05-11 07:21:25","2002-07-30 10:01:12",""),
("9","8MrI5MHNsK","Minus hic et explicabo voluptates incidunt dolorum. Possimus aut nemo similique. Sed qui reprehenderit exercitationem quas iste eum exercitationem quis.","1","1","1999-02-22 08:49:07","1990-08-14 00:11:22",""),
("10","1TS9wgKyIg","Qui blanditiis ut accusantium eveniet. Nesciunt rerum dolores dolorum excepturi. Quam id et quia id suscipit.","1","1","2017-07-27 15:17:52","2002-03-21 22:40:03","");




CREATE TABLE `challanform` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `challanNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `challanDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organizationAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate_1` double DEFAULT NULL,
  `rate_2` double DEFAULT NULL,
  `rate_3` double DEFAULT NULL,
  `quantity_1` double DEFAULT NULL,
  `quantity_2` double DEFAULT NULL,
  `quantity_3` double DEFAULT NULL,
  `amount_bangla` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manpower_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `challanform_manpower_id_foreign` (`manpower_id`),
  KEY `challanform_created_by_foreign` (`created_by`),
  KEY `challanform_updated_by_foreign` (`updated_by`),
  CONSTRAINT `challanform_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `challanform_manpower_id_foreign` FOREIGN KEY (`manpower_id`) REFERENCES `manpower` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `challanform_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cofil_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mealallowance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `airtransport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nameAr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyAddress` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `company_created_by_foreign` (`created_by`),
  KEY `company_updated_by_foreign` (`updated_by`),
  CONSTRAINT `company_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `completion_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completion_id` int(10) unsigned NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `completion_files_completion_id_foreign` (`completion_id`),
  CONSTRAINT `completion_files_completion_id_foreign` FOREIGN KEY (`completion_id`) REFERENCES `completions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `completions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paxid` int(10) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `smart_card_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `completions_created_by_foreign` (`created_by`),
  KEY `completions_updated_by_foreign` (`updated_by`),
  CONSTRAINT `completions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `completions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `confirmation_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `confirmation_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `confirmation_files_confirmation_id_foreign` (`confirmation_id`),
  CONSTRAINT `confirmation_files_confirmation_id_foreign` FOREIGN KEY (`confirmation_id`) REFERENCES `confirmations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `confirmations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flight_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_flight` date DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `e_ticket_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_name` int(10) unsigned DEFAULT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  `pax_id` int(10) unsigned DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `confirmations_vendor_name_foreign` (`vendor_name`),
  KEY `confirmations_bill_id_foreign` (`bill_id`),
  KEY `confirmations_pax_id_foreign` (`pax_id`),
  KEY `confirmations_created_by_foreign` (`created_by`),
  KEY `confirmations_updated_by_foreign` (`updated_by`),
  CONSTRAINT `confirmations_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `confirmations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `confirmations_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `confirmations_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `confirmations_vendor_name_foreign` FOREIGN KEY (`vendor_name`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tw_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_category_id` int(10) unsigned NOT NULL,
  `agent_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_contact_category_id_foreign` (`contact_category_id`),
  KEY `contact_agent_id_foreign` (`agent_id`),
  KEY `contact_branch_id_foreign` (`branch_id`),
  KEY `contact_created_by_foreign` (`created_by`),
  KEY `contact_updated_by_foreign` (`updated_by`),
  KEY `contact_account_id_foreign` (`account_id`),
  CONSTRAINT `contact_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_contact_category_id_foreign` FOREIGN KEY (`contact_category_id`) REFERENCES `contact_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `contact_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_category_description` longtext COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_category_created_by_foreign` (`created_by`),
  KEY `contact_category_updated_by_foreign` (`updated_by`),
  CONSTRAINT `contact_category_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact_category_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO contact_category VALUES
("1","Customer","Customer Description","1","1","1976-04-18 05:12:11","1985-01-25 06:12:58"),
("2","Dealer","Dealer Description","1","1","2006-01-19 15:07:56","1983-03-18 20:05:30"),
("3","Employee","Employee Description","1","1","1971-04-10 13:36:45","1978-12-09 13:02:40"),
("4","Vendor","Vandor Description","1","1","1990-08-15 08:27:51","2002-06-29 18:19:19"),
("5","Bank","Bank Description","1","1","1972-06-10 00:26:56","2004-09-20 23:53:34"),
("6","Agent","Agent Description","1","1","1990-01-12 19:08:02","1974-03-01 01:34:36");




CREATE TABLE `conveyance_bill_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conveyance_bill_id` int(10) unsigned NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conveyance_bill_lists_conveyance_bill_id_foreign` (`conveyance_bill_id`),
  KEY `conveyance_bill_lists_created_by_foreign` (`created_by`),
  KEY `conveyance_bill_lists_updated_by_foreign` (`updated_by`),
  CONSTRAINT `conveyance_bill_lists_conveyance_bill_id_foreign` FOREIGN KEY (`conveyance_bill_id`) REFERENCES `conveyance_bills` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `conveyance_bill_lists_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `conveyance_bill_lists_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `conveyance_bills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `expense_id` int(10) unsigned NOT NULL,
  `date` date DEFAULT NULL,
  `checked_by` int(10) unsigned DEFAULT NULL,
  `approved_by` int(10) unsigned DEFAULT NULL,
  `approved_by_chairman` int(11) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conveyance_bills_user_id_foreign` (`user_id`),
  KEY `conveyance_bills_expense_id_foreign` (`expense_id`),
  KEY `conveyance_bills_created_by_foreign` (`created_by`),
  KEY `conveyance_bills_updated_by_foreign` (`updated_by`),
  CONSTRAINT `conveyance_bills_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `conveyance_bills_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expense` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `conveyance_bills_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `conveyance_bills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `credit_note_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` double NOT NULL,
  `rate` double NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `credit_note_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_note_entries_item_id_foreign` (`item_id`),
  KEY `credit_note_entries_credit_note_id_foreign` (`credit_note_id`),
  KEY `credit_note_entries_tax_id_foreign` (`tax_id`),
  KEY `credit_note_entries_account_id_foreign` (`account_id`),
  KEY `credit_note_entries_created_by_foreign` (`created_by`),
  KEY `credit_note_entries_updated_by_foreign` (`updated_by`),
  CONSTRAINT `credit_note_entries_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_entries_credit_note_id_foreign` FOREIGN KEY (`credit_note_id`) REFERENCES `credit_notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_entries_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_entries_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `credit_note_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `invoice_id` int(10) unsigned NOT NULL,
  `credit_note_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_note_payments_invoice_id_foreign` (`invoice_id`),
  KEY `credit_note_payments_credit_note_id_foreign` (`credit_note_id`),
  KEY `credit_note_payments_created_by_foreign` (`created_by`),
  KEY `credit_note_payments_updated_by_foreign` (`updated_by`),
  CONSTRAINT `credit_note_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_payments_credit_note_id_foreign` FOREIGN KEY (`credit_note_id`) REFERENCES `credit_notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `credit_note_refunds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_mode_id` int(10) unsigned NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `credit_note_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_note_refunds_credit_note_id_foreign` (`credit_note_id`),
  KEY `credit_note_refunds_payment_mode_id_foreign` (`payment_mode_id`),
  KEY `credit_note_refunds_account_id_foreign` (`account_id`),
  KEY `credit_note_refunds_created_by_foreign` (`created_by`),
  KEY `credit_note_refunds_updated_by_foreign` (`updated_by`),
  CONSTRAINT `credit_note_refunds_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_refunds_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_refunds_credit_note_id_foreign` FOREIGN KEY (`credit_note_id`) REFERENCES `credit_notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_refunds_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_mode` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_note_refunds_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `credit_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `credit_note_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit_note_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shiping_charge` double NOT NULL,
  `adjustment` double NOT NULL,
  `total_credit_note` double NOT NULL,
  `available_credit` double NOT NULL,
  `customer_note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `terms_and_condition` longtext COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_notes_customer_id_foreign` (`customer_id`),
  KEY `credit_notes_created_by_foreign` (`created_by`),
  KEY `credit_notes_updated_by_foreign` (`updated_by`),
  CONSTRAINT `credit_notes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_notes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `credit_notes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `customer_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_file_customer_id_foreign` (`customer_id`),
  CONSTRAINT `customer_file_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `recruit_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `customer_sub_reference` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruit_customer_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `order` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_sub_reference_recruit_customer_id_foreign` (`recruit_customer_id`),
  CONSTRAINT `customer_sub_reference_recruit_customer_id_foreign` FOREIGN KEY (`recruit_customer_id`) REFERENCES `recruit_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documentcategory_id` int(10) unsigned NOT NULL,
  `pax_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_documentcategory_id_foreign` (`documentcategory_id`),
  KEY `document_created_by_foreign` (`created_by`),
  KEY `document_updated_by_foreign` (`updated_by`),
  CONSTRAINT `document_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_documentcategory_id_foreign` FOREIGN KEY (`documentcategory_id`) REFERENCES `documentcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `documentcategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentcategory_created_by_foreign` (`created_by`),
  KEY `documentcategory_updated_by_foreign` (`updated_by`),
  CONSTRAINT `documentcategory_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `documentcategory_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `email` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_created_by_foreign` (`created_by`),
  KEY `email_updated_by_foreign` (`updated_by`),
  CONSTRAINT `email_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `email_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `estimate_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `amount` double NOT NULL,
  `discount` double DEFAULT NULL,
  `rate` double NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `estimate_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estimate_entries_tax_id_foreign` (`tax_id`),
  KEY `estimate_entries_item_id_foreign` (`item_id`),
  KEY `estimate_entries_estimate_id_foreign` (`estimate_id`),
  KEY `estimate_entries_created_by_foreign` (`created_by`),
  KEY `estimate_entries_updated_by_foreign` (`updated_by`),
  CONSTRAINT `estimate_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimate_entries_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimate_entries_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimate_entries_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimate_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `estimates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estimate_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attn_designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heading` blob,
  `customer_id` int(10) unsigned NOT NULL,
  `terms_conditions` blob,
  `table_head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `left_notation` blob,
  `right_notation` blob,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `total_amount` double NOT NULL,
  `tax_total` double DEFAULT NULL,
  `due_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estimates_customer_id_foreign` (`customer_id`),
  KEY `estimates_created_by_foreign` (`created_by`),
  KEY `estimates_updated_by_foreign` (`updated_by`),
  CONSTRAINT `estimates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimates_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimates_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `excess_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_receives_id` int(10) unsigned NOT NULL,
  `invoice_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `excess_payment_payment_receives_id_foreign` (`payment_receives_id`),
  KEY `excess_payment_invoice_id_foreign` (`invoice_id`),
  KEY `excess_payment_created_by_foreign` (`created_by`),
  KEY `excess_payment_updated_by_foreign` (`updated_by`),
  CONSTRAINT `excess_payment_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `excess_payment_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `excess_payment_payment_receives_id_foreign` FOREIGN KEY (`payment_receives_id`) REFERENCES `payment_receives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `excess_payment_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `expense` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `paid_through_id` int(10) unsigned NOT NULL,
  `tax_total` double DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `vendor_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `tax_type` int(11) NOT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expense_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `save` tinyint(1) DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_paid_through_id_foreign` (`paid_through_id`),
  KEY `expense_account_id_foreign` (`account_id`),
  KEY `expense_vendor_id_foreign` (`vendor_id`),
  KEY `expense_tax_id_foreign` (`tax_id`),
  KEY `expense_created_by_foreign` (`created_by`),
  KEY `expense_updated_by_foreign` (`updated_by`),
  CONSTRAINT `expense_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expense_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expense_paid_through_id_foreign` FOREIGN KEY (`paid_through_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expense_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expense_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expense_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `expensesector` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expensesector_account_id_foreign` (`account_id`),
  KEY `expensesector_created_by_foreign` (`created_by`),
  KEY `expensesector_updated_by_foreign` (`updated_by`),
  CONSTRAINT `expensesector_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expensesector_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expensesector_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `finger_print_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fingerprint_id` int(10) unsigned NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `finger_print_files_fingerprint_id_foreign` (`fingerprint_id`),
  CONSTRAINT `finger_print_files_fingerprint_id_foreign` FOREIGN KEY (`fingerprint_id`) REFERENCES `fingerprint` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `fingerprint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bmet_status` tinyint(1) DEFAULT NULL,
  `assignedDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paxid` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fingerprint_paxid_foreign` (`paxid`),
  KEY `fingerprint_created_by_foreign` (`created_by`),
  KEY `fingerprint_updated_by_foreign` (`updated_by`),
  CONSTRAINT `fingerprint_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fingerprint_paxid_foreign` FOREIGN KEY (`paxid`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fingerprint_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `fit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pax_id` int(10) unsigned NOT NULL,
  `fit_card_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fit_card_pax_id_foreign` (`pax_id`),
  KEY `fit_card_created_by_foreign` (`created_by`),
  KEY `fit_card_updated_by_foreign` (`updated_by`),
  CONSTRAINT `fit_card_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fit_card_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fit_card_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `fit_card_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fit_card_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fit_card_file_fit_card_id_foreign` (`fit_card_id`),
  CONSTRAINT `fit_card_file_fit_card_id_foreign` FOREIGN KEY (`fit_card_id`) REFERENCES `fit_card` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `flight` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carrierName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flightDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL,
  `paxid` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_vendor_id_foreign` (`vendor_id`),
  KEY `flight_paxid_foreign` (`paxid`),
  KEY `flight_created_by_foreign` (`created_by`),
  KEY `flight_updated_by_foreign` (`updated_by`),
  CONSTRAINT `flight_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `flight_paxid_foreign` FOREIGN KEY (`paxid`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `flight_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `flight_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `form_basis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `companyNameEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyNameBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerNameEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerNameBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenceEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenceBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerDesignationEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerDesignationBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `gamca` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `submission_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivary_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `recruit_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gamca_recruit_id_foreign` (`recruit_id`),
  KEY `gamca_created_by_foreign` (`created_by`),
  KEY `gamca_updated_by_foreign` (`updated_by`),
  CONSTRAINT `gamca_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gamca_recruit_id_foreign` FOREIGN KEY (`recruit_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gamca_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `gamca_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medical_slip_form_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gamca_file_medical_slip_form_id_foreign` (`medical_slip_form_id`),
  CONSTRAINT `gamca_file_medical_slip_form_id_foreign` FOREIGN KEY (`medical_slip_form_id`) REFERENCES `medical_slip_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `gamca_receive_submit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medical_slip_form_id` int(10) unsigned NOT NULL,
  `received_status` tinyint(4) DEFAULT NULL,
  `submitted_status` tinyint(4) DEFAULT NULL,
  `pax_id` tinyint(3) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gamca_receive_submit_medical_slip_form_id_foreign` (`medical_slip_form_id`),
  CONSTRAINT `gamca_receive_submit_medical_slip_form_id_foreign` FOREIGN KEY (`medical_slip_form_id`) REFERENCES `medical_slip_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `headertemplate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headerType` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `immigration_clearance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `applicationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_person` int(11) NOT NULL,
  `person_count` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stampFee` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseValidity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitWelfareFee` int(11) DEFAULT NULL,
  `incomeTaxType` tinyint(4) NOT NULL DEFAULT '0',
  `unitIncomeTaxNAFee` int(11) DEFAULT NULL,
  `unitIncomeTaxSAFee` int(11) DEFAULT NULL,
  `unitSmartCardFee` int(11) DEFAULT NULL,
  `payOrderDetails` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WelfareComment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incomeTaxComment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SmartCardComment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `immigration_clearance_created_by_foreign` (`created_by`),
  KEY `immigration_clearance_updated_by_foreign` (`updated_by`),
  CONSTRAINT `immigration_clearance_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `immigration_clearance_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `immigration_clearance_pax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `immigration_clearance_id` int(10) unsigned NOT NULL,
  `pax_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `immigration_clearance_pax_immigration_clearance_id_foreign` (`immigration_clearance_id`),
  KEY `immigration_clearance_pax_pax_id_foreign` (`pax_id`),
  CONSTRAINT `immigration_clearance_pax_immigration_clearance_id_foreign` FOREIGN KEY (`immigration_clearance_id`) REFERENCES `immigration_clearance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `immigration_clearance_pax_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `incomes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `receive_through_id` int(10) unsigned NOT NULL,
  `tax_total` double DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `tax_type` int(11) NOT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `income_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incomes_receive_through_id_foreign` (`receive_through_id`),
  KEY `incomes_account_id_foreign` (`account_id`),
  KEY `incomes_customer_id_foreign` (`customer_id`),
  KEY `incomes_tax_id_foreign` (`tax_id`),
  KEY `incomes_created_by_foreign` (`created_by`),
  KEY `incomes_updated_by_foreign` (`updated_by`),
  CONSTRAINT `incomes_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `incomes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `incomes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `incomes_receive_through_id_foreign` FOREIGN KEY (`receive_through_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `incomes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `incomes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `insurances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `date_of_payment` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `insurances_recruitingorder_id_unique` (`recruitingorder_id`),
  KEY `insurances_created_by_foreign` (`created_by`),
  KEY `insurances_updated_by_foreign` (`updated_by`),
  CONSTRAINT `insurances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `insurances_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `insurances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `invoice_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `amount` double NOT NULL,
  `discount` double DEFAULT NULL,
  `discount_type` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `item_id` int(10) unsigned NOT NULL,
  `invoice_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `carton` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_entries_item_id_foreign` (`item_id`),
  KEY `invoice_entries_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_entries_tax_id_foreign` (`tax_id`),
  KEY `invoice_entries_account_id_foreign` (`account_id`),
  KEY `invoice_entries_created_by_foreign` (`created_by`),
  KEY `invoice_entries_updated_by_foreign` (`updated_by`),
  CONSTRAINT `invoice_entries_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_entries_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_entries_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_entries_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `invoice_return_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_entries_id` int(10) unsigned DEFAULT NULL,
  `returned_quantity` int(11) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_return_entries_invoice_entries_id_foreign` (`invoice_entries_id`),
  KEY `invoice_return_entries_created_by_foreign` (`created_by`),
  KEY `invoice_return_entries_updated_by_foreign` (`updated_by`),
  CONSTRAINT `invoice_return_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `invoice_return_entries_invoice_entries_id_foreign` FOREIGN KEY (`invoice_entries_id`) REFERENCES `invoice_entries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_return_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_note` longtext COLLATE utf8_unicode_ci,
  `tax_total` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `total_amount` double NOT NULL,
  `due_amount` double NOT NULL,
  `personal_note` longtext COLLATE utf8_unicode_ci,
  `save` tinyint(4) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agents_id` int(10) unsigned DEFAULT NULL,
  `agentcommissionAmount` int(11) DEFAULT NULL,
  `commission_type` tinyint(4) NOT NULL DEFAULT '0',
  `payment_recieve_id` int(10) unsigned DEFAULT NULL,
  `vat_adjustment` double DEFAULT NULL,
  `tax_adjustment` double DEFAULT NULL,
  `others_adjustment` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoices_invoice_number_unique` (`invoice_number`),
  KEY `invoices_customer_id_foreign` (`customer_id`),
  KEY `invoices_created_by_foreign` (`created_by`),
  KEY `invoices_updated_by_foreign` (`updated_by`),
  KEY `invoices_agents_id_foreign` (`agents_id`),
  KEY `invoices_payment_recieve_id_foreign` (`payment_recieve_id`),
  CONSTRAINT `invoices_agents_id_foreign` FOREIGN KEY (`agents_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoices_payment_recieve_id_foreign` FOREIGN KEY (`payment_recieve_id`) REFERENCES `payment_receives` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `invoices_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `iqamaacknowledgements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_date` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iqamaacknowledgements_created_by_foreign` (`created_by`),
  KEY `iqamaacknowledgements_updated_by_foreign` (`updated_by`),
  KEY `iqamaacknowledgements_recruitingorder_id_index` (`recruitingorder_id`),
  CONSTRAINT `iqamaacknowledgements_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `iqamaacknowledgements_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iqamaacknowledgements_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `iqamaapproval` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apprivalstatus` tinyint(4) DEFAULT NULL,
  `recruitingorder_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iqamaapproval_recruitingorder_id_unique` (`recruitingorder_id`),
  KEY `iqamaapproval_created_by_foreign` (`created_by`),
  KEY `iqamaapproval_updated_by_foreign` (`updated_by`),
  CONSTRAINT `iqamaapproval_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `iqamaapproval_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iqamaapproval_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `iqamaclearance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` longtext COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iqamaclearance_recruitingorder_id_unique` (`recruitingorder_id`),
  KEY `iqamaclearance_created_by_foreign` (`created_by`),
  KEY `iqamaclearance_updated_by_foreign` (`updated_by`),
  CONSTRAINT `iqamaclearance_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `iqamaclearance_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iqamaclearance_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `iqamareceives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_date` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iqamareceives_created_by_foreign` (`created_by`),
  KEY `iqamareceives_updated_by_foreign` (`updated_by`),
  KEY `iqamareceives_recruitingorder_id_index` (`recruitingorder_id`),
  CONSTRAINT `iqamareceives_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `iqamareceives_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iqamareceives_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `iqamarecipient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `recipient_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relational_passenger` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iqamarecipient_recruitingorder_id_unique` (`recruitingorder_id`),
  KEY `iqamarecipient_created_by_foreign` (`created_by`),
  KEY `iqamarecipient_updated_by_foreign` (`updated_by`),
  CONSTRAINT `iqamarecipient_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `iqamarecipient_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iqamarecipient_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `iqamasubmissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `submission_date` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iqamasubmissions_recruitingorder_id_unique` (`recruitingorder_id`),
  KEY `iqamasubmissions_created_by_foreign` (`created_by`),
  KEY `iqamasubmissions_updated_by_foreign` (`updated_by`),
  CONSTRAINT `iqamasubmissions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `iqamasubmissions_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iqamasubmissions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_sales_rate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_sales_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_sales_description` longtext COLLATE utf8_unicode_ci,
  `item_sales_tax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_purchase_rate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_purchase_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_purchase_description` longtext COLLATE utf8_unicode_ci,
  `reorder_point` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_purchases` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_sales` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_category_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_item_category_id_foreign` (`item_category_id`),
  KEY `item_branch_id_foreign` (`branch_id`),
  KEY `item_created_by_foreign` (`created_by`),
  KEY `item_updated_by_foreign` (`updated_by`),
  KEY `item_company_id_foreign` (`company_id`),
  CONSTRAINT `item_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `item_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_category_description` longtext COLLATE utf8_unicode_ci,
  `branch_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_category_branch_id_foreign` (`branch_id`),
  KEY `item_category_created_by_foreign` (`created_by`),
  KEY `item_category_updated_by_foreign` (`updated_by`),
  CONSTRAINT `item_category_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_category_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_category_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO item_category VALUES
("1","Product","Tenetur ipsam nobis et. Voluptate quisquam at quas beatae quo dolorem tempora. Non consequatur laborum assumenda voluptatem ut soluta voluptates. Molestiae explicabo quia quo officiis voluptatem.","3","1","1","1997-07-24 23:34:32","1974-02-14 23:40:50"),
("2","Service","Placeat ducimus et nobis assumenda. Possimus doloremque molestias qui. Ratione et quia sint incidunt magni qui nihil.","3","1","1","1991-04-13 00:16:46","1986-11-06 20:03:50");




CREATE TABLE `journal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8_unicode_ci,
  `branch_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `journal_branch_id_foreign` (`branch_id`),
  KEY `journal_created_by_foreign` (`created_by`),
  KEY `journal_updated_by_foreign` (`updated_by`),
  CONSTRAINT `journal_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `journal_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` longtext COLLATE utf8_unicode_ci,
  `debit_credit` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `account_name_id` int(10) unsigned NOT NULL,
  `jurnal_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `journal_id` int(10) unsigned DEFAULT NULL,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `income_id` int(10) unsigned DEFAULT NULL,
  `payment_receives_id` int(10) unsigned DEFAULT NULL,
  `payment_receives_entries_id` int(10) unsigned DEFAULT NULL,
  `credit_note_id` int(10) unsigned DEFAULT NULL,
  `credit_note_refunds_id` int(10) unsigned DEFAULT NULL,
  `expense_id` int(10) unsigned DEFAULT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `bill_entry_id` int(10) unsigned DEFAULT NULL,
  `payment_made_id` int(10) unsigned DEFAULT NULL,
  `payment_made_entry_id` int(10) unsigned DEFAULT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `tax_id` int(10) unsigned DEFAULT NULL,
  `pr_adjustment_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assign_date` timestamp NULL DEFAULT NULL,
  `salesComission_id` int(10) unsigned DEFAULT NULL,
  `agent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `journal_entries_journal_id_foreign` (`journal_id`),
  KEY `journal_entries_invoice_id_foreign` (`invoice_id`),
  KEY `journal_entries_payment_receives_id_foreign` (`payment_receives_id`),
  KEY `journal_entries_payment_receives_entries_id_foreign` (`payment_receives_entries_id`),
  KEY `journal_entries_credit_note_id_foreign` (`credit_note_id`),
  KEY `journal_entries_credit_note_refunds_id_foreign` (`credit_note_refunds_id`),
  KEY `journal_entries_expense_id_foreign` (`expense_id`),
  KEY `journal_entries_bill_id_foreign` (`bill_id`),
  KEY `journal_entries_bank_id_foreign` (`bank_id`),
  KEY `journal_entries_bill_entry_id_foreign` (`bill_entry_id`),
  KEY `journal_entries_payment_made_id_foreign` (`payment_made_id`),
  KEY `journal_entries_payment_made_entry_id_foreign` (`payment_made_entry_id`),
  KEY `journal_entries_account_name_id_foreign` (`account_name_id`),
  KEY `journal_entries_contact_id_foreign` (`contact_id`),
  KEY `journal_entries_income_id_foreign` (`income_id`),
  KEY `journal_entries_tax_id_foreign` (`tax_id`),
  KEY `journal_entries_created_by_foreign` (`created_by`),
  KEY `journal_entries_updated_by_foreign` (`updated_by`),
  KEY `journal_entries_salescomission_id_foreign` (`salesComission_id`),
  KEY `journal_entries_agent_id_foreign` (`agent_id`),
  CONSTRAINT `journal_entries_account_name_id_foreign` FOREIGN KEY (`account_name_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_bill_entry_id_foreign` FOREIGN KEY (`bill_entry_id`) REFERENCES `bill_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_credit_note_id_foreign` FOREIGN KEY (`credit_note_id`) REFERENCES `credit_notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_credit_note_refunds_id_foreign` FOREIGN KEY (`credit_note_refunds_id`) REFERENCES `credit_note_refunds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expense` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_income_id_foreign` FOREIGN KEY (`income_id`) REFERENCES `incomes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_journal_id_foreign` FOREIGN KEY (`journal_id`) REFERENCES `journal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_payment_made_entry_id_foreign` FOREIGN KEY (`payment_made_entry_id`) REFERENCES `payment_made_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_payment_made_id_foreign` FOREIGN KEY (`payment_made_id`) REFERENCES `payment_made` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_payment_receives_entries_id_foreign` FOREIGN KEY (`payment_receives_entries_id`) REFERENCES `payment_receives_entries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_payment_receives_id_foreign` FOREIGN KEY (`payment_receives_id`) REFERENCES `payment_receives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_salescomission_id_foreign` FOREIGN KEY (`salesComission_id`) REFERENCES `salescommisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `journal_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `kafalas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitingorder_id` int(10) unsigned NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_kafala` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kafalas_recruitingorder_id_unique` (`recruitingorder_id`),
  KEY `kafalas_created_by_foreign` (`created_by`),
  KEY `kafalas_updated_by_foreign` (`updated_by`),
  CONSTRAINT `kafalas_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `kafalas_recruitingorder_id_foreign` FOREIGN KEY (`recruitingorder_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `kafalas_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `locktransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locktransactions_created_by_foreign` (`created_by`),
  KEY `locktransactions_updated_by_foreign` (`updated_by`),
  CONSTRAINT `locktransactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `locktransactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `manpower` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `issuingDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paxid` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manpower_paxid_foreign` (`paxid`),
  KEY `manpower_created_by_foreign` (`created_by`),
  KEY `manpower_updated_by_foreign` (`updated_by`),
  CONSTRAINT `manpower_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_paxid_foreign` FOREIGN KEY (`paxid`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `manpower_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sector` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `contact_id` int(10) unsigned NOT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `ticket_hotel_id` int(10) unsigned DEFAULT NULL,
  `progress_status_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `manpower_service_order_id_unique` (`order_id`),
  KEY `manpower_service_bill_id_foreign` (`bill_id`),
  KEY `manpower_service_invoice_id_foreign` (`invoice_id`),
  KEY `manpower_service_contact_id_foreign` (`contact_id`),
  KEY `manpower_service_vendor_id_foreign` (`vendor_id`),
  KEY `manpower_service_ticket_hotel_id_foreign` (`ticket_hotel_id`),
  KEY `manpower_service_progress_status_id_foreign` (`progress_status_id`),
  KEY `manpower_service_created_by_foreign` (`created_by`),
  KEY `manpower_service_updated_by_foreign` (`updated_by`),
  CONSTRAINT `manpower_service_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_progress_status_id_foreign` FOREIGN KEY (`progress_status_id`) REFERENCES `manpower_service_progress_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_ticket_hotel_id_foreign` FOREIGN KEY (`ticket_hotel_id`) REFERENCES `ticket_hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `manpower_service_progress_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manpower_service_progress_status_created_by_foreign` (`created_by`),
  KEY `manpower_service_progress_status_updated_by_foreign` (`updated_by`),
  CONSTRAINT `manpower_service_progress_status_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_progress_status_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `manpower_service_ticket_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manpower_service_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manpower_service_ticket_document_manpower_service_id_foreign` (`manpower_service_id`),
  KEY `manpower_service_ticket_document_created_by_foreign` (`created_by`),
  KEY `manpower_service_ticket_document_updated_by_foreign` (`updated_by`),
  CONSTRAINT `manpower_service_ticket_document_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_ticket_document_manpower_service_id_foreign` FOREIGN KEY (`manpower_service_id`) REFERENCES `manpower_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manpower_service_ticket_document_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `medical_slip_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dateOfApplication` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medical_slip_form_created_by_foreign` (`created_by`),
  KEY `medical_slip_form_updated_by_foreign` (`updated_by`),
  CONSTRAINT `medical_slip_form_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `medical_slip_form_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `medical_slip_form_pax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `medicalslip_id` int(10) unsigned NOT NULL,
  `recruit_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medical_slip_form_pax_medicalslip_id_foreign` (`medicalslip_id`),
  KEY `medical_slip_form_pax_recruit_id_foreign` (`recruit_id`),
  CONSTRAINT `medical_slip_form_pax_medicalslip_id_foreign` FOREIGN KEY (`medicalslip_id`) REFERENCES `medical_slip_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `medical_slip_form_pax_recruit_id_foreign` FOREIGN KEY (`recruit_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `medicalslip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pax_id` int(10) unsigned NOT NULL,
  `medical_centre_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medical_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medical_report_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_visit_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicalslip_pax_id_foreign` (`pax_id`),
  KEY `medicalslip_created_by_foreign` (`created_by`),
  KEY `medicalslip_updated_by_foreign` (`updated_by`),
  CONSTRAINT `medicalslip_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `medicalslip_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `medicalslip_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO migrations VALUES
("1","2014_10_12_000000_create_users_table","1"),
("2","2014_10_12_100000_create_password_resets_table","1"),
("3","2017_01_18_092901_create_user_activations_table","1"),
("4","2017_02_02_053156_create_branch_table","1"),
("5","2017_02_02_053157_create_contact_category_table","1"),
("6","2017_02_02_053222_create_agents_table","1"),
("7","2017_02_02_053223_create_contact_table","1"),
("8","2017_02_02_053225_create_customer_file_table","1"),
("9","2017_02_10_044930_create_payment_mode_table","1"),
("10","2017_02_10_044940_create_parent_account_type_table","1"),
("11","2017_02_10_045717_create_account_type_table","1"),
("12","2017_02_10_045727_create_account_table","1"),
("13","2017_02_11_053630_create_tax_table","1"),
("14","2017_02_11_053631_create_journal_table","1"),
("15","2017_02_13_181447_create_item_category_table","1"),
("16","2017_02_13_181545_create_item_table","1"),
("17","2017_02_13_181719_create_product_table","1"),
("18","2017_02_13_181753_create_product_phase_table","1"),
("19","2017_02_13_181830_create_product_phase_item_table","1"),
("20","2017_02_20_060418_create_modules_table","1"),
("21","2017_02_20_060419_create_roles_table","1"),
("22","2017_02_20_060456_create_access_level_table","1"),
("23","2017_02_20_170318_create_product_phase_item_add_table","1"),
("24","2017_03_09_071116_create_organization_profiles_table","1"),
("25","2017_04_28_174719_create_invoices_table","1"),
("26","2017_04_28_174745_create_invoice_entries_table","1"),
("27","2017_04_29_161315_create_payment_receives_table","1"),
("28","2017_04_29_161316_create_payment_receives_entries_table","1"),
("29","2017_04_29_161406_create_credit_notes_table","1"),
("30","2017_04_29_161420_create_credit_note_entries_table","1"),
("31","2017_04_29_161439_create_credit_note_payments_table","1"),
("32","2017_04_29_161458_create_credit_note_refunds_table","1"),
("33","2017_05_05_033709_create_excess_payment_table","1"),
("34","2017_06_06_230413_create_expense_table","1"),
("35","2017_06_06_230649_create_bill_table","1"),
("36","2017_06_06_230649_create_stock_table","1"),
("37","2017_06_06_230716_create_bill_entry_table","1"),
("38","2017_06_06_230904_create_payment_made_table","1"),
("39","2017_06_06_230920_create_payment_made_entry_table","1"),
("40","2017_07_02_093820_create_company_table","1"),
("41","2017_07_02_093908_create_okala_table","1"),
("42","2017_07_02_093955_create_fingerprint_table","1"),
("43","2017_07_02_101441_create_recruitingorder_table","1"),
("44","2017_07_02_101445_create_order_file_table","1"),
("45","2017_07_02_101541_create_manpower_table","1"),
("46","2017_07_02_101545_create_flight_table","1"),
("47","2017_07_02_101552_create_relation_table","1"),
("48","2017_07_02_111525_create_visaentrys_table","1"),
("49","2017_07_02_112834_create_mofas_table","1"),
("50","2017_07_02_112844_create_mofa_file_table","1"),
("51","2017_07_02_113905_create_visa_entry_file_table","1"),
("52","2017_07_02_113911_create_relation_mofa_visa_table","1"),
("53","2017_07_02_114007_create_medicalSlip_table","1"),
("54","2017_07_02_114017_create_report_file_table","1"),
("55","2017_07_02_114116_create_musaned_table","1"),
("56","2017_07_02_114223_create_visaStamping_table","1"),
("57","2017_07_02_114225_create_stampingApproval_table","1"),
("58","2017_07_02_120151_create_relation_Stam_table","1"),
("59","2017_07_03_102404_create_visas_table","1"),
("60","2017_07_09_053945_create_form_basis_table","1"),
("61","2017_07_09_054306_create_medical_slip_form_table","1"),
("62","2017_07_09_054337_create_medical_slip_form_pax_table","1"),
("63","2017_07_09_054343_create_recruit_customer_table","1"),
("64","2017_07_09_054400_create_medical_slip_form_pax_relation_table","1"),
("65","2017_07_09_072348_create_bank_table","1"),
("66","2017_07_09_105254_create_document_cat_table","1"),
("67","2017_07_09_105323_create_document_table","1"),
("68","2017_07_09_105359_document_category_relation_table","1"),
("69","2017_07_10_071211_add_extracolumn_to_company_table","1"),
("70","2017_07_10_071504_add_extracolumn_to_recruting_table","1"),
("71","2017_07_10_102221_create_expensesector_table","1"),
("72","2017_07_10_102313_create_recruiteexpense_table","1"),
("73","2017_07_10_102346_create_expense_pax_table","1"),
("74","2017_07_10_103128_create_expense_sector_pax_relation_table","1"),
("75","2017_07_11_044752_create_agreement_paper_table","1"),
("76","2017_07_11_044810_create_agreement_paper_pax_table","1"),
("77","2017_07_11_044830_create_agreement_paper_pax_relation_table","1"),
("78","2017_07_12_033953_create_incomes_table","1"),
("79","2017_07_13_034016_create_visaacceptance_table","1"),
("80","2017_07_13_034117_create_gamca_table","1"),
("81","2017_07_13_034123_create_visa_process_report_table","1"),
("82","2017_07_13_034137_create_visaacceptance_relation_table","1"),
("83","2017_07_15_041806_add_namear_to_company_table","1"),
("84","2017_07_15_042901_create_visaforms_table","1"),
("85","2017_07_15_043020_create_visaformbulks_table","1"),
("86","2017_07_15_043043_create_visaformagreement_table","1"),
("87","2017_07_15_043130_create_visaform_and_bulk_relation_table","1"),
("88","2017_07_15_043201_create_visaform_and_agreement_relation","1"),
("89","2017_07_15_065551_add_submissiondate_to_visaentry_table","1"),
("90","2017_07_16_063504_add_so_cloumn_to_visaform_table","1"),
("91","2017_07_16_085859_add_Qualification_cloumn_to_recruitcustomer_table","1"),
("92","2017_07_16_091948_create_immigration_clearance_table","1"),
("93","2017_07_16_092030_create_immigration_clearance_pax_table","1"),
("94","2017_07_16_092527_create_immigration_clearance_pax_relation_table","1"),
("95","2017_07_19_064337_create_TicketTaxs_table","1"),
("96","2017_07_19_070312_create_Ticketcommission_table","1"),
("97","2017_07_19_071729_create_TicketTaxsrelation_users_table","1"),
("98","2017_07_20_051731_create_note_sheet_table","1"),
("99","2017_07_20_051753_create_note_sheet_pax_table","1"),
("100","2017_07_20_051813_create_note_sheet_pax_relation_table","1");
INSERT INTO migrations VALUES
("101","2017_07_20_063113_create_airline_table","1"),
("102","2017_07_20_063202_create_airline_tax_table","1"),
("103","2017_07_20_063236_create_ticket_hotel_table","1"),
("104","2017_07_20_063237_create_airline_tax_relation_table","1"),
("105","2017_07_20_063255_create_ticket_order_table","1"),
("106","2017_07_20_063270_create_ticket_order_tax_table","1"),
("107","2017_07_20_063316_create_ticket_order_relation_table","1"),
("108","2017_07_20_085916_create_ticket_airlines_relation_table","1"),
("109","2017_07_22_060301_add_order_id_to_tikcetorder_table","1"),
("110","2017_07_22_064357_create_ticket_document_table","1"),
("111","2017_07_22_065222_create_ticket_relation_table","1"),
("112","2017_07_22_091918_create_backup_table","1"),
("113","2017_07_22_125915_add_tikestan_to_backup_table","1"),
("114","2017_07_23_072134_create_openingbalance_table","1"),
("115","2017_07_25_051426_add_column_to_invoices_table","1"),
("116","2017_07_25_101612_add_relationinvoice_to_invoices_table","1"),
("117","2017_07_25_102109_create_salesComissions_table","1"),
("118","2017_07_26_051806_add_column_tosalesComissions_table","1"),
("119","2017_07_26_064942_add_amount_column_tosalesComissions_table","1"),
("120","2017_07_26_121050_add_paidthrow_column_tosalesComissions_table","1"),
("121","2017_07_29_000713_create_table_reminders_","1"),
("122","2017_08_01_152513_create_email_table","1"),
("123","2017_08_01_152617_create_email_relation_table","1"),
("124","2017_08_01_173308_create_table_estimate","1"),
("125","2017_08_01_173337_create_table_estimate_entries","1"),
("126","2017_08_12_153258_add_aaccount_id_to_contact_table","1"),
("127","2017_08_13_173159_create_backupshcedule_table","1"),
("128","2017_08_20_153506_create_invoice_header_type_table","1"),
("129","2017_08_26_181345_add_etin_to_organizationprofil_table","1"),
("130","2017_08_27_094335_create_price_lists_table","1"),
("131","2017_08_27_170652_add_expensenumner_to_users_table","1"),
("132","2017_08_27_170737_add_income_numner_to_users_table","1"),
("133","2017_09_11_111239_create_account_information_forms_table","1"),
("134","2017_09_15_144125_create_conveyance_bills_table","1"),
("135","2017_09_16_104832_create_conveyance_bill_lists_table","1"),
("136","2017_09_20_115019_create_manpower_service_table","1"),
("137","2017_09_20_130709_create_manpower_service_ticket_document_table","1"),
("138","2017_09_20_152819_create_manpower_service_progress_status_table","1"),
("139","2017_09_20_165633_create_manpower_service_relation_table","1"),
("140","2017_09_24_113740_create_module_delete","1"),
("141","2017_09_25_162241_create_reciption_categories_table","1"),
("142","2017_09_25_162312_create_reciption_logbooks_table","1"),
("143","2017_09_26_151605_add_location_to_branch_table","1"),
("144","2017_09_27_152430_add_craetedby_updated_by_to_estimates_table","1"),
("145","2017_10_03_161718_add_save_to_bill_table","1"),
("146","2017_10_04_112216_add_save_to_expense_table","1"),
("147","2017_10_08_124104_create_gamca_receive_submit_table","1"),
("148","2017_10_08_124114_create_arrivel_recruit_table","1"),
("149","2017_10_08_124142_create_gamca_file_table","1"),
("150","2017_10_08_124854_create_gamca_file_relation_table","1"),
("151","2017_10_09_163650_create_finger_print_files_table","1"),
("152","2017_10_10_152202_create_trainings_table","1"),
("153","2017_10_10_152220_create_training_files_table","1"),
("154","2017_10_10_171208_create_completions_table","1"),
("155","2017_10_10_171221_create_completion_files_table","1"),
("156","2017_10_10_182235_create_fit_card_table","1"),
("157","2017_10_10_182315_create_police_clearances_table","1"),
("158","2017_10_10_182328_create_police_clearance_files_table","1"),
("159","2017_10_10_182339_create_fit_card_file_table","1"),
("160","2017_10_11_120209_create_submission_table","1"),
("161","2017_10_11_120244_create_submission_file_table","1"),
("162","2017_10_11_120250_create_fit_card_relation_table","1"),
("163","2017_10_11_130916_create_confirmations_table","1"),
("164","2017_10_11_130930_create_confirmation_files_table","1"),
("165","2017_10_22_114851_create_customersubreference_table","1"),
("166","2017_10_24_155236_add_votes_to_item_table","1"),
("167","2017_10_26_120459_create_challanForm_table","1"),
("168","2017_10_29_161460_create_journal_entries_table","1"),
("169","2017_10_30_153235_add_assigndate_to_journalentrys_table","1"),
("170","2017_10_30_164053_add_passport_number_to_ticketorder_table","1"),
("171","2017_11_01_152143_add_passport_number_to_manpoerservice_table","1"),
("172","2017_11_11_104338_create_iqamaapproval_table","1"),
("173","2017_11_11_165620_add_column_to_invoice_entries_table","1"),
("174","2017_11_12_103948_add_payment_recieve_id_to_invoices_table","1"),
("175","2017_11_13_102150_add_column_to_recruit_order_table","1"),
("176","2017_11_13_153129_drop_column_to_visa_entries_table","1"),
("177","2017_11_13_171928_add_column_to_challan_form_table","1"),
("178","2017_11_13_180159_add_new_column_challanform_table","1"),
("179","2017_11_16_154015_create_recieve_table","1"),
("180","2017_11_16_154156_create_iqama_submissions_table","1"),
("181","2017_11_16_154219_create_insurance_table","1"),
("182","2017_11_19_103720_create_iqama_clearance_table","1"),
("183","2017_11_19_150619_create_iqama_receipient_table","1"),
("184","2017_11_19_172513_add_comission_to_recruitingorder_table","1"),
("185","2017_11_20_111124_create_iqamaacknowledgements_table","1"),
("186","2017_11_20_173630_create_kafalas_table","1"),
("187","2017_11_21_120952_add_visa_type_to_users_table","1"),
("188","2017_11_22_100945_create_aftersixydays_table","1"),
("189","2017_11_22_163439_add_cancel_for_okala_to_visaentrys_table","1"),
("190","2017_11_23_145734_add_parent_id_to_customer_sub_reference_table","1"),
("191","2017_11_23_155124_add_sales_commission_id_to_recruiteexpense","1"),
("192","2017_11_27_070356_add__column_to_journal_entries_table","1"),
("193","2017_11_27_160109_add_column_relational_passenger_to_iqamarecipient","1"),
("194","2017_11_28_091327_add_column_upload_and_comments_to_iqamaclearance","1"),
("195","2017_12_04_122256_create_pms__sites_table","1"),
("196","2017_12_04_122617_create_pms__employees_table","1"),
("197","2017_12_06_101105_add_name_to_pms_employees_table","1"),
("198","2017_12_06_105249_add_coloum_remarks_to_stamping_approval","1"),
("199","2017_12_06_161426_add_column_last_invoice_amount_to_recruitingorder","1"),
("200","2017_12_06_171754_create_pms_sectors_table","1");
INSERT INTO migrations VALUES
("201","2017_12_07_084328_add_column_ticket_approval_to_submission_table","1"),
("202","2017_12_11_153022_add_column_reference_to_invoices","1"),
("203","2017_12_14_172629_add_daily_work_hour_to_pms_employee","1"),
("204","2017_12_18_142027_create_ticket_refunds_table","1"),
("205","2017_12_19_123830_create_ticket_refund_others_table","1"),
("206","2017_12_19_162639_create_contact_user_defined_function","1"),
("207","2017_12_23_152947_add_coloum_overtime_amount_per_hour_to_pms_employee","1"),
("208","2017_12_24_165712_create_pms_leave_settings_table","1"),
("209","2017_12_24_165807_create_pms_leave_assigns_table","1"),
("210","2017_12_27_105257_add_craetedby_updated_by_to_branch_table","1"),
("211","2017_12_30_175116_create_invoice_return_entries_table","1"),
("212","2018_01_01_100621_drop_pr_adjustment_and_note_from_invoices_table","1"),
("213","2018_01_01_171033_create_bill_return_entries_table","1"),
("214","2018_01_07_124433_add_remarks_column_to_recruitingorder","1"),
("215","2018_01_07_160317_add_unit_type_column_to_item","1"),
("216","2018_01_09_130259_add_column_invoice_bill_to_ticket_refund_others_table","1"),
("217","2018_01_15_123101_create_pms_assign_allowances_table","1"),
("218","2018_01_15_123130_create_pms_assign_deductions_table","1"),
("219","2018_01_15_151835_create_pms_payroll_sheets_table","1"),
("220","2018_01_15_170333_create_pms_payslips_table","1"),
("221","2018_01_15_171429_create_pms_payslip_allowances_table","1"),
("222","2018_01_15_171445_create_pms_payslip_deductions_table","1"),
("223","2018_01_16_141349_create_pms_companies_table","1"),
("224","2018_01_16_152355_create_pms_invoices_table","1"),
("225","2018_01_17_095206_create_pms_settings_table","1"),
("226","2018_01_18_171500_add_column_pms_company_id_to_pms_payroll_sheets","1"),
("227","2018_01_20_095559_add_number_column_to_pms_payslips_table","1"),
("228","2018_01_20_103406_create_pms_expense_sector_table","1"),
("229","2018_01_21_112316_create_pms_receipts_table","1"),
("230","2018_01_22_100055_create_setting_currencies_table","1"),
("231","2018_01_22_100123_create_setting_currency_rates_table","1"),
("232","2018_02_10_125110_create_pms_account_type_table","1"),
("233","2018_02_10_130707_create_pms_account_sub_type_table","1"),
("234","2018_02_10_141306_create_pms_account_table","1"),
("235","2018_02_10_142654_create_pms_contact_category_table","1"),
("236","2018_02_10_143051_create_pms_contact_table","1"),
("237","2018_02_10_144904_create_pms_holiday_table","1"),
("238","2018_02_10_150337_create_pms_advance_payment_table","1"),
("239","2018_02_10_153142_create_pms_income_table","1"),
("240","2018_02_11_103344_create_pmsexpenses_table","1"),
("241","2018_02_11_104141_create_pms_payslips_payments_table","1"),
("242","2018_02_11_145123_create_pms_expenses_payments_table","1"),
("243","2018_09_19_155039_add_file_url_to_users_table","1"),
("244","2018_12_07_091736_create_pms_attendance_table","1"),
("245","2018_12_14_124217_add_coloum_absense_to_pms_attendance_table","1"),
("246","2018_12_20_150755_add_column_overtime_to_pms_attendance","1"),
("247","2019_09_27_125739_createlocktransaction_table","1");




CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO modules VALUES
("1","Contact","contact","1973-04-16 13:24:06","1970-02-18 21:40:51"),
("2","Contact Category","contact/category","1980-12-15 22:30:11","2004-08-24 17:21:48"),
("3","Account Chart","account-chart","1984-11-05 09:25:32","2011-04-08 18:16:26"),
("4","Inventory Item","inventory","1976-01-01 14:37:21","2011-01-17 10:38:00"),
("5","Inventory Category","inventory/category","2008-12-23 14:08:37","2016-07-15 16:14:45"),
("6","Stock Management","stock-management","1995-11-02 14:06:00","1993-06-12 03:55:21"),
("7","Product Track","product-track","1991-08-20 18:53:28","2000-11-09 19:34:04"),
("8","Manual Journal","manual-journal","1985-07-22 15:50:23","1999-05-03 22:58:28"),
("9","Bill","bill","1978-10-09 13:33:25","1991-03-04 14:30:42"),
("10","Credit Note","credit-note","1982-09-24 19:04:00","1991-02-24 21:22:01"),
("11","Credit Note Refund ","credit-note/refund","1978-01-17 19:09:58","1979-01-27 21:42:35"),
("12","Expense","expense","1996-12-25 12:40:00","2013-09-12 13:27:43"),
("13","Inventory","inventory","1995-09-11 05:17:06","1979-07-23 07:01:26"),
("14","Inventory Category","inventory/category","1991-02-03 08:48:09","1984-12-06 01:56:04"),
("15","Invoice","invoice","2012-10-13 06:07:30","2010-03-06 10:20:41"),
("16","Payment Made","payment-made","1995-09-07 10:51:58","1989-05-13 19:07:45"),
("17","Payment Received","payment-received","2011-08-20 13:12:27","1985-12-18 08:29:44"),
("18","Report","report","2013-10-05 17:20:55","1993-04-01 23:12:54"),
("19","Price List","price-list","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("20","Bank","bank","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("21","Income","income","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("22","Estimate","estimate","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("23","Sales Commission","Commission/Sales","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("24","Conveyance Bill Check ","conveyancebill/check","2017-09-13 10:00:00","2017-11-13 12:00:00"),
("25","Conveyance","conveyancebill","2017-09-13 10:00:00","2017-11-13 12:00:00"),
("26","Ticket Dashboard","ticket/dashboard","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("27","Ticket Order","ticket/order","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("28","Ticket Document","ticket/document","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("29","Ticket Commission","ticket/settings/commissions","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("30","Ticket Hotel","ticket/hotel","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("31","Ticket IATA Bill","ticket/IATA/bill","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("32","Recruit Dashboard","recruitdashboard","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("33","Recruite Company","company","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("34","Visa","visa","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("35","Visa Bill","visas/bill","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("36","Visa Acceptance","visaacceptance","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("37","Visa Form","visaform","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("38","Recruit Order","order","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("39","Recruit Order Invoice","order/invoice","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("40","Recruit Order Account","order/accounts","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("41","Recruit Account Expense","order/recruit/expense","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("42","Recruit Account Expense Secror","order/expense/sector","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("43","Customer","customer","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("44","Customer Information","customer/information","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("45","Customer Account","customer/account","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("46","Okala","okala","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("47","Gamca","gamca","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("48","Medicalslip Report","medicalslip","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("49","Mofa","mofa","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("50","Fit Card","fitcard","2017-10-12 18:00:00","2017-10-12 18:00:00"),
("51","Police Clearance","police-clearance","2017-10-12 18:00:00","2017-10-12 18:00:00"),
("52","Musaned","musaned","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("53","Visa Stamp","visastamp","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("54","Finger","fingerprint","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("55","Training","training","2017-10-12 18:00:00","2017-10-12 18:00:00"),
("56","Manpower","manpowers","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("57","Completion","completion","2017-10-12 18:00:00","2017-10-12 18:00:00"),
("58","Submission","submission","2017-10-12 18:00:00","2017-10-12 18:00:00"),
("59","Confirmation","confirmation","2017-10-12 18:00:00","2017-10-12 18:00:00"),
("60","Flight","flight","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("61","Arrival","arrival","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("62","Iqama Approval","iqama/approval","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("63","Iqama Insurance","iqama/insurance","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("64","Iqama Submission","iqama/submission","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("65","Iqama Receive","iqama/receive","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("66","Iqama Delivery Clearance","iqama/delivery/clearance","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("67","Iqama Delivery Receipient","iqama/delivery/receipient","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("68","Iqama Delivery Acknowledgement","iqama/delivery/acknowledgement","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("69","Kafala Before 60 Days","kafala/before60days","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("70","Kafala After 60 Days","kafala/after60days","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("71","Settlement","settlement","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("72","Document","document","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("73","Document Category","document/category","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("74","Form Basic","form_basis","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("75","Form Medicalslip","medical_slip_form","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("76","Form Agreement","agreement","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("77","Form Non Objection","noobjection","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("78","Form Visa Process","visaprocess","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("79","Form Immigration","immigration","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("80","Form Note Sheet","note_sheet","2017-08-27 12:00:00","2017-08-27 12:00:00"),
("81","Account Information Form","accountinformationform","2017-09-12 12:00:00","2017-09-12 12:00:00"),
("82","Execuitive Approval","execuitive","2017-09-12 12:00:00","2017-09-12 12:00:00"),
("83","Manager Approval ","manager","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("84","Account Approval ","account","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("85","Admin Approval ","admin","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("86","Director Approval ","director","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("87","Officer Approval ","officer","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("88","Stampning Approval ","stamping/approval","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("89","Recruit Report ","recruitreport","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("90","Manpower Service ","manpower/service","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("91","Manpower Service Document ","manpower/service/document","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("92","Monpower Service Hotel ","manpower/service/hotel","2017-09-13 12:00:00","2017-09-13 12:00:00"),
("93","PMS Site","pms/site","2018-01-14 18:00:00","2018-01-14 18:00:00"),
("94","PMS Employee","pms/employee","2018-01-14 18:00:00","2018-01-14 18:00:00"),
("95","PMS Assign Site","pms/assign/sites","2018-01-14 18:00:00","2018-01-14 18:00:00"),
("96","PMS Attendance","pms/attendance","2018-01-14 18:00:00","2018-01-14 18:00:00"),
("97","PMS Leave","pms/leave","2018-01-14 18:00:00","2018-01-14 18:00:00"),
("98","PMS Payroll","pms/payroll","2018-01-14 18:00:00","2018-01-14 18:00:00"),
("99","Payraoll Assign Allowance","pms/payroll/assign/allowance","2018-01-15 18:00:00","2018-01-15 18:00:00"),
("100","Payraoll Assign Deduction","pms/payroll/assign/deduction","2018-01-15 18:00:00","2018-01-15 18:00:00");
INSERT INTO modules VALUES
("101","Payroll Sheet","pms/payroll/sheet","2018-01-15 18:00:00","2018-01-15 18:00:00"),
("102","Payroll Sheet Approval","pms/payroll/sheet/approval","2018-01-15 18:00:00","2018-01-15 18:00:00"),
("103","Payroll Payslip","pms/payroll/payslip","2018-01-15 18:00:00","2018-01-15 18:00:00"),
("104","Pms Expense Payment","pms/expense/payment","2018-01-27 18:00:00","2018-01-27 18:00:00"),
("105","Pms Expense","pms/expense","2018-01-27 18:00:00","2018-01-27 18:00:00"),
("106","Pms Expense Sector","pms/expense/sector","2018-01-27 18:00:00","2018-01-27 18:00:00"),
("107","Pms Payroll Company","pms/payroll/company","2018-01-27 18:00:00","2018-01-27 18:00:00"),
("108","Pms Payroll Invoice Payment Receive","pms/payroll/invoice/payment-receive","2018-01-27 18:00:00","2018-01-27 18:00:00"),
("109","Pms Invoice","pms/invoice","2018-01-27 18:00:00","2018-01-27 18:00:00"),
("110","Pms Payroll Payslip Payment","pms/payroll/payslip/payment","2018-01-27 18:00:00","2018-01-27 18:00:00"),
("111","Pms Report","pms/report","2018-01-27 18:00:00","2018-01-27 18:00:00");




CREATE TABLE `mofa_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mofa_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mofa_file_mofa_id_foreign` (`mofa_id`),
  CONSTRAINT `mofa_file_mofa_id_foreign` FOREIGN KEY (`mofa_id`) REFERENCES `mofas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `mofas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pax_id` int(10) unsigned NOT NULL,
  `mofaNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iqamaNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mofaDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_submit_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mofas_pax_id_foreign` (`pax_id`),
  KEY `mofas_created_by_foreign` (`created_by`),
  KEY `mofas_updated_by_foreign` (`updated_by`),
  CONSTRAINT `mofas_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mofas_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mofas_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `mudule_delete` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO mudule_delete VALUES
("1","ticketing","1","1999-01-25 04:12:37","1981-10-20 19:08:28"),
("2","manpower","1","1983-09-09 22:38:29","2007-04-02 17:04:12"),
("3","recruit","1","2015-11-23 16:17:05","2007-03-10 11:49:04"),
("4","hazz","1","2000-06-03 22:20:42","1980-02-23 13:57:14"),
("5","umrah","1","1983-10-24 17:25:16","1970-07-22 15:42:11"),
("6","hrm","1","2005-10-10 15:47:40","1993-06-21 19:01:19"),
("7","pms","1","1992-11-15 16:47:38","1984-02-05 22:40:16");




CREATE TABLE `musaned` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pax_id` int(10) unsigned NOT NULL,
  `issue_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `musaned_pax_id_foreign` (`pax_id`),
  KEY `musaned_company_id_foreign` (`company_id`),
  KEY `musaned_created_by_foreign` (`created_by`),
  KEY `musaned_updated_by_foreign` (`updated_by`),
  CONSTRAINT `musaned_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musaned_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musaned_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `musaned_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `note_sheet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `countryGender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applicationDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceIncomeTax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `welfareFee` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payOrderNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chalanNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infoAttestation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payOrderDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chalanDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificateAttestation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payOrderAmount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chalanAmount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `note_sheet_created_by_foreign` (`created_by`),
  KEY `note_sheet_updated_by_foreign` (`updated_by`),
  CONSTRAINT `note_sheet_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `note_sheet_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `note_sheet_pax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brifing` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruit_id` int(10) unsigned NOT NULL,
  `note_sheet_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `note_sheet_pax_note_sheet_id_foreign` (`note_sheet_id`),
  KEY `note_sheet_pax_recruit_id_foreign` (`recruit_id`),
  KEY `note_sheet_pax_created_by_foreign` (`created_by`),
  KEY `note_sheet_pax_updated_by_foreign` (`updated_by`),
  CONSTRAINT `note_sheet_pax_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `note_sheet_pax_note_sheet_id_foreign` FOREIGN KEY (`note_sheet_id`) REFERENCES `note_sheet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `note_sheet_pax_recruit_id_foreign` FOREIGN KEY (`recruit_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `note_sheet_pax_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `okala` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paxid` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `okala_paxid_foreign` (`paxid`),
  KEY `okala_created_by_foreign` (`created_by`),
  KEY `okala_updated_by_foreign` (`updated_by`),
  CONSTRAINT `okala_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `okala_paxid_foreign` FOREIGN KEY (`paxid`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `okala_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `openningbalances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openningBalanceDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `openningbalances_created_by_foreign` (`created_by`),
  KEY `openningbalances_updated_by_foreign` (`updated_by`),
  CONSTRAINT `openningbalances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `openningbalances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `order_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruit_order_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_file_recruit_order_id_foreign` (`recruit_order_id`),
  CONSTRAINT `order_file_recruit_order_id_foreign` FOREIGN KEY (`recruit_order_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `organization_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `etin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO organization_profiles VALUES
("1","logo.png","Ontik Tech","Ontik Technology","Dhanmondi Rd.No. 2","Dhaka","Dhaka","Bangladesh","1200","http://ontiktechnology.com","01xxx xxxxxx","info@ontiktechnology.com","1983-08-29 02:18:52","1996-11-27 10:35:36","","");




CREATE TABLE `parent_account_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO parent_account_type VALUES
("1","Assets","Assets","1986-11-17 07:53:56","2000-11-06 22:13:53"),
("2","Liability","Liability","1981-08-27 20:05:45","2011-05-18 11:31:10"),
("3","Equity","Equity","1999-11-04 21:09:50","1987-03-30 21:04:38"),
("4","income","income","2008-01-14 16:04:15","2003-04-12 17:35:19"),
("5","Expense","Expense","1975-03-07 08:05:28","2000-10-06 17:08:12");




CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `payment_made` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pm_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode_id` int(10) unsigned NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excess_amount` double NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `vendor_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_made_payment_mode_id_foreign` (`payment_mode_id`),
  KEY `payment_made_account_id_foreign` (`account_id`),
  KEY `payment_made_vendor_id_foreign` (`vendor_id`),
  KEY `payment_made_created_by_foreign` (`created_by`),
  KEY `payment_made_updated_by_foreign` (`updated_by`),
  CONSTRAINT `payment_made_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_made_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_made_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_mode` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_made_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_made_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `payment_made_entry` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_made_id` int(10) unsigned NOT NULL,
  `bill_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_made_entry_payment_made_id_foreign` (`payment_made_id`),
  KEY `payment_made_entry_bill_id_foreign` (`bill_id`),
  KEY `payment_made_entry_created_by_foreign` (`created_by`),
  KEY `payment_made_entry_updated_by_foreign` (`updated_by`),
  CONSTRAINT `payment_made_entry_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_made_entry_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_made_entry_payment_made_id_foreign` FOREIGN KEY (`payment_made_id`) REFERENCES `payment_made` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_made_entry_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `payment_mode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mode_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO payment_mode VALUES
("1","Cash","Cash","1971-11-07 17:47:22","1994-01-18 23:23:02"),
("2","Bank Cheque","Bank Cheque","1995-08-06 05:53:44","2005-02-22 00:50:49");




CREATE TABLE `payment_receives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pr_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8_unicode_ci,
  `amount` double NOT NULL,
  `excess_payment` double NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode_id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_receives_payment_mode_id_foreign` (`payment_mode_id`),
  KEY `payment_receives_account_id_foreign` (`account_id`),
  KEY `payment_receives_customer_id_foreign` (`customer_id`),
  KEY `payment_receives_created_by_foreign` (`created_by`),
  KEY `payment_receives_updated_by_foreign` (`updated_by`),
  CONSTRAINT `payment_receives_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_receives_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_receives_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_receives_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_mode` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_receives_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `payment_receives_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_receives_id` int(10) unsigned NOT NULL,
  `invoice_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_receives_entries_payment_receives_id_foreign` (`payment_receives_id`),
  KEY `payment_receives_entries_invoice_id_foreign` (`invoice_id`),
  KEY `payment_receives_entries_created_by_foreign` (`created_by`),
  KEY `payment_receives_entries_updated_by_foreign` (`updated_by`),
  CONSTRAINT `payment_receives_entries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_receives_entries_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_receives_entries_payment_receives_id_foreign` FOREIGN KEY (`payment_receives_id`) REFERENCES `payment_receives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_receives_entries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms__employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_expiry` date DEFAULT NULL,
  `iqama_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iqama_expiry` date DEFAULT NULL,
  `site_name` int(10) unsigned DEFAULT NULL,
  `basic_salary` double DEFAULT NULL,
  `food_allowance` double DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `daily_work_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overtime_amount_per_hour` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iqama_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pms__employees_code_name_unique` (`code_name`),
  KEY `pms__employees_site_name_foreign` (`site_name`),
  KEY `pms__employees_created_by_foreign` (`created_by`),
  KEY `pms__employees_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms__employees_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms__employees_site_name_foreign` FOREIGN KEY (`site_name`) REFERENCES `pms__sites` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pms__employees_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms__sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wages_rate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_period_from` date DEFAULT NULL,
  `billing_period_to` date DEFAULT NULL,
  `bill_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_paper_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `siteManager` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms__sites_created_by_foreign` (`created_by`),
  KEY `pms__sites_updated_by_foreign` (`updated_by`),
  KEY `pms__sites_sitemanager_foreign` (`siteManager`),
  CONSTRAINT `pms__sites_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms__sites_sitemanager_foreign` FOREIGN KEY (`siteManager`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms__sites_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO pms__sites VALUES
("3","Ontik","sssss","ssss","s","21212","","","","sss","","1","2018-02-14 10:19:29","2018-02-14 10:19:29","1","1"),
("4","sdsddssd","sssssss","sssss","dsdsds","32321321","32","2018-01-29","2018-02-28","sdss","","1","2018-02-14 11:16:35","2018-02-14 11:16:35","1","1");




CREATE TABLE `pms_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_account_sub_type_id` int(10) unsigned DEFAULT NULL,
  `required` tinyint(3) unsigned DEFAULT NULL COMMENT 'null=can delete, 1=can not delete',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_account_pms_account_sub_type_id_foreign` (`pms_account_sub_type_id`),
  KEY `pms_account_created_by_foreign` (`created_by`),
  KEY `pms_account_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_account_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_account_pms_account_sub_type_id_foreign` FOREIGN KEY (`pms_account_sub_type_id`) REFERENCES `pms_account_sub_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_account_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO pms_account VALUES
("1","3","1","Advance Payment","","","","2006-03-28 07:24:47","2007-02-28 15:26:05");




CREATE TABLE `pms_account_sub_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_account_type_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_account_sub_type_pms_account_type_id_foreign` (`pms_account_type_id`),
  CONSTRAINT `pms_account_sub_type_pms_account_type_id_foreign` FOREIGN KEY (`pms_account_type_id`) REFERENCES `pms_account_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO pms_account_sub_type VALUES
("1","1","Other Asset","2005-05-04 01:45:26","1997-05-18 12:27:34"),
("2","1","Account Receivable","2003-03-28 23:43:53","1999-07-21 06:23:11"),
("3","1","Other Current Asset","1976-02-28 03:28:37","1973-02-07 02:45:55"),
("4","1","Cash","1977-11-14 23:48:01","2006-05-28 03:10:41"),
("5","1","Bank","2011-09-15 05:33:31","1997-04-06 02:05:18"),
("6","1","Fixed Asset","2014-09-13 18:52:35","2013-10-24 03:34:03"),
("7","1","Stock","1984-11-22 00:12:07","1995-07-21 19:32:23"),
("8","2","Other Current Liability","2001-02-23 16:43:57","2016-12-22 04:19:26"),
("9","2","Credit Card","1991-12-13 22:01:24","1977-03-10 09:03:10"),
("10","2","Long Term Liability","2010-08-04 11:14:43","2015-06-08 11:55:34"),
("11","2","Other Liability","1987-01-01 06:15:59","1976-06-10 23:42:48"),
("12","2","Accounts payable","1986-05-06 00:55:15","2002-07-18 16:03:24"),
("13","3","Equity","2012-09-20 13:53:28","1978-05-16 22:24:13"),
("14","4","Income","2009-06-08 14:31:34","2015-12-01 03:20:01"),
("15","4","Other Income","1982-06-21 02:22:02","2013-03-10 02:34:08"),
("16","5","Expense","1973-10-28 20:07:26","1997-12-09 16:32:46"),
("17","5","Cost of Goods Sold","1991-07-21 04:34:17","1976-05-05 15:00:29"),
("18","5","Other Expense","2002-09-03 07:47:54","1980-01-03 01:14:16");




CREATE TABLE `pms_account_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO pms_account_type VALUES
("1","Assets","1983-07-05 11:40:38","1973-03-09 23:38:11"),
("2","Liability","1994-05-07 22:25:00","2008-11-17 12:43:24"),
("3","Equity","1987-05-30 19:36:36","2002-10-13 23:07:36"),
("4","Income","1992-10-05 12:06:05","2016-01-12 20:00:57"),
("5","Expense","1979-01-26 12:52:50","2005-04-30 07:08:08");




CREATE TABLE `pms_advance_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_contact_id` int(10) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `remaining` double DEFAULT NULL,
  `pay_through_id` int(10) unsigned DEFAULT NULL,
  `pms_account_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_advance_payment_pms_contact_id_foreign` (`pms_contact_id`),
  KEY `pms_advance_payment_pay_through_id_foreign` (`pay_through_id`),
  KEY `pms_advance_payment_pms_account_id_foreign` (`pms_account_id`),
  KEY `pms_advance_payment_created_by_foreign` (`created_by`),
  KEY `pms_advance_payment_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_advance_payment_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_advance_payment_pay_through_id_foreign` FOREIGN KEY (`pay_through_id`) REFERENCES `pms_account` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_advance_payment_pms_account_id_foreign` FOREIGN KEY (`pms_account_id`) REFERENCES `pms_account` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_advance_payment_pms_contact_id_foreign` FOREIGN KEY (`pms_contact_id`) REFERENCES `pms_contact` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_advance_payment_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_assign_allowances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `pms_employees_id` int(10) unsigned DEFAULT NULL,
  `pms_sectors_id` int(10) unsigned DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_assign_allowances_pms_employees_id_foreign` (`pms_employees_id`),
  KEY `pms_assign_allowances_pms_sectors_id_foreign` (`pms_sectors_id`),
  KEY `pms_assign_allowances_created_by_foreign` (`created_by`),
  KEY `pms_assign_allowances_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_assign_allowances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_assign_allowances_pms_employees_id_foreign` FOREIGN KEY (`pms_employees_id`) REFERENCES `pms__employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_assign_allowances_pms_sectors_id_foreign` FOREIGN KEY (`pms_sectors_id`) REFERENCES `pms_sectors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_assign_allowances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_assign_deductions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `pms_employees_id` int(10) unsigned DEFAULT NULL,
  `pms_sectors_id` int(10) unsigned DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_assign_deductions_pms_employees_id_foreign` (`pms_employees_id`),
  KEY `pms_assign_deductions_pms_sectors_id_foreign` (`pms_sectors_id`),
  KEY `pms_assign_deductions_created_by_foreign` (`created_by`),
  KEY `pms_assign_deductions_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_assign_deductions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_assign_deductions_pms_employees_id_foreign` FOREIGN KEY (`pms_employees_id`) REFERENCES `pms__employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_assign_deductions_pms_sectors_id_foreign` FOREIGN KEY (`pms_sectors_id`) REFERENCES `pms_sectors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_assign_deductions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_attendance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `entrance_time` time DEFAULT NULL,
  `leave_time` time DEFAULT NULL,
  `pms_site_id` int(10) unsigned DEFAULT NULL,
  `pms_employee_id` int(10) unsigned DEFAULT NULL,
  `absense` tinyint(1) DEFAULT NULL,
  `overtime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_attendance_pms_site_id_foreign` (`pms_site_id`),
  KEY `pms_attendance_pms_employee_id_foreign` (`pms_employee_id`),
  KEY `pms_attendance_created_by_foreign` (`created_by`),
  KEY `pms_attendance_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_attendance_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_attendance_pms_employee_id_foreign` FOREIGN KEY (`pms_employee_id`) REFERENCES `pms__employees` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pms_attendance_pms_site_id_foreign` FOREIGN KEY (`pms_site_id`) REFERENCES `pms__sites` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pms_attendance_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO pms_attendance VALUES
("1","2018-02-25","","","","","","","","","","");




CREATE TABLE `pms_companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_en` longtext COLLATE utf8_unicode_ci,
  `address_ar` longtext COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_companies_created_by_foreign` (`created_by`),
  KEY `pms_companies_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_companies_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_companies_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_contact_category_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_contact_pms_contact_category_id_foreign` (`pms_contact_category_id`),
  KEY `pms_contact_created_by_foreign` (`created_by`),
  KEY `pms_contact_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_contact_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_contact_pms_contact_category_id_foreign` FOREIGN KEY (`pms_contact_category_id`) REFERENCES `pms_contact_category` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_contact_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_contact_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_expense_sector` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_expense_sector_created_by_foreign` (`created_by`),
  KEY `pms_expense_sector_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_expense_sector_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_expense_sector_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_expenses_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_expenses_id` int(10) unsigned DEFAULT NULL,
  `pms_advance_payment_id` int(10) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_expenses_payments_pms_expenses_id_foreign` (`pms_expenses_id`),
  KEY `pms_expenses_payments_pms_advance_payment_id_foreign` (`pms_advance_payment_id`),
  KEY `pms_expenses_payments_created_by_foreign` (`created_by`),
  KEY `pms_expenses_payments_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_expenses_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_expenses_payments_pms_advance_payment_id_foreign` FOREIGN KEY (`pms_advance_payment_id`) REFERENCES `pms_advance_payment` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_expenses_payments_pms_expenses_id_foreign` FOREIGN KEY (`pms_expenses_id`) REFERENCES `pmsexpenses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_expenses_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_holiday` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_holiday_created_by_foreign` (`created_by`),
  KEY `pms_holiday_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_holiday_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_holiday_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO pms_holiday VALUES
("15","2018-02-08","2018-02-17","dssd","1","","2018-02-14 11:48:03","");




CREATE TABLE `pms_income` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_contact_id` int(10) unsigned DEFAULT NULL,
  `pms_account_id` int(10) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `particular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_through_id` int(10) unsigned DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_income_pms_contact_id_foreign` (`pms_contact_id`),
  KEY `pms_income_pms_account_id_foreign` (`pms_account_id`),
  KEY `pms_income_receive_through_id_foreign` (`receive_through_id`),
  KEY `pms_income_created_by_foreign` (`created_by`),
  KEY `pms_income_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_income_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_income_pms_account_id_foreign` FOREIGN KEY (`pms_account_id`) REFERENCES `pms_account` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_income_pms_contact_id_foreign` FOREIGN KEY (`pms_contact_id`) REFERENCES `pms_contact` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_income_receive_through_id_foreign` FOREIGN KEY (`receive_through_id`) REFERENCES `pms_account` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_income_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_date` date DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pms_sites_id` int(10) unsigned DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_from_date` date DEFAULT NULL,
  `invoice_to_date` date DEFAULT NULL,
  `due_amount` double(8,2) DEFAULT NULL,
  `total_hours` double(8,2) DEFAULT NULL,
  `per_hour_rate` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) DEFAULT NULL,
  `pms_company_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pms_invoices_invoice_number_unique` (`invoice_number`),
  KEY `pms_invoices_pms_sites_id_foreign` (`pms_sites_id`),
  KEY `pms_invoices_pms_company_id_foreign` (`pms_company_id`),
  KEY `pms_invoices_created_by_foreign` (`created_by`),
  KEY `pms_invoices_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_invoices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_invoices_pms_company_id_foreign` FOREIGN KEY (`pms_company_id`) REFERENCES `pms_companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_invoices_pms_sites_id_foreign` FOREIGN KEY (`pms_sites_id`) REFERENCES `pms__sites` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_invoices_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_leave_assigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_employee_id` int(10) unsigned DEFAULT NULL,
  `leave_from` datetime DEFAULT NULL,
  `leave_to` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_leave_assigns_pms_employee_id_foreign` (`pms_employee_id`),
  KEY `pms_leave_assigns_created_by_foreign` (`created_by`),
  KEY `pms_leave_assigns_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_leave_assigns_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_leave_assigns_pms_employee_id_foreign` FOREIGN KEY (`pms_employee_id`) REFERENCES `pms__employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_leave_assigns_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_leave_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `highest_allowed_leave` int(11) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_leave_settings_created_by_foreign` (`created_by`),
  KEY `pms_leave_settings_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_leave_settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_leave_settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_payroll_sheets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `period_from` date DEFAULT NULL,
  `period_to` date DEFAULT NULL,
  `pms_sites_id` int(10) unsigned DEFAULT NULL,
  `pms_company_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `siteManagerApproval` tinyint(4) DEFAULT NULL COMMENT '0=not approved, 1=approved, null=stil no decision',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_payroll_sheets_pms_sites_id_foreign` (`pms_sites_id`),
  KEY `pms_payroll_sheets_created_by_foreign` (`created_by`),
  KEY `pms_payroll_sheets_updated_by_foreign` (`updated_by`),
  KEY `pms_payroll_sheets_pms_company_id_foreign` (`pms_company_id`),
  CONSTRAINT `pms_payroll_sheets_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payroll_sheets_pms_company_id_foreign` FOREIGN KEY (`pms_company_id`) REFERENCES `pms_companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payroll_sheets_pms_sites_id_foreign` FOREIGN KEY (`pms_sites_id`) REFERENCES `pms__sites` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payroll_sheets_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_payslip_allowances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_payslip_id` int(10) unsigned DEFAULT NULL,
  `pms_assign_allowances_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_payslip_allowances_pms_payslip_id_foreign` (`pms_payslip_id`),
  KEY `pms_payslip_allowances_pms_assign_allowances_id_foreign` (`pms_assign_allowances_id`),
  KEY `pms_payslip_allowances_created_by_foreign` (`created_by`),
  KEY `pms_payslip_allowances_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_payslip_allowances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslip_allowances_pms_assign_allowances_id_foreign` FOREIGN KEY (`pms_assign_allowances_id`) REFERENCES `pms_assign_allowances` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslip_allowances_pms_payslip_id_foreign` FOREIGN KEY (`pms_payslip_id`) REFERENCES `pms_payslips` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslip_allowances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_payslip_deductions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pms_payslip_id` int(10) unsigned DEFAULT NULL,
  `pms_assign_deductions_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_payslip_deductions_pms_payslip_id_foreign` (`pms_payslip_id`),
  KEY `pms_payslip_deductions_pms_assign_deductions_id_foreign` (`pms_assign_deductions_id`),
  KEY `pms_payslip_deductions_created_by_foreign` (`created_by`),
  KEY `pms_payslip_deductions_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_payslip_deductions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslip_deductions_pms_assign_deductions_id_foreign` FOREIGN KEY (`pms_assign_deductions_id`) REFERENCES `pms_assign_deductions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslip_deductions_pms_payslip_id_foreign` FOREIGN KEY (`pms_payslip_id`) REFERENCES `pms_payslips` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslip_deductions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_payslips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pms_payroll_sheets_id` int(10) unsigned DEFAULT NULL,
  `pms_employees_id` int(10) unsigned DEFAULT NULL,
  `basic_pay` double(8,2) DEFAULT NULL,
  `allowance` double(8,2) DEFAULT NULL,
  `over_time` double(8,2) DEFAULT NULL,
  `over_time_per_hour` double(8,2) DEFAULT NULL,
  `days_absent` double(8,2) DEFAULT NULL,
  `total_payable` double(8,2) DEFAULT NULL,
  `total_paid` double(8,2) DEFAULT NULL,
  `total_due` double(8,2) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_payslips_pms_payroll_sheets_id_foreign` (`pms_payroll_sheets_id`),
  KEY `pms_payslips_pms_employees_id_foreign` (`pms_employees_id`),
  KEY `pms_payslips_created_by_foreign` (`created_by`),
  KEY `pms_payslips_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_payslips_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslips_pms_employees_id_foreign` FOREIGN KEY (`pms_employees_id`) REFERENCES `pms__employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslips_pms_payroll_sheets_id_foreign` FOREIGN KEY (`pms_payroll_sheets_id`) REFERENCES `pms_payroll_sheets` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_payslips_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_payslips_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pms_payslips_id` int(10) unsigned DEFAULT NULL,
  `pms_advance_payment_id` int(10) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_payslips_payments_pms_payslips_id_foreign` (`pms_payslips_id`),
  KEY `pms_payslips_payments_pms_advance_payment_id_foreign` (`pms_advance_payment_id`),
  KEY `pms_payslips_payments_created_by_foreign` (`created_by`),
  KEY `pms_payslips_payments_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_payslips_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_payslips_payments_pms_advance_payment_id_foreign` FOREIGN KEY (`pms_advance_payment_id`) REFERENCES `pms_advance_payment` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_payslips_payments_pms_payslips_id_foreign` FOREIGN KEY (`pms_payslips_id`) REFERENCES `pms_payslips` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pms_payslips_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pms_invoices_id` int(10) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pms_receipts_pms_invoices_id_foreign` (`pms_invoices_id`),
  KEY `pms_receipts_created_by_foreign` (`created_by`),
  KEY `pms_receipts_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_receipts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_receipts_pms_invoices_id_foreign` FOREIGN KEY (`pms_invoices_id`) REFERENCES `pms_invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_receipts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pms_sectors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO pms_sectors VALUES
("1","0","1","Absence","1984-08-05 16:23:01","2002-05-25 01:04:58"),
("2","0","0","Advance","2000-10-19 23:42:00","1985-12-06 04:55:36");




CREATE TABLE `pms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setting_data` text COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pms_settings_title_unique` (`title`),
  KEY `pms_settings_created_by_foreign` (`created_by`),
  KEY `pms_settings_updated_by_foreign` (`updated_by`),
  CONSTRAINT `pms_settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pms_settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `pmsexpenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `due` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pms_contact_id` int(10) unsigned DEFAULT NULL,
  `pms_account_id` int(10) unsigned DEFAULT NULL,
  `admin_approval` tinyint(3) unsigned DEFAULT NULL COMMENT '0=not approved, 1=approved, null=still no decision',
  `approved_amount` double DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pmsexpenses_created_by_foreign` (`created_by`),
  KEY `pmsexpenses_updated_by_foreign` (`updated_by`),
  KEY `pmsexpenses_pms_contact_id_foreign` (`pms_contact_id`),
  KEY `pmsexpenses_pms_account_id_foreign` (`pms_account_id`),
  CONSTRAINT `pmsexpenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pmsexpenses_pms_account_id_foreign` FOREIGN KEY (`pms_account_id`) REFERENCES `pms_account` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pmsexpenses_pms_contact_id_foreign` FOREIGN KEY (`pms_contact_id`) REFERENCES `pms_contact` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `pmsexpenses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `police_clearance_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `police_clearance_id` int(10) unsigned NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `police_clearance_files_police_clearance_id_foreign` (`police_clearance_id`),
  CONSTRAINT `police_clearance_files_police_clearance_id_foreign` FOREIGN KEY (`police_clearance_id`) REFERENCES `police_clearances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `police_clearances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paxid` int(10) unsigned DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `police_clearances_created_by_foreign` (`created_by`),
  KEY `police_clearances_updated_by_foreign` (`updated_by`),
  CONSTRAINT `police_clearances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `police_clearances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `price_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `sales_rate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_rate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `price_lists_contact_id_foreign` (`contact_id`),
  KEY `price_lists_item_id_foreign` (`item_id`),
  KEY `price_lists_created_by_foreign` (`created_by`),
  KEY `price_lists_updated_by_foreign` (`updated_by`),
  CONSTRAINT `price_lists_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `price_lists_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `price_lists_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `price_lists_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_product` int(11) DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_branch_id_foreign` (`branch_id`),
  KEY `product_created_by_foreign` (`created_by`),
  KEY `product_updated_by_foreign` (`updated_by`),
  CONSTRAINT `product_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `product_phase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_phase_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_phase_product_id_foreign` (`product_id`),
  KEY `product_phase_created_by_foreign` (`created_by`),
  KEY `product_phase_updated_by_foreign` (`updated_by`),
  CONSTRAINT `product_phase_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_phase_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_phase_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `product_phase_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issued_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_note` longtext COLLATE utf8_unicode_ci,
  `recipient_id` int(11) DEFAULT NULL,
  `issued_by` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_phase_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_phase_item_issued_by_foreign` (`issued_by`),
  KEY `product_phase_item_product_id_foreign` (`product_id`),
  KEY `product_phase_item_product_phase_id_foreign` (`product_phase_id`),
  KEY `product_phase_item_created_by_foreign` (`created_by`),
  KEY `product_phase_item_updated_by_foreign` (`updated_by`),
  CONSTRAINT `product_phase_item_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_phase_item_issued_by_foreign` FOREIGN KEY (`issued_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_phase_item_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_phase_item_product_phase_id_foreign` FOREIGN KEY (`product_phase_id`) REFERENCES `product_phase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_phase_item_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `product_phase_item_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `product_phase_item_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_phase_item_add_product_phase_item_id_foreign` (`product_phase_item_id`),
  CONSTRAINT `product_phase_item_add_product_phase_item_id_foreign` FOREIGN KEY (`product_phase_item_id`) REFERENCES `product_phase_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `reciption_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reciption_categories_created_by_foreign` (`created_by`),
  KEY `reciption_categories_updated_by_foreign` (`updated_by`),
  CONSTRAINT `reciption_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `reciption_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `reciption_logbooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `associated_contact` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` int(10) unsigned DEFAULT NULL,
  `symptom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `meeting_time` time DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reciption_logbooks_category_id_foreign` (`category_id`),
  KEY `reciption_logbooks_associated_contact_foreign` (`associated_contact`),
  KEY `reciption_logbooks_item_name_foreign` (`item_name`),
  KEY `reciption_logbooks_created_by_foreign` (`created_by`),
  KEY `reciption_logbooks_updated_by_foreign` (`updated_by`),
  CONSTRAINT `reciption_logbooks_associated_contact_foreign` FOREIGN KEY (`associated_contact`) REFERENCES `contact` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `reciption_logbooks_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `reciption_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reciption_logbooks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `reciption_logbooks_item_name_foreign` FOREIGN KEY (`item_name`) REFERENCES `item` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `reciption_logbooks_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `recruit_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dateOfBirthEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateOfBirthBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religionEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religionBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardianName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardianFatherName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardianAddressEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardianAddressBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardianReligion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationWithCustomer_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationWithCustomer_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motherName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fatherName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeOfBirth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousNationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentNationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maritalStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionEn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionBn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professionAR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessAddressEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessAddressBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purposeOfTravel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `durationOfStay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arrivalDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departureDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visaAdvice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruit_id` int(10) unsigned NOT NULL,
  `pax_id` int(10) unsigned NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passengerNameBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passportNumberBN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recruit_customer_recruit_id_foreign` (`recruit_id`),
  KEY `recruit_customer_pax_id_foreign` (`pax_id`),
  CONSTRAINT `recruit_customer_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recruit_customer_recruit_id_foreign` FOREIGN KEY (`recruit_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `recruiteexpense` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `expenseSectorid` int(10) unsigned NOT NULL,
  `expense_id` int(10) unsigned DEFAULT NULL,
  `sales_commission_id` int(10) unsigned DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recruiteexpense_expensesectorid_foreign` (`expenseSectorid`),
  KEY `recruiteexpense_expense_id_foreign` (`expense_id`),
  KEY `recruiteexpense_sales_commission_id_foreign` (`sales_commission_id`),
  CONSTRAINT `recruiteexpense_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expense` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `recruiteexpense_expensesectorid_foreign` FOREIGN KEY (`expenseSectorid`) REFERENCES `expensesector` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recruiteexpense_sales_commission_id_foreign` FOREIGN KEY (`sales_commission_id`) REFERENCES `salescommisions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `recruiteexpensepax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recruitExpenseid` int(10) unsigned NOT NULL,
  `paxid` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recruiteexpensepax_recruitexpenseid_foreign` (`recruitExpenseid`),
  KEY `recruiteexpensepax_paxid_foreign` (`paxid`),
  CONSTRAINT `recruiteexpensepax_paxid_foreign` FOREIGN KEY (`paxid`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recruiteexpensepax_recruitexpenseid_foreign` FOREIGN KEY (`recruitExpenseid`) REFERENCES `recruiteexpense` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `recruitingorder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  `registerSerial_id` int(10) unsigned DEFAULT NULL,
  `paxid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passportNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passportDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salesRate` double(10,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  `passenger_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` tinyint(4) DEFAULT NULL,
  `substitued_order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_invoice_amount` double(8,2) DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `passportissuedate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `placeofissue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visa_category_id` int(11) DEFAULT NULL,
  `commission_type` int(11) DEFAULT NULL,
  `agent_commission_amount` double NOT NULL DEFAULT '0',
  `visa_type` tinyint(3) unsigned DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recruitingorder_paxid_unique` (`paxid`),
  KEY `recruitingorder_customer_id_foreign` (`customer_id`),
  KEY `recruitingorder_package_id_foreign` (`package_id`),
  KEY `recruitingorder_registerserial_id_foreign` (`registerSerial_id`),
  KEY `recruitingorder_invoice_id_foreign` (`invoice_id`),
  KEY `recruitingorder_bill_id_foreign` (`bill_id`),
  KEY `recruitingorder_created_by_foreign` (`created_by`),
  KEY `recruitingorder_updated_by_foreign` (`updated_by`),
  CONSTRAINT `recruitingorder_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `recruitingorder_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recruitingorder_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recruitingorder_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `recruitingorder_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recruitingorder_registerserial_id_foreign` FOREIGN KEY (`registerSerial_id`) REFERENCES `visaentrys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recruitingorder_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reminddatetime` datetime DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reminders_created_by_foreign` (`created_by`),
  KEY `reminders_updated_by_foreign` (`updated_by`),
  CONSTRAINT `reminders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reminders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `report_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mrdical_slip_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report_file_mrdical_slip_id_foreign` (`mrdical_slip_id`),
  CONSTRAINT `report_file_mrdical_slip_id_foreign` FOREIGN KEY (`mrdical_slip_id`) REFERENCES `medicalslip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_created_by_foreign` (`created_by`),
  KEY `roles_updated_by_foreign` (`updated_by`),
  CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO roles VALUES
("1","Admin","Ut maiores tenetur eum in recusandae. Velit veniam ducimus non quam ipsum qui. Officia quas laboriosam rerum veniam ducimus fugit.","1","1","2007-06-13 05:56:02","1987-12-08 06:44:34"),
("2","Staff","Maxime voluptatem architecto tempore maxime illum ut perferendis. Aliquid quae repellat labore sed molestiae voluptate rem. Placeat in cupiditate delectus rerum nostrum.","1","1","2012-02-23 21:06:36","1984-11-13 18:37:02"),
("3","Employee","Sed ut esse delectus numquam. Sit dolores voluptatem doloribus officia et. Atque nulla commodi aut aut nulla delectus inventore.","1","1","1970-04-28 23:40:10","1980-08-28 01:24:25");




CREATE TABLE `salescommisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agents_id` int(10) unsigned NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scNumber` int(11) NOT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `CustomerNote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PersonalNote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `paid_through_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salescommisions_agents_id_foreign` (`agents_id`),
  KEY `salescommisions_created_by_foreign` (`created_by`),
  KEY `salescommisions_updated_by_foreign` (`updated_by`),
  KEY `salescommisions_paid_through_id_foreign` (`paid_through_id`),
  CONSTRAINT `salescommisions_agents_id_foreign` FOREIGN KEY (`agents_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `salescommisions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `salescommisions_paid_through_id_foreign` FOREIGN KEY (`paid_through_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `salescommisions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `setting_currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_currencies_created_by_foreign` (`created_by`),
  KEY `setting_currencies_updated_by_foreign` (`updated_by`),
  CONSTRAINT `setting_currencies_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `setting_currencies_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `setting_currency_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `conversion_rate` double NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_currency_rates_currency_id_foreign` (`currency_id`),
  KEY `setting_currency_rates_created_by_foreign` (`created_by`),
  KEY `setting_currency_rates_updated_by_foreign` (`updated_by`),
  CONSTRAINT `setting_currency_rates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `setting_currency_rates_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `setting_currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `setting_currency_rates_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `stampingapproval` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pax_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stampingapproval_pax_id_foreign` (`pax_id`),
  KEY `stampingapproval_created_by_foreign` (`created_by`),
  KEY `stampingapproval_updated_by_foreign` (`updated_by`),
  CONSTRAINT `stampingapproval_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stampingapproval_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stampingapproval_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_category_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  `credit_note_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_item_category_id_foreign` (`item_category_id`),
  KEY `stock_item_id_foreign` (`item_id`),
  KEY `stock_bill_id_foreign` (`bill_id`),
  KEY `stock_credit_note_id_foreign` (`credit_note_id`),
  KEY `stock_branch_id_foreign` (`branch_id`),
  KEY `stock_created_by_foreign` (`created_by`),
  KEY `stock_updated_by_foreign` (`updated_by`),
  CONSTRAINT `stock_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stock_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stock_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stock_credit_note_id_foreign` FOREIGN KEY (`credit_note_id`) REFERENCES `credit_notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stock_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stock_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stock_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `submission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `submission_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expected_flight_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_approval` tinyint(4) DEFAULT NULL,
  `ticket_approval` tinyint(1) DEFAULT NULL,
  `pax_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `submission_pax_id_foreign` (`pax_id`),
  KEY `submission_created_by_foreign` (`created_by`),
  KEY `submission_updated_by_foreign` (`updated_by`),
  CONSTRAINT `submission_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `submission_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `submission_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `submission_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `submission_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `submission_file_submission_id_foreign` (`submission_id`),
  CONSTRAINT `submission_file_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `tax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_percentage` int(11) DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_created_by_foreign` (`created_by`),
  KEY `tax_updated_by_foreign` (`updated_by`),
  CONSTRAINT `tax_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tax_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tax VALUES
("1","0%-tax","0","1","1","2010-06-21 01:17:42","1996-12-17 10:00:45"),
("2","5%-tax","5","1","1","1982-05-26 21:03:00","2003-05-10 06:29:58"),
("3","10%-tax","10","1","1","2010-08-22 03:12:23","2002-11-22 21:16:18"),
("4","15%-tax","15","1","1","1998-09-29 11:25:57","2004-12-07 08:47:50"),
("5","20%-tax","20","1","1","1985-07-16 16:19:18","1978-08-16 01:12:39");




CREATE TABLE `ticket_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_document_order_id_foreign` (`order_id`),
  KEY `ticket_document_created_by_foreign` (`created_by`),
  KEY `ticket_document_updated_by_foreign` (`updated_by`),
  CONSTRAINT `ticket_document_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_document_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `ticketorders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_document_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `ticket_hotel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_hotel_created_by_foreign` (`created_by`),
  KEY `ticket_hotel_updated_by_foreign` (`updated_by`),
  CONSTRAINT `ticket_hotel_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_hotel_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `ticket_order_tax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_order_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_order_tax_ticket_order_id_foreign` (`ticket_order_id`),
  CONSTRAINT `ticket_order_tax_ticket_order_id_foreign` FOREIGN KEY (`ticket_order_id`) REFERENCES `ticketorders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `ticket_refund_others` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `adm_fee` double(8,2) DEFAULT NULL,
  `difference_of_airline_commission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_refund_others_created_by_foreign` (`created_by`),
  KEY `ticket_refund_others_updated_by_foreign` (`updated_by`),
  KEY `ticket_refund_others_invoice_id_foreign` (`invoice_id`),
  KEY `ticket_refund_others_bill_id_foreign` (`bill_id`),
  CONSTRAINT `ticket_refund_others_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refund_others_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refund_others_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refund_others_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `ticket_refunds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receive_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `submit_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statement_date` date DEFAULT NULL,
  `refund_sector` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned DEFAULT NULL,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_refunds_refund_sector_foreign` (`refund_sector`),
  KEY `ticket_refunds_customer_id_foreign` (`customer_id`),
  KEY `ticket_refunds_vendor_id_foreign` (`vendor_id`),
  KEY `ticket_refunds_invoice_id_foreign` (`invoice_id`),
  KEY `ticket_refunds_bill_id_foreign` (`bill_id`),
  KEY `ticket_refunds_created_by_foreign` (`created_by`),
  KEY `ticket_refunds_updated_by_foreign` (`updated_by`),
  CONSTRAINT `ticket_refunds_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refunds_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refunds_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `contact` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refunds_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refunds_refund_sector_foreign` FOREIGN KEY (`refund_sector`) REFERENCES `item` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refunds_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticket_refunds_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `contact` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `ticketcommissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commissionRate` double NOT NULL,
  `commissionTax` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `ticketorders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pnrcreationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordLocator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departureflightCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departureflightClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departureDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departureFrom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arriveTo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departureTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arrivalTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnflightCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnflightbookingClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnflightDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnflightFrom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnflightTo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnflightdepartureTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnflightarrivalDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issuetimeLimit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gdsType` int(11) DEFAULT NULL,
  `pnr` text COLLATE utf8_unicode_ci,
  `issuDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departureSector` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnSector` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adultPassenger` int(11) DEFAULT NULL,
  `childPassenger` int(11) DEFAULT NULL,
  `infantPassenger` int(11) DEFAULT NULL,
  `hotel_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `fareAmount` double DEFAULT NULL,
  `commissionRate` double DEFAULT NULL,
  `taxOnCommission` double DEFAULT NULL,
  `bill_id` int(10) unsigned DEFAULT NULL,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  `ticket_hotel_id` int(10) unsigned DEFAULT NULL,
  `vendor_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passport_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticketorders_order_id_unique` (`order_id`),
  KEY `ticketorders_bill_id_foreign` (`bill_id`),
  KEY `ticketorders_invoice_id_foreign` (`invoice_id`),
  KEY `ticketorders_contact_id_foreign` (`contact_id`),
  KEY `ticketorders_vendor_id_foreign` (`vendor_id`),
  KEY `ticketorders_ticket_hotel_id_foreign` (`ticket_hotel_id`),
  KEY `ticketorders_created_by_foreign` (`created_by`),
  KEY `ticketorders_updated_by_foreign` (`updated_by`),
  CONSTRAINT `ticketorders_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticketorders_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticketorders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticketorders_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ticketorders_ticket_hotel_id_foreign` FOREIGN KEY (`ticket_hotel_id`) REFERENCES `ticket_hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticketorders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticketorders_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `tickettaxs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickettaxs_created_by_foreign` (`created_by`),
  KEY `tickettaxs_updated_by_foreign` (`updated_by`),
  CONSTRAINT `tickettaxs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickettaxs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `training_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `training_id` int(10) unsigned NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `training_files_training_id_foreign` (`training_id`),
  CONSTRAINT `training_files_training_id_foreign` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `trainings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paxid` int(10) unsigned DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `center_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trainings_created_by_foreign` (`created_by`),
  KEY `trainings_updated_by_foreign` (`updated_by`),
  CONSTRAINT `trainings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trainings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `user_activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_activations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) DEFAULT '1',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  KEY `users_branch_id_foreign` (`branch_id`),
  KEY `users_contact_id_foreign` (`contact_id`),
  CONSTRAINT `users_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `users_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO users VALUES
("1","elOfENECIh","user.jpg","user.jpg","Dicta est numquam velit repellat ut iure. Accusantium esse eveniet explicabo nam dicta quidem cum. Exercitationem corporis exercitationem voluptatem vel vitae nemo deleniti ipsum. Ut commodi molestiae impedit qui qui quos sequi.","admin@mail.com","$2y$10$u5hwLL.co8jdpmuZVe68g.0x8PtBHibJ5rgPWQfmVccKgmRCp/L6K","0","1","1","1","","1","1","","1991-11-07 19:35:54","2013-04-11 23:20:43");




CREATE TABLE `visa_entry_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visaentrys_id` int(10) unsigned NOT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visa_process_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vls_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `recruit_id` int(10) unsigned NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visa_process_report_recruit_id_foreign` (`recruit_id`),
  KEY `visa_process_report_created_by_foreign` (`created_by`),
  KEY `visa_process_report_updated_by_foreign` (`updated_by`),
  CONSTRAINT `visa_process_report_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visa_process_report_recruit_id_foreign` FOREIGN KEY (`recruit_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visa_process_report_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visaacceptance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visaentry_id` int(10) unsigned NOT NULL,
  `visaadvice_status` tinyint(1) NOT NULL DEFAULT '0',
  `okala_status` tinyint(1) NOT NULL DEFAULT '0',
  `consulator_status` tinyint(1) NOT NULL DEFAULT '0',
  `powerofattorny_status` tinyint(1) NOT NULL DEFAULT '0',
  `botaka_status` tinyint(1) NOT NULL DEFAULT '0',
  `contactform_status` tinyint(1) NOT NULL DEFAULT '0',
  `visaadvice_comment` mediumtext COLLATE utf8_unicode_ci,
  `okala_comment` mediumtext COLLATE utf8_unicode_ci,
  `consulator_comment` mediumtext COLLATE utf8_unicode_ci,
  `powerofattorny_comment` mediumtext COLLATE utf8_unicode_ci,
  `botaka_comment` mediumtext COLLATE utf8_unicode_ci,
  `contactform_comment` mediumtext COLLATE utf8_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visaacceptance_visaentry_id_foreign` (`visaentry_id`),
  KEY `visaacceptance_created_by_foreign` (`created_by`),
  KEY `visaacceptance_updated_by_foreign` (`updated_by`),
  CONSTRAINT `visaacceptance_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visaacceptance_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visaacceptance_visaentry_id_foreign` FOREIGN KEY (`visaentry_id`) REFERENCES `visaentrys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visaentrys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local_Reference` int(10) unsigned NOT NULL,
  `visaNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visaIssuedate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `numberofVisa` int(11) NOT NULL,
  `purchaseRate` double(10,2) DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registerSerial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idNum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iqamaNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iqamaSector` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visaType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `submissionDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `okala_cancellation` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `visaentrys_registerserial_unique` (`registerSerial`),
  KEY `visaentrys_local_reference_foreign` (`local_Reference`),
  KEY `visaentrys_company_id_foreign` (`company_id`),
  KEY `visaentrys_created_by_foreign` (`created_by`),
  KEY `visaentrys_updated_by_foreign` (`updated_by`),
  CONSTRAINT `visaentrys_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visaentrys_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visaentrys_local_reference_foreign` FOREIGN KEY (`local_Reference`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visaentrys_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visaformagreement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visaform_id` int(10) unsigned NOT NULL,
  `agreementEn` text COLLATE utf8_unicode_ci,
  `agreementAr` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visaformagreement_visaform_id_foreign` (`visaform_id`),
  CONSTRAINT `visaformagreement_visaform_id_foreign` FOREIGN KEY (`visaform_id`) REFERENCES `visaforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visaformbulks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visaform_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateofBirth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visaformbulks_visaform_id_foreign` (`visaform_id`),
  CONSTRAINT `visaformbulks_visaform_id_foreign` FOREIGN KEY (`visaform_id`) REFERENCES `visaforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visaforms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pax_id` int(10) unsigned NOT NULL,
  `officeDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footerNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `so` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visaforms_pax_id_foreign` (`pax_id`),
  KEY `visaforms_created_by_foreign` (`created_by`),
  KEY `visaforms_updated_by_foreign` (`updated_by`),
  CONSTRAINT `visaforms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visaforms_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visaforms_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `visastamping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pax_id` int(10) unsigned NOT NULL,
  `send_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eapplication_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visastamping_pax_id_foreign` (`pax_id`),
  KEY `visastamping_created_by_foreign` (`created_by`),
  KEY `visastamping_updated_by_foreign` (`updated_by`),
  CONSTRAINT `visastamping_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visastamping_pax_id_foreign` FOREIGN KEY (`pax_id`) REFERENCES `recruitingorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visastamping_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



SET FOREIGN_KEY_CHECKS=1;
