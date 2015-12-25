/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : zqsf

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-12-25 11:28:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'General', 'general', null, '2015-12-25 03:27:24', '2015-12-25 03:27:24');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_07_05_111905_create_visitors_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_05_144447_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_05_152557_create_options_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_07_005653_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2014_11_02_051938_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('2014_11_02_052125_create_permissions_table', '1');
INSERT INTO `migrations` VALUES ('2014_11_02_052410_create_role_user_table', '1');
INSERT INTO `migrations` VALUES ('2014_11_02_092851_create_permission_role_table', '1');

-- ----------------------------
-- Table structure for `options`
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `options_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('1', 'site.name', 'My Site Name', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('2', 'site.slogan', 'The Great Website!', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('3', 'site.description', 'My Site.', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('4', 'site.keywords', 'pingpong, gravitano', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('5', 'tracking', '<!-- GA Here -->', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('6', 'facebook.link', 'https://www.facebook.com/pingponglabs', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('7', 'twitter.link', 'https://twitter.com/pingponglabs', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('8', 'post.permalink', '{slug}', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('9', 'ckfinder.prefix', 'packages/pingpong/admin', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('10', 'admin.theme', 'default', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `options` VALUES ('11', 'pagination.perpage', '10', '2015-12-25 03:27:23', '2015-12-25 03:27:23');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'Manage Users', 'manage_users', 'Manage Users', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `permissions` VALUES ('2', 'Manage Articles', 'manage_articles', 'Manage Articles', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `permissions` VALUES ('3', 'Manage Pages', 'manage_pages', 'Manage Pages', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `permissions` VALUES ('4', 'Manage Categories', 'manage_categories', 'Manage Categories', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `permissions` VALUES ('5', 'Manage Settings', 'manage_settings', 'Manage Settings', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `permissions` VALUES ('6', 'Manage Roles', 'manage_roles', 'Manage Roles', '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `permissions` VALUES ('7', 'Manage Permissions', 'manage_permissions', 'Manage Permissions', '2015-12-25 03:27:23', '2015-12-25 03:27:23');

-- ----------------------------
-- Table structure for `permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '2', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');
INSERT INTO `permission_role` VALUES ('2', '4', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');
INSERT INTO `permission_role` VALUES ('3', '3', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');
INSERT INTO `permission_role` VALUES ('4', '7', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');
INSERT INTO `permission_role` VALUES ('5', '6', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');
INSERT INTO `permission_role` VALUES ('6', '5', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');
INSERT INTO `permission_role` VALUES ('7', '1', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrator', 'admin', null, '2015-12-25 03:27:23', '2015-12-25 03:27:23');
INSERT INTO `roles` VALUES ('2', 'User', 'user', null, '2015-12-25 03:27:23', '2015-12-25 03:27:23');

-- ----------------------------
-- Table structure for `role_user`
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`),
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '1', '1', '2015-12-25 03:27:24', '2015-12-25 03:27:24');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', null, 'pingpong.labs@gmail.com', '$2y$10$49FqYXdmsYb50o205ZGaa.a/tKNbCogNArunBY2LRGUaiAUTpf.Ma', null, '2015-12-25 03:27:24', '2015-12-25 03:27:24');

-- ----------------------------
-- Table structure for `visitors`
-- ----------------------------
DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of visitors
-- ----------------------------
