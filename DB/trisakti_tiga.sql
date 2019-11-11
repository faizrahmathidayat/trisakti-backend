/*
 Navicat Premium Data Transfer

 Source Server         : DBPostgre
 Source Server Type    : PostgreSQL
 Source Server Version : 110004
 Source Host           : localhost:5432
 Source Catalog        : trisakti_tiga
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110004
 File Encoding         : 65001

 Date: 11/11/2019 09:18:09
*/


-- ----------------------------
-- Sequence structure for account_emailaddress_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_emailaddress_id_seq";
CREATE SEQUENCE "public"."account_emailaddress_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for account_emailconfirmation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_emailconfirmation_id_seq";
CREATE SEQUENCE "public"."account_emailconfirmation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for comments_id_comments_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."comments_id_comments_seq";
CREATE SEQUENCE "public"."comments_id_comments_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for countries_id_country_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."countries_id_country_seq";
CREATE SEQUENCE "public"."countries_id_country_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for districts_id_district_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."districts_id_district_seq";
CREATE SEQUENCE "public"."districts_id_district_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_site_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_site_id_seq";
CREATE SEQUENCE "public"."django_site_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for forum_category_id_category_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."forum_category_id_category_seq";
CREATE SEQUENCE "public"."forum_category_id_category_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for forum_discussion_id_discussion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."forum_discussion_id_discussion_seq";
CREATE SEQUENCE "public"."forum_discussion_id_discussion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for forum_id_forum_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."forum_id_forum_seq";
CREATE SEQUENCE "public"."forum_id_forum_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for forum_member_id_forum_member_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."forum_member_id_forum_member_seq";
CREATE SEQUENCE "public"."forum_member_id_forum_member_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for provinces_id_province_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."provinces_id_province_seq";
CREATE SEQUENCE "public"."provinces_id_province_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for socialaccount_socialaccount_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."socialaccount_socialaccount_id_seq";
CREATE SEQUENCE "public"."socialaccount_socialaccount_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for socialaccount_socialapp_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."socialaccount_socialapp_id_seq";
CREATE SEQUENCE "public"."socialaccount_socialapp_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for socialaccount_socialapp_sites_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."socialaccount_socialapp_sites_id_seq";
CREATE SEQUENCE "public"."socialaccount_socialapp_sites_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for socialaccount_socialtoken_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."socialaccount_socialtoken_id_seq";
CREATE SEQUENCE "public"."socialaccount_socialtoken_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for subdisctricts_id_subdistrict_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."subdisctricts_id_subdistrict_seq";
CREATE SEQUENCE "public"."subdisctricts_id_subdistrict_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_user_groups_id_seq";
CREATE SEQUENCE "public"."users_user_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_user_id_seq";
CREATE SEQUENCE "public"."users_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."users_user_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for villages_id_village_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."villages_id_village_seq";
CREATE SEQUENCE "public"."villages_id_village_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for account_emailaddress
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_emailaddress";
CREATE TABLE "public"."account_emailaddress" (
  "id" int4 NOT NULL DEFAULT nextval('account_emailaddress_id_seq'::regclass),
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "verified" bool NOT NULL,
  "primary" bool NOT NULL,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for account_emailconfirmation
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_emailconfirmation";
CREATE TABLE "public"."account_emailconfirmation" (
  "id" int4 NOT NULL DEFAULT nextval('account_emailconfirmation_id_seq'::regclass),
  "created" timestamptz(6) NOT NULL,
  "sent" timestamptz(6),
  "key" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "email_address_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for attacment_job_apply
-- ----------------------------
DROP TABLE IF EXISTS "public"."attacment_job_apply";
CREATE TABLE "public"."attacment_job_apply" (
  "id_attachment" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "attachment_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "url_attachment" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "attachment_code_id" varchar(250) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO "public"."auth_group" VALUES (2, 'member');
INSERT INTO "public"."auth_group" VALUES (1, 'non_member');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
  "id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO "public"."auth_permission" VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO "public"."auth_permission" VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO "public"."auth_permission" VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO "public"."auth_permission" VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO "public"."auth_permission" VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO "public"."auth_permission" VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO "public"."auth_permission" VALUES (9, 'Can add content type', 3, 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES (10, 'Can change content type', 3, 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES (11, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES (12, 'Can view content type', 3, 'view_contenttype');
INSERT INTO "public"."auth_permission" VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO "public"."auth_permission" VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO "public"."auth_permission" VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO "public"."auth_permission" VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO "public"."auth_permission" VALUES (17, 'Can add user_profile', 5, 'add_userprofile');
INSERT INTO "public"."auth_permission" VALUES (18, 'Can change user_profile', 5, 'change_userprofile');
INSERT INTO "public"."auth_permission" VALUES (19, 'Can delete user_profile', 5, 'delete_userprofile');
INSERT INTO "public"."auth_permission" VALUES (20, 'Can view user_profile', 5, 'view_userprofile');
INSERT INTO "public"."auth_permission" VALUES (21, 'Can add country', 6, 'add_country');
INSERT INTO "public"."auth_permission" VALUES (22, 'Can change country', 6, 'change_country');
INSERT INTO "public"."auth_permission" VALUES (23, 'Can delete country', 6, 'delete_country');
INSERT INTO "public"."auth_permission" VALUES (24, 'Can view country', 6, 'view_country');
INSERT INTO "public"."auth_permission" VALUES (25, 'Can add district', 7, 'add_district');
INSERT INTO "public"."auth_permission" VALUES (26, 'Can change district', 7, 'change_district');
INSERT INTO "public"."auth_permission" VALUES (27, 'Can delete district', 7, 'delete_district');
INSERT INTO "public"."auth_permission" VALUES (28, 'Can view district', 7, 'view_district');
INSERT INTO "public"."auth_permission" VALUES (29, 'Can add subdisctrict', 8, 'add_subdisctrict');
INSERT INTO "public"."auth_permission" VALUES (30, 'Can change subdisctrict', 8, 'change_subdisctrict');
INSERT INTO "public"."auth_permission" VALUES (31, 'Can delete subdisctrict', 8, 'delete_subdisctrict');
INSERT INTO "public"."auth_permission" VALUES (32, 'Can view subdisctrict', 8, 'view_subdisctrict');
INSERT INTO "public"."auth_permission" VALUES (33, 'Can add village', 9, 'add_village');
INSERT INTO "public"."auth_permission" VALUES (34, 'Can change village', 9, 'change_village');
INSERT INTO "public"."auth_permission" VALUES (35, 'Can delete village', 9, 'delete_village');
INSERT INTO "public"."auth_permission" VALUES (36, 'Can view village', 9, 'view_village');
INSERT INTO "public"."auth_permission" VALUES (37, 'Can add province', 10, 'add_province');
INSERT INTO "public"."auth_permission" VALUES (38, 'Can change province', 10, 'change_province');
INSERT INTO "public"."auth_permission" VALUES (39, 'Can delete province', 10, 'delete_province');
INSERT INTO "public"."auth_permission" VALUES (40, 'Can view province', 10, 'view_province');
INSERT INTO "public"."auth_permission" VALUES (41, 'Can add postal_code', 11, 'add_postalcode');
INSERT INTO "public"."auth_permission" VALUES (42, 'Can change postal_code', 11, 'change_postalcode');
INSERT INTO "public"."auth_permission" VALUES (43, 'Can delete postal_code', 11, 'delete_postalcode');
INSERT INTO "public"."auth_permission" VALUES (44, 'Can view postal_code', 11, 'view_postalcode');
INSERT INTO "public"."auth_permission" VALUES (45, 'Can add session', 12, 'add_session');
INSERT INTO "public"."auth_permission" VALUES (46, 'Can change session', 12, 'change_session');
INSERT INTO "public"."auth_permission" VALUES (47, 'Can delete session', 12, 'delete_session');
INSERT INTO "public"."auth_permission" VALUES (48, 'Can view session', 12, 'view_session');
INSERT INTO "public"."auth_permission" VALUES (49, 'Can add site', 13, 'add_site');
INSERT INTO "public"."auth_permission" VALUES (50, 'Can change site', 13, 'change_site');
INSERT INTO "public"."auth_permission" VALUES (51, 'Can delete site', 13, 'delete_site');
INSERT INTO "public"."auth_permission" VALUES (52, 'Can view site', 13, 'view_site');
INSERT INTO "public"."auth_permission" VALUES (53, 'Can add log entry', 14, 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES (54, 'Can change log entry', 14, 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES (55, 'Can delete log entry', 14, 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES (56, 'Can view log entry', 14, 'view_logentry');
INSERT INTO "public"."auth_permission" VALUES (57, 'Can add email address', 15, 'add_emailaddress');
INSERT INTO "public"."auth_permission" VALUES (58, 'Can change email address', 15, 'change_emailaddress');
INSERT INTO "public"."auth_permission" VALUES (59, 'Can delete email address', 15, 'delete_emailaddress');
INSERT INTO "public"."auth_permission" VALUES (60, 'Can view email address', 15, 'view_emailaddress');
INSERT INTO "public"."auth_permission" VALUES (61, 'Can add email confirmation', 16, 'add_emailconfirmation');
INSERT INTO "public"."auth_permission" VALUES (62, 'Can change email confirmation', 16, 'change_emailconfirmation');
INSERT INTO "public"."auth_permission" VALUES (63, 'Can delete email confirmation', 16, 'delete_emailconfirmation');
INSERT INTO "public"."auth_permission" VALUES (64, 'Can view email confirmation', 16, 'view_emailconfirmation');
INSERT INTO "public"."auth_permission" VALUES (65, 'Can add social account', 17, 'add_socialaccount');
INSERT INTO "public"."auth_permission" VALUES (66, 'Can change social account', 17, 'change_socialaccount');
INSERT INTO "public"."auth_permission" VALUES (67, 'Can delete social account', 17, 'delete_socialaccount');
INSERT INTO "public"."auth_permission" VALUES (68, 'Can view social account', 17, 'view_socialaccount');
INSERT INTO "public"."auth_permission" VALUES (69, 'Can add social application', 18, 'add_socialapp');
INSERT INTO "public"."auth_permission" VALUES (70, 'Can change social application', 18, 'change_socialapp');
INSERT INTO "public"."auth_permission" VALUES (71, 'Can delete social application', 18, 'delete_socialapp');
INSERT INTO "public"."auth_permission" VALUES (72, 'Can view social application', 18, 'view_socialapp');
INSERT INTO "public"."auth_permission" VALUES (73, 'Can add social application token', 19, 'add_socialtoken');
INSERT INTO "public"."auth_permission" VALUES (74, 'Can change social application token', 19, 'change_socialtoken');
INSERT INTO "public"."auth_permission" VALUES (75, 'Can delete social application token', 19, 'delete_socialtoken');
INSERT INTO "public"."auth_permission" VALUES (76, 'Can view social application token', 19, 'view_socialtoken');
INSERT INTO "public"."auth_permission" VALUES (77, 'Can add forum', 20, 'add_forum');
INSERT INTO "public"."auth_permission" VALUES (78, 'Can change forum', 20, 'change_forum');
INSERT INTO "public"."auth_permission" VALUES (79, 'Can delete forum', 20, 'delete_forum');
INSERT INTO "public"."auth_permission" VALUES (80, 'Can view forum', 20, 'view_forum');
INSERT INTO "public"."auth_permission" VALUES (81, 'Can add forum category', 21, 'add_forumcategory');
INSERT INTO "public"."auth_permission" VALUES (82, 'Can change forum category', 21, 'change_forumcategory');
INSERT INTO "public"."auth_permission" VALUES (83, 'Can delete forum category', 21, 'delete_forumcategory');
INSERT INTO "public"."auth_permission" VALUES (84, 'Can view forum category', 21, 'view_forumcategory');
INSERT INTO "public"."auth_permission" VALUES (85, 'Can add forum member', 22, 'add_forummember');
INSERT INTO "public"."auth_permission" VALUES (86, 'Can change forum member', 22, 'change_forummember');
INSERT INTO "public"."auth_permission" VALUES (87, 'Can delete forum member', 22, 'delete_forummember');
INSERT INTO "public"."auth_permission" VALUES (88, 'Can view forum member', 22, 'view_forummember');
INSERT INTO "public"."auth_permission" VALUES (89, 'Can add forum discussion', 23, 'add_forumdiscussion');
INSERT INTO "public"."auth_permission" VALUES (90, 'Can change forum discussion', 23, 'change_forumdiscussion');
INSERT INTO "public"."auth_permission" VALUES (91, 'Can delete forum discussion', 23, 'delete_forumdiscussion');
INSERT INTO "public"."auth_permission" VALUES (92, 'Can view forum discussion', 23, 'view_forumdiscussion');
INSERT INTO "public"."auth_permission" VALUES (93, 'Can add comments', 24, 'add_comments');
INSERT INTO "public"."auth_permission" VALUES (94, 'Can change comments', 24, 'change_comments');
INSERT INTO "public"."auth_permission" VALUES (95, 'Can delete comments', 24, 'delete_comments');
INSERT INTO "public"."auth_permission" VALUES (96, 'Can view comments', 24, 'view_comments');
INSERT INTO "public"."auth_permission" VALUES (97, 'Can add career category', 25, 'add_careercategory');
INSERT INTO "public"."auth_permission" VALUES (98, 'Can change career category', 25, 'change_careercategory');
INSERT INTO "public"."auth_permission" VALUES (99, 'Can delete career category', 25, 'delete_careercategory');
INSERT INTO "public"."auth_permission" VALUES (100, 'Can view career category', 25, 'view_careercategory');
INSERT INTO "public"."auth_permission" VALUES (101, 'Can add job vacancy', 26, 'add_jobvacancy');
INSERT INTO "public"."auth_permission" VALUES (102, 'Can change job vacancy', 26, 'change_jobvacancy');
INSERT INTO "public"."auth_permission" VALUES (103, 'Can delete job vacancy', 26, 'delete_jobvacancy');
INSERT INTO "public"."auth_permission" VALUES (104, 'Can view job vacancy', 26, 'view_jobvacancy');
INSERT INTO "public"."auth_permission" VALUES (105, 'Can add job apply', 27, 'add_jobapply');
INSERT INTO "public"."auth_permission" VALUES (106, 'Can change job apply', 27, 'change_jobapply');
INSERT INTO "public"."auth_permission" VALUES (107, 'Can delete job apply', 27, 'delete_jobapply');
INSERT INTO "public"."auth_permission" VALUES (108, 'Can view job apply', 27, 'view_jobapply');
INSERT INTO "public"."auth_permission" VALUES (109, 'Can add attachment job apply', 28, 'add_attachmentjobapply');
INSERT INTO "public"."auth_permission" VALUES (110, 'Can change attachment job apply', 28, 'change_attachmentjobapply');
INSERT INTO "public"."auth_permission" VALUES (111, 'Can delete attachment job apply', 28, 'delete_attachmentjobapply');
INSERT INTO "public"."auth_permission" VALUES (112, 'Can view attachment job apply', 28, 'view_attachmentjobapply');
INSERT INTO "public"."auth_permission" VALUES (113, 'Can add promotion', 29, 'add_promotion');
INSERT INTO "public"."auth_permission" VALUES (114, 'Can change promotion', 29, 'change_promotion');
INSERT INTO "public"."auth_permission" VALUES (115, 'Can delete promotion', 29, 'delete_promotion');
INSERT INTO "public"."auth_permission" VALUES (116, 'Can view promotion', 29, 'view_promotion');

-- ----------------------------
-- Table structure for career_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."career_category";
CREATE TABLE "public"."career_category" (
  "id_category" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "category" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "url_image" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of career_category
-- ----------------------------
INSERT INTO "public"."career_category" VALUES ('33423a51856b440fa34d32ff6945b920', 'Programmer', 'jobs/jobs-category/33423a51856b440fa34d32ff6945b920_WvxTVGN.jpg');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS "public"."comments";
CREATE TABLE "public"."comments" (
  "id_comments" int4 NOT NULL DEFAULT nextval('comments_id_comments_seq'::regclass),
  "id_discussion" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "message" text COLLATE "pg_catalog"."default" NOT NULL,
  "is_hide" bool NOT NULL,
  "comments_date" timestamptz(6) NOT NULL,
  "id_forum_member_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS "public"."countries";
CREATE TABLE "public"."countries" (
  "id_country" int4 NOT NULL DEFAULT nextval('countries_id_country_seq'::regclass),
  "country" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO "public"."countries" VALUES (1, 'Indonesia');

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS "public"."districts";
CREATE TABLE "public"."districts" (
  "id_district" int4 NOT NULL DEFAULT nextval('districts_id_district_seq'::regclass),
  "district" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "id_province_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO "public"."districts" VALUES (1, 'CILEGON', 1);
INSERT INTO "public"."districts" VALUES (2, 'LEBAK', 1);
INSERT INTO "public"."districts" VALUES (3, 'PANDEGLANG', 1);
INSERT INTO "public"."districts" VALUES (4, 'SERANG', 1);
INSERT INTO "public"."districts" VALUES (5, 'TANGERANG', 1);
INSERT INTO "public"."districts" VALUES (6, 'TANGERANG SELATAN', 1);
INSERT INTO "public"."districts" VALUES (7, 'JAKARTA BARAT', 2);
INSERT INTO "public"."districts" VALUES (8, 'JAKARTA PUSAT', 2);
INSERT INTO "public"."districts" VALUES (9, 'JAKARTA SELATAN', 2);
INSERT INTO "public"."districts" VALUES (10, 'JAKARTA TIMUR', 2);
INSERT INTO "public"."districts" VALUES (11, 'JAKARTA UTARA', 2);
INSERT INTO "public"."districts" VALUES (12, 'KEPULAUAN SERIBU', 2);
INSERT INTO "public"."districts" VALUES (13, 'BANDUNG', 3);
INSERT INTO "public"."districts" VALUES (14, 'BANDUNG BARAT', 3);
INSERT INTO "public"."districts" VALUES (15, 'BANJAR', 3);
INSERT INTO "public"."districts" VALUES (16, 'BEKASI', 3);
INSERT INTO "public"."districts" VALUES (17, 'BOGOR', 3);
INSERT INTO "public"."districts" VALUES (18, 'CIAMIS', 3);
INSERT INTO "public"."districts" VALUES (19, 'CIANJUR', 3);
INSERT INTO "public"."districts" VALUES (20, 'CIMAHI', 3);
INSERT INTO "public"."districts" VALUES (21, 'CIREBON', 3);
INSERT INTO "public"."districts" VALUES (22, 'DEPOK', 3);
INSERT INTO "public"."districts" VALUES (23, 'GARUT', 3);
INSERT INTO "public"."districts" VALUES (24, 'INDRAMAYU', 3);
INSERT INTO "public"."districts" VALUES (25, 'KARAWANG', 3);
INSERT INTO "public"."districts" VALUES (26, 'KUNINGAN', 3);
INSERT INTO "public"."districts" VALUES (27, 'MAJALENGKA', 3);
INSERT INTO "public"."districts" VALUES (28, 'PANGANDARAN', 3);
INSERT INTO "public"."districts" VALUES (29, 'PURWAKARTA', 3);
INSERT INTO "public"."districts" VALUES (30, 'SUBANG', 3);
INSERT INTO "public"."districts" VALUES (31, 'SUKABUMI', 3);
INSERT INTO "public"."districts" VALUES (32, 'SUMEDANG', 3);
INSERT INTO "public"."districts" VALUES (33, 'TASIKMALAYA', 3);
INSERT INTO "public"."districts" VALUES (34, 'BANJARNEGARA', 4);
INSERT INTO "public"."districts" VALUES (35, 'BANYUMAS', 4);
INSERT INTO "public"."districts" VALUES (36, 'BATANG', 4);
INSERT INTO "public"."districts" VALUES (37, 'BLORA', 4);
INSERT INTO "public"."districts" VALUES (38, 'BOYOLALI', 4);
INSERT INTO "public"."districts" VALUES (39, 'BREBES', 4);
INSERT INTO "public"."districts" VALUES (40, 'CILACAP', 4);
INSERT INTO "public"."districts" VALUES (41, 'DEMAK', 4);
INSERT INTO "public"."districts" VALUES (42, 'GROBOGAN', 4);
INSERT INTO "public"."districts" VALUES (43, 'JEPARA', 4);
INSERT INTO "public"."districts" VALUES (44, 'KARANGANYAR', 4);
INSERT INTO "public"."districts" VALUES (45, 'KEBUMEN', 4);
INSERT INTO "public"."districts" VALUES (46, 'KENDAL', 4);
INSERT INTO "public"."districts" VALUES (47, 'KLATEN', 4);
INSERT INTO "public"."districts" VALUES (48, 'KUDUS', 4);
INSERT INTO "public"."districts" VALUES (49, 'MAGELANG', 4);
INSERT INTO "public"."districts" VALUES (50, 'PATI', 4);
INSERT INTO "public"."districts" VALUES (51, 'PEKALONGAN', 4);
INSERT INTO "public"."districts" VALUES (52, 'PEMALANG', 4);
INSERT INTO "public"."districts" VALUES (53, 'PURBALINGGA', 4);
INSERT INTO "public"."districts" VALUES (54, 'PURWOREJO', 4);
INSERT INTO "public"."districts" VALUES (55, 'REMBANG', 4);
INSERT INTO "public"."districts" VALUES (56, 'SALATIGA', 4);
INSERT INTO "public"."districts" VALUES (57, 'SEMARANG', 4);
INSERT INTO "public"."districts" VALUES (58, 'SRAGEN', 4);
INSERT INTO "public"."districts" VALUES (59, 'SUKOHARJO', 4);
INSERT INTO "public"."districts" VALUES (60, 'SURAKARTA (SOLO)', 4);
INSERT INTO "public"."districts" VALUES (61, 'TEGAL', 4);
INSERT INTO "public"."districts" VALUES (62, 'TEMANGGUNG', 4);
INSERT INTO "public"."districts" VALUES (63, 'WONOGIRI', 4);
INSERT INTO "public"."districts" VALUES (64, 'WONOSOBO', 4);
INSERT INTO "public"."districts" VALUES (65, 'BANTUL', 5);
INSERT INTO "public"."districts" VALUES (66, 'GUNUNG KIDUL', 5);
INSERT INTO "public"."districts" VALUES (67, 'KULON PROGO', 5);
INSERT INTO "public"."districts" VALUES (68, 'SLEMAN', 5);
INSERT INTO "public"."districts" VALUES (69, 'YOGYAKARTA', 5);
INSERT INTO "public"."districts" VALUES (70, 'BANGKALAN', 6);
INSERT INTO "public"."districts" VALUES (71, 'BANYUWANGI', 6);
INSERT INTO "public"."districts" VALUES (72, 'BATU', 6);
INSERT INTO "public"."districts" VALUES (73, 'BLITAR', 6);
INSERT INTO "public"."districts" VALUES (74, 'BOJONEGORO', 6);
INSERT INTO "public"."districts" VALUES (75, 'BONDOWOSO', 6);
INSERT INTO "public"."districts" VALUES (76, 'GRESIK', 6);
INSERT INTO "public"."districts" VALUES (77, 'JEMBER', 6);
INSERT INTO "public"."districts" VALUES (78, 'JOMBANG', 6);
INSERT INTO "public"."districts" VALUES (79, 'KEDIRI', 6);
INSERT INTO "public"."districts" VALUES (80, 'LAMONGAN', 6);
INSERT INTO "public"."districts" VALUES (81, 'LUMAJANG', 6);
INSERT INTO "public"."districts" VALUES (82, 'MADIUN', 6);
INSERT INTO "public"."districts" VALUES (83, 'MAGETAN', 6);
INSERT INTO "public"."districts" VALUES (84, 'MALANG', 6);
INSERT INTO "public"."districts" VALUES (85, 'MOJOKERTO', 6);
INSERT INTO "public"."districts" VALUES (86, 'NGANJUK', 6);
INSERT INTO "public"."districts" VALUES (87, 'NGAWI', 6);
INSERT INTO "public"."districts" VALUES (88, 'PACITAN', 6);
INSERT INTO "public"."districts" VALUES (89, 'PAMEKASAN', 6);
INSERT INTO "public"."districts" VALUES (90, 'PASURUAN', 6);
INSERT INTO "public"."districts" VALUES (91, 'PONOROGO', 6);
INSERT INTO "public"."districts" VALUES (92, 'PROBOLINGGO', 6);
INSERT INTO "public"."districts" VALUES (93, 'SAMPANG', 6);
INSERT INTO "public"."districts" VALUES (94, 'SIDOARJO', 6);
INSERT INTO "public"."districts" VALUES (95, 'SITUBONDO', 6);
INSERT INTO "public"."districts" VALUES (96, 'SUMENEP', 6);
INSERT INTO "public"."districts" VALUES (97, 'SURABAYA', 6);
INSERT INTO "public"."districts" VALUES (98, 'TRENGGALEK', 6);
INSERT INTO "public"."districts" VALUES (99, 'TUBAN', 6);
INSERT INTO "public"."districts" VALUES (100, 'TULUNGAGUNG', 6);
INSERT INTO "public"."districts" VALUES (101, 'BADUNG', 7);
INSERT INTO "public"."districts" VALUES (102, 'BANGLI', 7);
INSERT INTO "public"."districts" VALUES (103, 'BULELENG', 7);
INSERT INTO "public"."districts" VALUES (104, 'DENPASAR', 7);
INSERT INTO "public"."districts" VALUES (105, 'GIANYAR', 7);
INSERT INTO "public"."districts" VALUES (106, 'JEMBRANA', 7);
INSERT INTO "public"."districts" VALUES (107, 'KARANGASEM', 7);
INSERT INTO "public"."districts" VALUES (108, 'KLUNGKUNG', 7);
INSERT INTO "public"."districts" VALUES (109, 'TABANAN', 7);
INSERT INTO "public"."districts" VALUES (110, 'ACEH BARAT', 8);
INSERT INTO "public"."districts" VALUES (111, 'ACEH BARAT DAYA', 8);
INSERT INTO "public"."districts" VALUES (112, 'ACEH BESAR', 8);
INSERT INTO "public"."districts" VALUES (113, 'ACEH JAYA', 8);
INSERT INTO "public"."districts" VALUES (114, 'ACEH SELATAN', 8);
INSERT INTO "public"."districts" VALUES (115, 'ACEH SINGKIL', 8);
INSERT INTO "public"."districts" VALUES (116, 'ACEH TAMIANG', 8);
INSERT INTO "public"."districts" VALUES (117, 'ACEH TENGAH', 8);
INSERT INTO "public"."districts" VALUES (118, 'ACEH TENGGARA', 8);
INSERT INTO "public"."districts" VALUES (119, 'ACEH TIMUR', 8);
INSERT INTO "public"."districts" VALUES (120, 'ACEH UTARA', 8);
INSERT INTO "public"."districts" VALUES (121, 'BANDA ACEH', 8);
INSERT INTO "public"."districts" VALUES (122, 'BENER MERIAH', 8);
INSERT INTO "public"."districts" VALUES (123, 'BIREUEN', 8);
INSERT INTO "public"."districts" VALUES (124, 'GAYO LUES', 8);
INSERT INTO "public"."districts" VALUES (125, 'LANGSA', 8);
INSERT INTO "public"."districts" VALUES (126, 'LHOKSEUMAWE', 8);
INSERT INTO "public"."districts" VALUES (127, 'NAGAN RAYA', 8);
INSERT INTO "public"."districts" VALUES (128, 'PIDIE', 8);
INSERT INTO "public"."districts" VALUES (129, 'PIDIE JAYA', 8);
INSERT INTO "public"."districts" VALUES (130, 'SABANG', 8);
INSERT INTO "public"."districts" VALUES (131, 'SIMEULUE', 8);
INSERT INTO "public"."districts" VALUES (132, 'SUBULUSSALAM', 8);
INSERT INTO "public"."districts" VALUES (133, 'ASAHAN', 9);
INSERT INTO "public"."districts" VALUES (134, 'BATU BARA', 9);
INSERT INTO "public"."districts" VALUES (135, 'BINJAI', 9);
INSERT INTO "public"."districts" VALUES (136, 'DAIRI', 9);
INSERT INTO "public"."districts" VALUES (137, 'DELI SERDANG', 9);
INSERT INTO "public"."districts" VALUES (138, 'GUNUNGSITOLI', 9);
INSERT INTO "public"."districts" VALUES (139, 'HUMBANG HASUNDUTAN', 9);
INSERT INTO "public"."districts" VALUES (140, 'KARO', 9);
INSERT INTO "public"."districts" VALUES (141, 'LABUHAN BATU', 9);
INSERT INTO "public"."districts" VALUES (142, 'LABUHAN BATU SELATAN', 9);
INSERT INTO "public"."districts" VALUES (143, 'LABUHAN BATU UTARA', 9);
INSERT INTO "public"."districts" VALUES (144, 'LANGKAT', 9);
INSERT INTO "public"."districts" VALUES (145, 'MANDAILING NATAL', 9);
INSERT INTO "public"."districts" VALUES (146, 'MEDAN', 9);
INSERT INTO "public"."districts" VALUES (147, 'NIAS', 9);
INSERT INTO "public"."districts" VALUES (148, 'NIAS BARAT', 9);
INSERT INTO "public"."districts" VALUES (149, 'NIAS SELATAN', 9);
INSERT INTO "public"."districts" VALUES (150, 'NIAS UTARA', 9);
INSERT INTO "public"."districts" VALUES (151, 'PADANG LAWAS', 9);
INSERT INTO "public"."districts" VALUES (152, 'PADANG LAWAS UTARA', 9);
INSERT INTO "public"."districts" VALUES (153, 'PADANG SIDEMPUAN', 9);
INSERT INTO "public"."districts" VALUES (154, 'PAKPAK BHARAT', 9);
INSERT INTO "public"."districts" VALUES (155, 'PEMATANG SIANTAR', 9);
INSERT INTO "public"."districts" VALUES (156, 'SAMOSIR', 9);
INSERT INTO "public"."districts" VALUES (157, 'SERDANG BEDAGAI', 9);
INSERT INTO "public"."districts" VALUES (158, 'SIBOLGA', 9);
INSERT INTO "public"."districts" VALUES (159, 'SIMALUNGUN', 9);
INSERT INTO "public"."districts" VALUES (160, 'TANJUNG BALAI', 9);
INSERT INTO "public"."districts" VALUES (161, 'TAPANULI SELATAN', 9);
INSERT INTO "public"."districts" VALUES (162, 'TAPANULI TENGAH', 9);
INSERT INTO "public"."districts" VALUES (163, 'TAPANULI UTARA', 9);
INSERT INTO "public"."districts" VALUES (164, 'TEBING TINGGI', 9);
INSERT INTO "public"."districts" VALUES (165, 'TOBA SAMOSIR', 9);
INSERT INTO "public"."districts" VALUES (166, 'AGAM', 10);
INSERT INTO "public"."districts" VALUES (167, 'BUKITTINGGI', 10);
INSERT INTO "public"."districts" VALUES (168, 'DHARMASRAYA', 10);
INSERT INTO "public"."districts" VALUES (169, 'KEPULAUAN MENTAWAI', 10);
INSERT INTO "public"."districts" VALUES (170, 'LIMA PULUH KOTO/KOTA', 10);
INSERT INTO "public"."districts" VALUES (171, 'PADANG', 10);
INSERT INTO "public"."districts" VALUES (172, 'PADANG PANJANG', 10);
INSERT INTO "public"."districts" VALUES (173, 'PADANG PARIAMAN', 10);
INSERT INTO "public"."districts" VALUES (174, 'PARIAMAN', 10);
INSERT INTO "public"."districts" VALUES (175, 'PASAMAN', 10);
INSERT INTO "public"."districts" VALUES (176, 'PASAMAN BARAT', 10);
INSERT INTO "public"."districts" VALUES (177, 'PAYAKUMBUH', 10);
INSERT INTO "public"."districts" VALUES (178, 'PESISIR SELATAN', 10);
INSERT INTO "public"."districts" VALUES (179, 'SAWAH LUNTO', 10);
INSERT INTO "public"."districts" VALUES (180, 'SIJUNJUNG (SAWAH LUNTO SIJUNJUNG)', 10);
INSERT INTO "public"."districts" VALUES (181, 'SOLOK', 10);
INSERT INTO "public"."districts" VALUES (182, 'SOLOK SELATAN', 10);
INSERT INTO "public"."districts" VALUES (183, 'TANAH DATAR', 10);
INSERT INTO "public"."districts" VALUES (184, 'BENGKALIS', 11);
INSERT INTO "public"."districts" VALUES (185, 'DUMAI', 11);
INSERT INTO "public"."districts" VALUES (186, 'INDRAGIRI HILIR', 11);
INSERT INTO "public"."districts" VALUES (187, 'INDRAGIRI HULU', 11);
INSERT INTO "public"."districts" VALUES (188, 'KAMPAR', 11);
INSERT INTO "public"."districts" VALUES (189, 'KEPULAUAN MERANTI', 11);
INSERT INTO "public"."districts" VALUES (190, 'KUANTAN SINGINGI', 11);
INSERT INTO "public"."districts" VALUES (191, 'PEKANBARU', 11);
INSERT INTO "public"."districts" VALUES (192, 'PELALAWAN', 11);
INSERT INTO "public"."districts" VALUES (193, 'ROKAN HILIR', 11);
INSERT INTO "public"."districts" VALUES (194, 'ROKAN HULU', 11);
INSERT INTO "public"."districts" VALUES (195, 'SIAK', 11);
INSERT INTO "public"."districts" VALUES (196, 'BATAM', 12);
INSERT INTO "public"."districts" VALUES (197, 'BINTAN', 12);
INSERT INTO "public"."districts" VALUES (198, 'KARIMUN', 12);
INSERT INTO "public"."districts" VALUES (199, 'KEPULAUAN ANAMBAS', 12);
INSERT INTO "public"."districts" VALUES (200, 'LINGGA', 12);
INSERT INTO "public"."districts" VALUES (201, 'NATUNA', 12);
INSERT INTO "public"."districts" VALUES (202, 'TANJUNG PINANG', 12);
INSERT INTO "public"."districts" VALUES (203, 'BATANG HARI', 13);
INSERT INTO "public"."districts" VALUES (204, 'BUNGO', 13);
INSERT INTO "public"."districts" VALUES (205, 'JAMBI', 13);
INSERT INTO "public"."districts" VALUES (206, 'KERINCI', 13);
INSERT INTO "public"."districts" VALUES (207, 'MERANGIN', 13);
INSERT INTO "public"."districts" VALUES (208, 'MUARO JAMBI', 13);
INSERT INTO "public"."districts" VALUES (209, 'SAROLANGUN', 13);
INSERT INTO "public"."districts" VALUES (210, 'SUNGAIPENUH', 13);
INSERT INTO "public"."districts" VALUES (211, 'TANJUNG JABUNG BARAT', 13);
INSERT INTO "public"."districts" VALUES (212, 'TANJUNG JABUNG TIMUR', 13);
INSERT INTO "public"."districts" VALUES (213, 'TEBO', 13);
INSERT INTO "public"."districts" VALUES (214, 'BENGKULU', 14);
INSERT INTO "public"."districts" VALUES (215, 'BENGKULU SELATAN', 14);
INSERT INTO "public"."districts" VALUES (216, 'BENGKULU TENGAH', 14);
INSERT INTO "public"."districts" VALUES (217, 'BENGKULU UTARA', 14);
INSERT INTO "public"."districts" VALUES (218, 'KAUR', 14);
INSERT INTO "public"."districts" VALUES (219, 'KEPAHIANG', 14);
INSERT INTO "public"."districts" VALUES (220, 'LEBONG', 14);
INSERT INTO "public"."districts" VALUES (221, 'MUKO MUKO', 14);
INSERT INTO "public"."districts" VALUES (222, 'REJANG LEBONG', 14);
INSERT INTO "public"."districts" VALUES (223, 'SELUMA', 14);
INSERT INTO "public"."districts" VALUES (224, 'BANYUASIN', 15);
INSERT INTO "public"."districts" VALUES (225, 'EMPAT LAWANG', 15);
INSERT INTO "public"."districts" VALUES (226, 'LAHAT', 15);
INSERT INTO "public"."districts" VALUES (227, 'LUBUK LINGGAU', 15);
INSERT INTO "public"."districts" VALUES (228, 'MUARA ENIM', 15);
INSERT INTO "public"."districts" VALUES (229, 'MUSI BANYUASIN', 15);
INSERT INTO "public"."districts" VALUES (230, 'MUSI RAWAS', 15);
INSERT INTO "public"."districts" VALUES (231, 'OGAN ILIR', 15);
INSERT INTO "public"."districts" VALUES (232, 'OGAN KOMERING ILIR', 15);
INSERT INTO "public"."districts" VALUES (233, 'OGAN KOMERING ULU', 15);
INSERT INTO "public"."districts" VALUES (234, 'OGAN KOMERING ULU SELATAN', 15);
INSERT INTO "public"."districts" VALUES (235, 'OGAN KOMERING ULU TIMUR', 15);
INSERT INTO "public"."districts" VALUES (236, 'PAGAR ALAM', 15);
INSERT INTO "public"."districts" VALUES (237, 'PALEMBANG', 15);
INSERT INTO "public"."districts" VALUES (238, 'PRABUMULIH', 15);
INSERT INTO "public"."districts" VALUES (239, 'BANGKA', 16);
INSERT INTO "public"."districts" VALUES (240, 'BANGKA BARAT', 16);
INSERT INTO "public"."districts" VALUES (241, 'BANGKA SELATAN', 16);
INSERT INTO "public"."districts" VALUES (242, 'BANGKA TENGAH', 16);
INSERT INTO "public"."districts" VALUES (243, 'BELITUNG', 16);
INSERT INTO "public"."districts" VALUES (244, 'BELITUNG TIMUR', 16);
INSERT INTO "public"."districts" VALUES (245, 'PANGKAL PINANG', 16);
INSERT INTO "public"."districts" VALUES (246, 'BANDAR LAMPUNG', 17);
INSERT INTO "public"."districts" VALUES (247, 'LAMPUNG BARAT', 17);
INSERT INTO "public"."districts" VALUES (248, 'LAMPUNG SELATAN', 17);
INSERT INTO "public"."districts" VALUES (249, 'LAMPUNG TENGAH', 17);
INSERT INTO "public"."districts" VALUES (250, 'LAMPUNG TIMUR', 17);
INSERT INTO "public"."districts" VALUES (251, 'LAMPUNG UTARA', 17);
INSERT INTO "public"."districts" VALUES (252, 'MESUJI', 17);
INSERT INTO "public"."districts" VALUES (253, 'METRO', 17);
INSERT INTO "public"."districts" VALUES (254, 'PESAWARAN', 17);
INSERT INTO "public"."districts" VALUES (255, 'PESISIR BARAT', 17);
INSERT INTO "public"."districts" VALUES (256, 'PRINGSEWU', 17);
INSERT INTO "public"."districts" VALUES (257, 'TANGGAMUS', 17);
INSERT INTO "public"."districts" VALUES (258, 'TULANG BAWANG', 17);
INSERT INTO "public"."districts" VALUES (259, 'TULANG BAWANG BARAT', 17);
INSERT INTO "public"."districts" VALUES (260, 'WAY KANAN', 17);
INSERT INTO "public"."districts" VALUES (261, 'BENGKAYANG', 18);
INSERT INTO "public"."districts" VALUES (262, 'KAPUAS HULU', 18);
INSERT INTO "public"."districts" VALUES (263, 'KAYONG UTARA', 18);
INSERT INTO "public"."districts" VALUES (264, 'KETAPANG', 18);
INSERT INTO "public"."districts" VALUES (265, 'KUBU RAYA', 18);
INSERT INTO "public"."districts" VALUES (266, 'LANDAK', 18);
INSERT INTO "public"."districts" VALUES (267, 'MELAWI', 18);
INSERT INTO "public"."districts" VALUES (268, 'PONTIANAK', 18);
INSERT INTO "public"."districts" VALUES (269, 'SAMBAS', 18);
INSERT INTO "public"."districts" VALUES (270, 'SANGGAU', 18);
INSERT INTO "public"."districts" VALUES (271, 'SEKADAU', 18);
INSERT INTO "public"."districts" VALUES (272, 'SINGKAWANG', 18);
INSERT INTO "public"."districts" VALUES (273, 'SINTANG', 18);
INSERT INTO "public"."districts" VALUES (274, 'BARITO SELATAN', 19);
INSERT INTO "public"."districts" VALUES (275, 'BARITO TIMUR', 19);
INSERT INTO "public"."districts" VALUES (276, 'BARITO UTARA', 19);
INSERT INTO "public"."districts" VALUES (277, 'GUNUNG MAS', 19);
INSERT INTO "public"."districts" VALUES (278, 'KAPUAS', 19);
INSERT INTO "public"."districts" VALUES (279, 'KATINGAN', 19);
INSERT INTO "public"."districts" VALUES (280, 'KOTAWARINGIN BARAT', 19);
INSERT INTO "public"."districts" VALUES (281, 'KOTAWARINGIN TIMUR', 19);
INSERT INTO "public"."districts" VALUES (282, 'LAMANDAU', 19);
INSERT INTO "public"."districts" VALUES (283, 'MURUNG RAYA', 19);
INSERT INTO "public"."districts" VALUES (284, 'PALANGKA RAYA', 19);
INSERT INTO "public"."districts" VALUES (285, 'PULANG PISAU', 19);
INSERT INTO "public"."districts" VALUES (286, 'SERUYAN', 19);
INSERT INTO "public"."districts" VALUES (287, 'SUKAMARA', 19);
INSERT INTO "public"."districts" VALUES (288, 'BALANGAN', 20);
INSERT INTO "public"."districts" VALUES (289, 'BANJAR', 20);
INSERT INTO "public"."districts" VALUES (290, 'BANJARBARU', 20);
INSERT INTO "public"."districts" VALUES (291, 'BANJARMASIN', 20);
INSERT INTO "public"."districts" VALUES (292, 'BARITO KUALA', 20);
INSERT INTO "public"."districts" VALUES (293, 'HULU SUNGAI SELATAN', 20);
INSERT INTO "public"."districts" VALUES (294, 'HULU SUNGAI TENGAH', 20);
INSERT INTO "public"."districts" VALUES (295, 'HULU SUNGAI UTARA', 20);
INSERT INTO "public"."districts" VALUES (296, 'KOTABARU', 20);
INSERT INTO "public"."districts" VALUES (297, 'TABALONG', 20);
INSERT INTO "public"."districts" VALUES (298, 'TANAH BUMBU', 20);
INSERT INTO "public"."districts" VALUES (299, 'TANAH LAUT', 20);
INSERT INTO "public"."districts" VALUES (300, 'TAPIN', 20);
INSERT INTO "public"."districts" VALUES (301, 'BALIKPAPAN', 21);
INSERT INTO "public"."districts" VALUES (302, 'BERAU', 21);
INSERT INTO "public"."districts" VALUES (303, 'BONTANG', 21);
INSERT INTO "public"."districts" VALUES (304, 'KUTAI BARAT', 21);
INSERT INTO "public"."districts" VALUES (305, 'KUTAI KARTANEGARA', 21);
INSERT INTO "public"."districts" VALUES (306, 'KUTAI TIMUR', 21);
INSERT INTO "public"."districts" VALUES (307, 'PASER', 21);
INSERT INTO "public"."districts" VALUES (308, 'PENAJAM PASER UTARA', 21);
INSERT INTO "public"."districts" VALUES (309, 'SAMARINDA', 21);
INSERT INTO "public"."districts" VALUES (310, 'BULUNGAN (BULONGAN)', 22);
INSERT INTO "public"."districts" VALUES (311, 'MALINAU', 22);
INSERT INTO "public"."districts" VALUES (312, 'NUNUKAN', 22);
INSERT INTO "public"."districts" VALUES (313, 'TANA TIDUNG', 22);
INSERT INTO "public"."districts" VALUES (314, 'TARAKAN', 22);
INSERT INTO "public"."districts" VALUES (315, 'MAJENE', 23);
INSERT INTO "public"."districts" VALUES (316, 'MAMASA', 23);
INSERT INTO "public"."districts" VALUES (317, 'MAMUJU', 23);
INSERT INTO "public"."districts" VALUES (318, 'MAMUJU UTARA', 23);
INSERT INTO "public"."districts" VALUES (319, 'POLEWALI MANDAR', 23);
INSERT INTO "public"."districts" VALUES (320, 'BANTAENG', 24);
INSERT INTO "public"."districts" VALUES (321, 'BARRU', 24);
INSERT INTO "public"."districts" VALUES (322, 'BONE', 24);
INSERT INTO "public"."districts" VALUES (323, 'BULUKUMBA', 24);
INSERT INTO "public"."districts" VALUES (324, 'ENREKANG', 24);
INSERT INTO "public"."districts" VALUES (325, 'GOWA', 24);
INSERT INTO "public"."districts" VALUES (326, 'JENEPONTO', 24);
INSERT INTO "public"."districts" VALUES (327, 'LUWU', 24);
INSERT INTO "public"."districts" VALUES (328, 'LUWU TIMUR', 24);
INSERT INTO "public"."districts" VALUES (329, 'LUWU UTARA', 24);
INSERT INTO "public"."districts" VALUES (330, 'MAKASSAR', 24);
INSERT INTO "public"."districts" VALUES (331, 'MAROS', 24);
INSERT INTO "public"."districts" VALUES (332, 'PALOPO', 24);
INSERT INTO "public"."districts" VALUES (333, 'PANGKAJENE KEPULAUAN', 24);
INSERT INTO "public"."districts" VALUES (334, 'PAREPARE', 24);
INSERT INTO "public"."districts" VALUES (335, 'PINRANG', 24);
INSERT INTO "public"."districts" VALUES (336, 'SELAYAR (KEPULAUAN SELAYAR)', 24);
INSERT INTO "public"."districts" VALUES (337, 'SIDENRENG RAPPANG/RAPANG', 24);
INSERT INTO "public"."districts" VALUES (338, 'SINJAI', 24);
INSERT INTO "public"."districts" VALUES (339, 'SOPPENG', 24);
INSERT INTO "public"."districts" VALUES (340, 'TAKALAR', 24);
INSERT INTO "public"."districts" VALUES (341, 'TANA TORAJA', 24);
INSERT INTO "public"."districts" VALUES (342, 'TORAJA UTARA', 24);
INSERT INTO "public"."districts" VALUES (343, 'WAJO', 24);
INSERT INTO "public"."districts" VALUES (344, 'BAU-BAU', 25);
INSERT INTO "public"."districts" VALUES (345, 'BOMBANA', 25);
INSERT INTO "public"."districts" VALUES (346, 'BUTON', 25);
INSERT INTO "public"."districts" VALUES (347, 'BUTON UTARA', 25);
INSERT INTO "public"."districts" VALUES (348, 'KENDARI', 25);
INSERT INTO "public"."districts" VALUES (349, 'KOLAKA', 25);
INSERT INTO "public"."districts" VALUES (350, 'KOLAKA UTARA', 25);
INSERT INTO "public"."districts" VALUES (351, 'KONAWE', 25);
INSERT INTO "public"."districts" VALUES (352, 'KONAWE SELATAN', 25);
INSERT INTO "public"."districts" VALUES (353, 'KONAWE UTARA', 25);
INSERT INTO "public"."districts" VALUES (354, 'MUNA', 25);
INSERT INTO "public"."districts" VALUES (355, 'WAKATOBI', 25);
INSERT INTO "public"."districts" VALUES (356, 'BANGGAI', 26);
INSERT INTO "public"."districts" VALUES (357, 'BANGGAI KEPULAUAN', 26);
INSERT INTO "public"."districts" VALUES (358, 'BUOL', 26);
INSERT INTO "public"."districts" VALUES (359, 'DONGGALA', 26);
INSERT INTO "public"."districts" VALUES (360, 'MOROWALI', 26);
INSERT INTO "public"."districts" VALUES (361, 'PALU', 26);
INSERT INTO "public"."districts" VALUES (362, 'PARIGI MOUTONG', 26);
INSERT INTO "public"."districts" VALUES (363, 'POSO', 26);
INSERT INTO "public"."districts" VALUES (364, 'SIGI', 26);
INSERT INTO "public"."districts" VALUES (365, 'TOJO UNA-UNA', 26);
INSERT INTO "public"."districts" VALUES (366, 'TOLI-TOLI', 26);
INSERT INTO "public"."districts" VALUES (367, 'BOALEMO', 27);
INSERT INTO "public"."districts" VALUES (368, 'BONE BOLANGO', 27);
INSERT INTO "public"."districts" VALUES (369, 'GORONTALO', 27);
INSERT INTO "public"."districts" VALUES (370, 'GORONTALO UTARA', 27);
INSERT INTO "public"."districts" VALUES (371, 'POHUWATO', 27);
INSERT INTO "public"."districts" VALUES (372, 'BITUNG', 28);
INSERT INTO "public"."districts" VALUES (373, 'BOLAANG MONGONDOW (BOLMONG)', 28);
INSERT INTO "public"."districts" VALUES (374, 'BOLAANG MONGONDOW SELATAN', 28);
INSERT INTO "public"."districts" VALUES (375, 'BOLAANG MONGONDOW TIMUR', 28);
INSERT INTO "public"."districts" VALUES (376, 'BOLAANG MONGONDOW UTARA', 28);
INSERT INTO "public"."districts" VALUES (377, 'KEPULAUAN SANGIHE', 28);
INSERT INTO "public"."districts" VALUES (378, 'KEPULAUAN SIAU TAGULANDANG BIARO (SITARO)', 28);
INSERT INTO "public"."districts" VALUES (379, 'KEPULAUAN TALAUD', 28);
INSERT INTO "public"."districts" VALUES (380, 'KOTAMOBAGU', 28);
INSERT INTO "public"."districts" VALUES (381, 'MANADO', 28);
INSERT INTO "public"."districts" VALUES (382, 'MINAHASA', 28);
INSERT INTO "public"."districts" VALUES (383, 'MINAHASA SELATAN', 28);
INSERT INTO "public"."districts" VALUES (384, 'MINAHASA TENGGARA', 28);
INSERT INTO "public"."districts" VALUES (385, 'MINAHASA UTARA', 28);
INSERT INTO "public"."districts" VALUES (386, 'TOMOHON', 28);
INSERT INTO "public"."districts" VALUES (387, 'AMBON', 29);
INSERT INTO "public"."districts" VALUES (388, 'BURU', 29);
INSERT INTO "public"."districts" VALUES (389, 'BURU SELATAN', 29);
INSERT INTO "public"."districts" VALUES (390, 'KEPULAUAN ARU', 29);
INSERT INTO "public"."districts" VALUES (391, 'MALUKU BARAT DAYA', 29);
INSERT INTO "public"."districts" VALUES (392, 'MALUKU TENGAH', 29);
INSERT INTO "public"."districts" VALUES (393, 'MALUKU TENGGARA', 29);
INSERT INTO "public"."districts" VALUES (394, 'MALUKU TENGGARA BARAT', 29);
INSERT INTO "public"."districts" VALUES (395, 'SERAM BAGIAN BARAT', 29);
INSERT INTO "public"."districts" VALUES (396, 'SERAM BAGIAN TIMUR', 29);
INSERT INTO "public"."districts" VALUES (397, 'TUAL', 29);
INSERT INTO "public"."districts" VALUES (398, 'HALMAHERA BARAT', 30);
INSERT INTO "public"."districts" VALUES (399, 'HALMAHERA SELATAN', 30);
INSERT INTO "public"."districts" VALUES (400, 'HALMAHERA TENGAH', 30);
INSERT INTO "public"."districts" VALUES (401, 'HALMAHERA TIMUR', 30);
INSERT INTO "public"."districts" VALUES (402, 'HALMAHERA UTARA', 30);
INSERT INTO "public"."districts" VALUES (403, 'KEPULAUAN SULA', 30);
INSERT INTO "public"."districts" VALUES (404, 'PULAU MOROTAI', 30);
INSERT INTO "public"."districts" VALUES (405, 'TERNATE', 30);
INSERT INTO "public"."districts" VALUES (406, 'TIDORE KEPULAUAN', 30);
INSERT INTO "public"."districts" VALUES (407, 'BIMA', 31);
INSERT INTO "public"."districts" VALUES (408, 'DOMPU', 31);
INSERT INTO "public"."districts" VALUES (409, 'LOMBOK BARAT', 31);
INSERT INTO "public"."districts" VALUES (410, 'LOMBOK TENGAH', 31);
INSERT INTO "public"."districts" VALUES (411, 'LOMBOK TIMUR', 31);
INSERT INTO "public"."districts" VALUES (412, 'LOMBOK UTARA', 31);
INSERT INTO "public"."districts" VALUES (413, 'MATARAM', 31);
INSERT INTO "public"."districts" VALUES (414, 'SUMBAWA', 31);
INSERT INTO "public"."districts" VALUES (415, 'SUMBAWA BARAT', 31);
INSERT INTO "public"."districts" VALUES (416, 'ALOR', 32);
INSERT INTO "public"."districts" VALUES (417, 'BELU', 32);
INSERT INTO "public"."districts" VALUES (418, 'ENDE', 32);
INSERT INTO "public"."districts" VALUES (419, 'FLORES TIMUR', 32);
INSERT INTO "public"."districts" VALUES (420, 'KUPANG', 32);
INSERT INTO "public"."districts" VALUES (421, 'LEMBATA', 32);
INSERT INTO "public"."districts" VALUES (422, 'MANGGARAI', 32);
INSERT INTO "public"."districts" VALUES (423, 'MANGGARAI BARAT', 32);
INSERT INTO "public"."districts" VALUES (424, 'MANGGARAI TIMUR', 32);
INSERT INTO "public"."districts" VALUES (425, 'NAGEKEO', 32);
INSERT INTO "public"."districts" VALUES (426, 'NGADA', 32);
INSERT INTO "public"."districts" VALUES (427, 'ROTE NDAO', 32);
INSERT INTO "public"."districts" VALUES (428, 'SABU RAIJUA', 32);
INSERT INTO "public"."districts" VALUES (429, 'SIKKA', 32);
INSERT INTO "public"."districts" VALUES (430, 'SUMBA BARAT', 32);
INSERT INTO "public"."districts" VALUES (431, 'SUMBA BARAT DAYA', 32);
INSERT INTO "public"."districts" VALUES (432, 'SUMBA TENGAH', 32);
INSERT INTO "public"."districts" VALUES (433, 'SUMBA TIMUR', 32);
INSERT INTO "public"."districts" VALUES (434, 'TIMOR TENGAH SELATAN', 32);
INSERT INTO "public"."districts" VALUES (435, 'TIMOR TENGAH UTARA', 32);
INSERT INTO "public"."districts" VALUES (436, 'FAKFAK', 33);
INSERT INTO "public"."districts" VALUES (437, 'KAIMANA', 33);
INSERT INTO "public"."districts" VALUES (438, 'MANOKWARI', 33);
INSERT INTO "public"."districts" VALUES (439, 'MANOKWARI SELATAN', 33);
INSERT INTO "public"."districts" VALUES (440, 'MAYBRAT', 33);
INSERT INTO "public"."districts" VALUES (441, 'PEGUNUNGAN ARFAK', 33);
INSERT INTO "public"."districts" VALUES (442, 'RAJA AMPAT', 33);
INSERT INTO "public"."districts" VALUES (443, 'SORONG', 33);
INSERT INTO "public"."districts" VALUES (444, 'SORONG SELATAN', 33);
INSERT INTO "public"."districts" VALUES (445, 'TAMBRAUW', 33);
INSERT INTO "public"."districts" VALUES (446, 'TELUK BINTUNI', 33);
INSERT INTO "public"."districts" VALUES (447, 'TELUK WONDAMA', 33);
INSERT INTO "public"."districts" VALUES (448, 'ASMAT', 34);
INSERT INTO "public"."districts" VALUES (449, 'BIAK NUMFOR', 34);
INSERT INTO "public"."districts" VALUES (450, 'BOVEN DIGOEL', 34);
INSERT INTO "public"."districts" VALUES (451, 'DEIYAI (DELIYAI)', 34);
INSERT INTO "public"."districts" VALUES (452, 'DOGIYAI', 34);
INSERT INTO "public"."districts" VALUES (453, 'INTAN JAYA', 34);
INSERT INTO "public"."districts" VALUES (454, 'JAYAPURA', 34);
INSERT INTO "public"."districts" VALUES (455, 'JAYAWIJAYA', 34);
INSERT INTO "public"."districts" VALUES (456, 'KEEROM', 34);
INSERT INTO "public"."districts" VALUES (457, 'KEPULAUAN YAPEN (YAPEN WAROPEN)', 34);
INSERT INTO "public"."districts" VALUES (458, 'LANNY JAYA', 34);
INSERT INTO "public"."districts" VALUES (459, 'MAMBERAMO RAYA', 34);
INSERT INTO "public"."districts" VALUES (460, 'MAMBERAMO TENGAH', 34);
INSERT INTO "public"."districts" VALUES (461, 'MAPPI', 34);
INSERT INTO "public"."districts" VALUES (462, 'MERAUKE', 34);
INSERT INTO "public"."districts" VALUES (463, 'MIMIKA', 34);
INSERT INTO "public"."districts" VALUES (464, 'NABIRE', 34);
INSERT INTO "public"."districts" VALUES (465, 'NDUGA', 34);
INSERT INTO "public"."districts" VALUES (466, 'PANIAI', 34);
INSERT INTO "public"."districts" VALUES (467, 'PEGUNUNGAN BINTANG', 34);
INSERT INTO "public"."districts" VALUES (468, 'PUNCAK', 34);
INSERT INTO "public"."districts" VALUES (469, 'PUNCAK JAYA', 34);
INSERT INTO "public"."districts" VALUES (470, 'SARMI', 34);
INSERT INTO "public"."districts" VALUES (471, 'SUPIORI', 34);
INSERT INTO "public"."districts" VALUES (472, 'TOLIKARA', 34);
INSERT INTO "public"."districts" VALUES (473, 'WAROPEN', 34);
INSERT INTO "public"."districts" VALUES (474, 'YAHUKIMO', 34);
INSERT INTO "public"."districts" VALUES (475, 'YALIMO', 34);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
  "id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
  "action_time" timestamptz(6) NOT NULL,
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int2 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO "public"."django_admin_log" VALUES (1, '2019-09-09 14:59:48.055067+07', '1', 'non_member', 1, '[{"added": {}}]', 2, 1);
INSERT INTO "public"."django_admin_log" VALUES (2, '2019-09-09 14:59:57.518241+07', '2', 'member', 1, '[{"added": {}}]', 2, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
  "id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES (1, 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES (2, 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES (4, 'users', 'user');
INSERT INTO "public"."django_content_type" VALUES (5, 'users', 'userprofile');
INSERT INTO "public"."django_content_type" VALUES (6, 'areas', 'country');
INSERT INTO "public"."django_content_type" VALUES (7, 'areas', 'district');
INSERT INTO "public"."django_content_type" VALUES (8, 'areas', 'subdisctrict');
INSERT INTO "public"."django_content_type" VALUES (9, 'areas', 'village');
INSERT INTO "public"."django_content_type" VALUES (10, 'areas', 'province');
INSERT INTO "public"."django_content_type" VALUES (11, 'areas', 'postalcode');
INSERT INTO "public"."django_content_type" VALUES (12, 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES (13, 'sites', 'site');
INSERT INTO "public"."django_content_type" VALUES (14, 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES (15, 'account', 'emailaddress');
INSERT INTO "public"."django_content_type" VALUES (16, 'account', 'emailconfirmation');
INSERT INTO "public"."django_content_type" VALUES (17, 'socialaccount', 'socialaccount');
INSERT INTO "public"."django_content_type" VALUES (18, 'socialaccount', 'socialapp');
INSERT INTO "public"."django_content_type" VALUES (19, 'socialaccount', 'socialtoken');
INSERT INTO "public"."django_content_type" VALUES (20, 'forum', 'forum');
INSERT INTO "public"."django_content_type" VALUES (21, 'forum', 'forumcategory');
INSERT INTO "public"."django_content_type" VALUES (22, 'forum', 'forummember');
INSERT INTO "public"."django_content_type" VALUES (23, 'forum', 'forumdiscussion');
INSERT INTO "public"."django_content_type" VALUES (24, 'forum', 'comments');
INSERT INTO "public"."django_content_type" VALUES (25, 'jobs', 'careercategory');
INSERT INTO "public"."django_content_type" VALUES (26, 'jobs', 'jobvacancy');
INSERT INTO "public"."django_content_type" VALUES (27, 'jobs', 'jobapply');
INSERT INTO "public"."django_content_type" VALUES (28, 'jobs', 'attachmentjobapply');
INSERT INTO "public"."django_content_type" VALUES (29, 'promotions', 'promotion');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
  "id" int4 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2019-09-03 18:46:31.232621+07');
INSERT INTO "public"."django_migrations" VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-09-03 18:46:31.29278+07');
INSERT INTO "public"."django_migrations" VALUES (3, 'auth', '0001_initial', '2019-09-03 18:46:31.506673+07');
INSERT INTO "public"."django_migrations" VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-09-03 18:46:31.859645+07');
INSERT INTO "public"."django_migrations" VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-09-03 18:46:31.871646+07');
INSERT INTO "public"."django_migrations" VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-09-03 18:46:31.883676+07');
INSERT INTO "public"."django_migrations" VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-09-03 18:46:31.896886+07');
INSERT INTO "public"."django_migrations" VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-09-03 18:46:31.900755+07');
INSERT INTO "public"."django_migrations" VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-09-03 18:46:31.912079+07');
INSERT INTO "public"."django_migrations" VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-09-03 18:46:31.924079+07');
INSERT INTO "public"."django_migrations" VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-09-03 18:46:31.938179+07');
INSERT INTO "public"."django_migrations" VALUES (12, 'auth', '0010_alter_group_name_max_length', '2019-09-03 18:46:31.968828+07');
INSERT INTO "public"."django_migrations" VALUES (13, 'auth', '0011_update_proxy_permissions', '2019-09-03 18:46:31.987826+07');
INSERT INTO "public"."django_migrations" VALUES (14, 'areas', '0001_initial', '2019-09-03 18:46:32.328735+07');
INSERT INTO "public"."django_migrations" VALUES (15, 'users', '0001_initial', '2019-09-03 18:46:33.072631+07');
INSERT INTO "public"."django_migrations" VALUES (16, 'account', '0001_initial', '2019-09-03 18:46:40.322738+07');
INSERT INTO "public"."django_migrations" VALUES (17, 'account', '0002_email_max_length', '2019-09-03 18:46:41.04816+07');
INSERT INTO "public"."django_migrations" VALUES (18, 'admin', '0001_initial', '2019-09-03 18:46:41.183642+07');
INSERT INTO "public"."django_migrations" VALUES (19, 'admin', '0002_logentry_remove_auto_add', '2019-09-03 18:46:41.352485+07');
INSERT INTO "public"."django_migrations" VALUES (20, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-03 18:46:41.368793+07');
INSERT INTO "public"."django_migrations" VALUES (21, 'forum', '0001_initial', '2019-09-03 18:46:41.942871+07');
INSERT INTO "public"."django_migrations" VALUES (22, 'jobs', '0001_initial', '2019-09-03 18:46:42.871248+07');
INSERT INTO "public"."django_migrations" VALUES (23, 'promotions', '0001_initial', '2019-09-03 18:46:43.862143+07');
INSERT INTO "public"."django_migrations" VALUES (24, 'promotions', '0002_auto_20190830_1456', '2019-09-03 18:46:44.061649+07');
INSERT INTO "public"."django_migrations" VALUES (25, 'promotions', '0003_auto_20190903_1805', '2019-09-03 18:46:44.113188+07');
INSERT INTO "public"."django_migrations" VALUES (26, 'sessions', '0001_initial', '2019-09-03 18:46:44.206168+07');
INSERT INTO "public"."django_migrations" VALUES (27, 'sites', '0001_initial', '2019-09-03 18:46:44.398964+07');
INSERT INTO "public"."django_migrations" VALUES (28, 'sites', '0002_alter_domain_unique', '2019-09-03 18:46:44.501231+07');
INSERT INTO "public"."django_migrations" VALUES (29, 'sites', '0003_set_site_domain_and_name', '2019-09-03 18:46:44.602423+07');
INSERT INTO "public"."django_migrations" VALUES (30, 'socialaccount', '0001_initial', '2019-09-03 18:46:45.229156+07');
INSERT INTO "public"."django_migrations" VALUES (31, 'socialaccount', '0002_token_max_lengths', '2019-09-03 18:46:45.683171+07');
INSERT INTO "public"."django_migrations" VALUES (32, 'socialaccount', '0003_extra_data_default_dict', '2019-09-03 18:46:45.699834+07');
INSERT INTO "public"."django_migrations" VALUES (33, 'promotions', '0004_promotion_promotion_title', '2019-09-10 14:35:15.470957+07');
INSERT INTO "public"."django_migrations" VALUES (34, 'jobs', '0002_auto_20190913_1543', '2019-09-13 15:44:04.711376+07');
INSERT INTO "public"."django_migrations" VALUES (35, 'jobs', '0003_careercategory_url_image', '2019-09-13 16:08:31.090693+07');
INSERT INTO "public"."django_migrations" VALUES (37, 'jobs', '0004_jobvacancy_username', '2019-09-13 16:26:33.512893+07');
INSERT INTO "public"."django_migrations" VALUES (38, 'jobs', '0005_jobvacancy_url_attachment', '2019-09-14 21:04:39.506122+07');
INSERT INTO "public"."django_migrations" VALUES (39, 'jobs', '0006_auto_20190914_2106', '2019-09-14 21:06:29.396631+07');
INSERT INTO "public"."django_migrations" VALUES (40, 'users', '0002_auto_20190904_1615', '2019-09-27 15:06:14.18771+07');
INSERT INTO "public"."django_migrations" VALUES (41, 'users', '0003_auto_20190923_1550', '2019-09-27 15:06:16.678211+07');
INSERT INTO "public"."django_migrations" VALUES (42, 'users', '0004_auto_20190924_1309', '2019-09-27 15:06:18.122384+07');
INSERT INTO "public"."django_migrations" VALUES (43, 'jobs', '0007_auto_20190927_1446', '2019-09-27 16:56:14.464538+07');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('5x3eq2xecpc6pdbytuftx3bdeqw8w22o', 'Y2E0MmQ5ZmEyN2Q3MTUwOWYxM2QxZGJiMWM5MTBjMTA0MWIyOWYyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NTgyYTc4NzcwNzFlM2E4NzM1YTZjZGFmYTgyOTIwMGE4OTZlZTljIn0=', '2019-09-18 12:38:40.73974+07');
INSERT INTO "public"."django_session" VALUES ('189n25dm86r2rczvg4eqz1h9c8bkk58r', 'Y2E0MmQ5ZmEyN2Q3MTUwOWYxM2QxZGJiMWM5MTBjMTA0MWIyOWYyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NTgyYTc4NzcwNzFlM2E4NzM1YTZjZGFmYTgyOTIwMGE4OTZlZTljIn0=', '2019-09-19 16:29:07.050372+07');
INSERT INTO "public"."django_session" VALUES ('484e81avocu6q66w9amd7tmcio6y3t5b', 'Y2E0MmQ5ZmEyN2Q3MTUwOWYxM2QxZGJiMWM5MTBjMTA0MWIyOWYyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NTgyYTc4NzcwNzFlM2E4NzM1YTZjZGFmYTgyOTIwMGE4OTZlZTljIn0=', '2019-09-23 10:38:19.633427+07');
INSERT INTO "public"."django_session" VALUES ('dh85jcbko37328a0rj2f6917f7gwsc6k', 'YjA2YjE2NDMwYmI5ZDAwOWNmYWQwMDYzNWVkMDJiMzI1YjA1NDMwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMuYmFja2VuZHMuRW1haWxPclVzZXJuYW1lTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzU4MmE3ODc3MDcxZTNhODczNWE2Y2RhZmE4MjkyMDBhODk2ZWU5YyJ9', '2019-10-11 15:55:15.43455+07');

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_site";
CREATE TABLE "public"."django_site" (
  "id" int4 NOT NULL DEFAULT nextval('django_site_id_seq'::regclass),
  "domain" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO "public"."django_site" VALUES (1, 'trisakti.connect.com', 'trisakti');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS "public"."forum";
CREATE TABLE "public"."forum" (
  "id_forum" int4 NOT NULL DEFAULT nextval('forum_id_forum_seq'::regclass),
  "forum_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "id_category_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for forum_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."forum_category";
CREATE TABLE "public"."forum_category" (
  "id_category" int4 NOT NULL DEFAULT nextval('forum_category_id_category_seq'::regclass),
  "category_desc" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for forum_discussion
-- ----------------------------
DROP TABLE IF EXISTS "public"."forum_discussion";
CREATE TABLE "public"."forum_discussion" (
  "id_discussion" int4 NOT NULL DEFAULT nextval('forum_discussion_id_discussion_seq'::regclass),
  "message" text COLLATE "pg_catalog"."default" NOT NULL,
  "post_date" timestamptz(6) NOT NULL,
  "is_hide" bool NOT NULL,
  "id_forum_id" int4 NOT NULL,
  "id_forum_member_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for forum_member
-- ----------------------------
DROP TABLE IF EXISTS "public"."forum_member";
CREATE TABLE "public"."forum_member" (
  "id_forum_member" int4 NOT NULL DEFAULT nextval('forum_member_id_forum_member_seq'::regclass),
  "join_date" timestamptz(6) NOT NULL,
  "id_forum_id" int4 NOT NULL,
  "username_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for job_apply
-- ----------------------------
DROP TABLE IF EXISTS "public"."job_apply";
CREATE TABLE "public"."job_apply" (
  "trx_job" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "body_messages" text COLLATE "pg_catalog"."default" NOT NULL,
  "attachment_code" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "apply_date" date NOT NULL,
  "id_job_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "username_id" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "url_attachment" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for job_vacancy
-- ----------------------------
DROP TABLE IF EXISTS "public"."job_vacancy";
CREATE TABLE "public"."job_vacancy" (
  "id_job" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "desc" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "expired_date" timestamptz(6) NOT NULL,
  "id_category_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "company_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "experience_job" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "function_job" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "image_job" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "required_skill" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "title_joblist" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "type_job" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for postal_code
-- ----------------------------
DROP TABLE IF EXISTS "public"."postal_code";
CREATE TABLE "public"."postal_code" (
  "postal_code" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "id_village_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for promotion
-- ----------------------------
DROP TABLE IF EXISTS "public"."promotion";
CREATE TABLE "public"."promotion" (
  "id_promotion" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "url_banner" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "expired_date" timestamptz(6) NOT NULL,
  "promotion_title" varchar(250) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of promotion
-- ----------------------------
INSERT INTO "public"."promotion" VALUES ('884ef278be074626bcdd2f258b8b55f2', 'promotions/884ef278be074626bcdd2f258b8b55f2.jpg', 'Lazada promo', '2019-09-09 17:41:22.895675+07', '2019-09-11 12:59:00+07', '1');
INSERT INTO "public"."promotion" VALUES ('7d3c3fd6b03845868c4f94e5e5fac686', 'promotions/7d3c3fd6b03845868c4f94e5e5fac686.png', 'desc 2', '2019-09-30 10:41:26.842035+07', '2019-12-31 12:59:00+07', 'Promotion 2');
INSERT INTO "public"."promotion" VALUES ('20157fb1a856445dbbfd6ea774d2f299', 'promotions/20157fb1a856445dbbfd6ea774d2f299.jpg', 'desc 3', '2019-09-30 10:41:44.598054+07', '2019-12-31 12:59:00+07', 'Promotion 3');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS "public"."provinces";
CREATE TABLE "public"."provinces" (
  "id_province" int4 NOT NULL DEFAULT nextval('provinces_id_province_seq'::regclass),
  "province" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "id_country_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO "public"."provinces" VALUES (1, 'BANTEN', 1);
INSERT INTO "public"."provinces" VALUES (2, 'DKI JAKARTA', 1);
INSERT INTO "public"."provinces" VALUES (3, 'JAWA BARAT', 1);
INSERT INTO "public"."provinces" VALUES (4, 'JAWA TENGAH', 1);
INSERT INTO "public"."provinces" VALUES (5, 'DI YOGYAKARTA', 1);
INSERT INTO "public"."provinces" VALUES (6, 'JAWA TIMUR', 1);
INSERT INTO "public"."provinces" VALUES (7, 'BALI', 1);
INSERT INTO "public"."provinces" VALUES (8, 'NANGGROE ACEH DARUSSALAM (NAD)', 1);
INSERT INTO "public"."provinces" VALUES (9, 'SUMATERA UTARA', 1);
INSERT INTO "public"."provinces" VALUES (10, 'SUMATERA BARAT', 1);
INSERT INTO "public"."provinces" VALUES (11, 'RIAU', 1);
INSERT INTO "public"."provinces" VALUES (12, 'KEPULAUAN RIAU', 1);
INSERT INTO "public"."provinces" VALUES (13, 'JAMBI', 1);
INSERT INTO "public"."provinces" VALUES (14, 'BENGKULU', 1);
INSERT INTO "public"."provinces" VALUES (15, 'SUMATERA SELATAN', 1);
INSERT INTO "public"."provinces" VALUES (16, 'BANGKA BELITUNG', 1);
INSERT INTO "public"."provinces" VALUES (17, 'LAMPUNG', 1);
INSERT INTO "public"."provinces" VALUES (18, 'KALIMANTAN BARAT', 1);
INSERT INTO "public"."provinces" VALUES (19, 'KALIMANTAN TENGAH', 1);
INSERT INTO "public"."provinces" VALUES (20, 'KALIMANTAN SELATAN', 1);
INSERT INTO "public"."provinces" VALUES (21, 'KALIMANTAN TIMUR', 1);
INSERT INTO "public"."provinces" VALUES (22, 'KALIMANTAN UTARA', 1);
INSERT INTO "public"."provinces" VALUES (23, 'SULAWESI BARAT', 1);
INSERT INTO "public"."provinces" VALUES (24, 'SULAWESI SELATAN', 1);
INSERT INTO "public"."provinces" VALUES (25, 'SULAWESI TENGGARA', 1);
INSERT INTO "public"."provinces" VALUES (26, 'SULAWESI TENGAH', 1);
INSERT INTO "public"."provinces" VALUES (27, 'GORONTALO', 1);
INSERT INTO "public"."provinces" VALUES (28, 'SULAWESI UTARA', 1);
INSERT INTO "public"."provinces" VALUES (29, 'MALUKU', 1);
INSERT INTO "public"."provinces" VALUES (30, 'MALUKU UTARA', 1);
INSERT INTO "public"."provinces" VALUES (31, 'NUSA TENGGARA BARAT (NTB)', 1);
INSERT INTO "public"."provinces" VALUES (32, 'NUSA TENGGARA TIMUR (NTT)', 1);
INSERT INTO "public"."provinces" VALUES (33, 'PAPUA BARAT', 1);
INSERT INTO "public"."provinces" VALUES (34, 'PAPUA', 1);

-- ----------------------------
-- Table structure for socialaccount_socialaccount
-- ----------------------------
DROP TABLE IF EXISTS "public"."socialaccount_socialaccount";
CREATE TABLE "public"."socialaccount_socialaccount" (
  "id" int4 NOT NULL DEFAULT nextval('socialaccount_socialaccount_id_seq'::regclass),
  "provider" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "uid" varchar(191) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6) NOT NULL,
  "date_joined" timestamptz(6) NOT NULL,
  "extra_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for socialaccount_socialapp
-- ----------------------------
DROP TABLE IF EXISTS "public"."socialaccount_socialapp";
CREATE TABLE "public"."socialaccount_socialapp" (
  "id" int4 NOT NULL DEFAULT nextval('socialaccount_socialapp_id_seq'::regclass),
  "provider" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "client_id" varchar(191) COLLATE "pg_catalog"."default" NOT NULL,
  "secret" varchar(191) COLLATE "pg_catalog"."default" NOT NULL,
  "key" varchar(191) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for socialaccount_socialapp_sites
-- ----------------------------
DROP TABLE IF EXISTS "public"."socialaccount_socialapp_sites";
CREATE TABLE "public"."socialaccount_socialapp_sites" (
  "id" int4 NOT NULL DEFAULT nextval('socialaccount_socialapp_sites_id_seq'::regclass),
  "socialapp_id" int4 NOT NULL,
  "site_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for socialaccount_socialtoken
-- ----------------------------
DROP TABLE IF EXISTS "public"."socialaccount_socialtoken";
CREATE TABLE "public"."socialaccount_socialtoken" (
  "id" int4 NOT NULL DEFAULT nextval('socialaccount_socialtoken_id_seq'::regclass),
  "token" text COLLATE "pg_catalog"."default" NOT NULL,
  "token_secret" text COLLATE "pg_catalog"."default" NOT NULL,
  "expires_at" timestamptz(6),
  "account_id" int4 NOT NULL,
  "app_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for subdisctricts
-- ----------------------------
DROP TABLE IF EXISTS "public"."subdisctricts";
CREATE TABLE "public"."subdisctricts" (
  "id_subdistrict" int4 NOT NULL DEFAULT nextval('subdisctricts_id_subdistrict_seq'::regclass),
  "subdisctrict" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "id_district_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for user_profile
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_profile";
CREATE TABLE "public"."user_profile" (
  "id_profile" varchar(11) COLLATE "pg_catalog"."default" NOT NULL,
  "url_photo" varchar(100) COLLATE "pg_catalog"."default",
  "nik" varchar(100) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "gender" varchar(10) COLLATE "pg_catalog"."default",
  "birth_location" varchar(100) COLLATE "pg_catalog"."default",
  "birthdate" date,
  "address" text COLLATE "pg_catalog"."default",
  "faculty" varchar(100) COLLATE "pg_catalog"."default",
  "department" varchar(100) COLLATE "pg_catalog"."default",
  "generation" int4,
  "is_verified" bool NOT NULL,
  "is_forum" bool NOT NULL,
  "is_marketplace" bool NOT NULL,
  "id_country_id" int4,
  "id_district_id" int4,
  "id_province_id" int4,
  "id_village_id" int4,
  "postal_code" int4,
  "username_id" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO "public"."user_profile" VALUES ('E50024facAE', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL, 'admin1');
INSERT INTO "public"."user_profile" VALUES ('A2A6B5Ea3EB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL, 'admin2');

-- ----------------------------
-- Table structure for users_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."users_user";
CREATE TABLE "public"."users_user" (
  "id" int4 NOT NULL DEFAULT nextval('users_user_id_seq'::regclass),
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6),
  "is_superuser" bool NOT NULL,
  "username" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "is_staff" bool NOT NULL,
  "is_active" bool NOT NULL,
  "date_joined" timestamptz(6) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default",
  "remember_token" varchar(255) COLLATE "pg_catalog"."default",
  "telp" varchar(13) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of users_user
-- ----------------------------
INSERT INTO "public"."users_user" VALUES (17, 'argon2$argon2i$v=19$m=512,t=2,p=2$THJMT1RQS0FxQ0Fw$FNgtjunXKc4jwv6chB14kg', NULL, 'f', 'admin1', '', '', 'izzz@gmail.com', 'f', 'f', '2019-09-27 20:41:12.658694+07', '', '0c453319dB5abbeaaDA3A2BCA652fa8B', NULL, '111111111113');
INSERT INTO "public"."users_user" VALUES (19, 'argon2$argon2i$v=19$m=512,t=2,p=2$MUlOOFlKWjNOQm5K$vYryNWExr/cFFMdeu5cj8w', NULL, 'f', 'admin2', '', '', 'admi2@gmail.com', 'f', 'f', '2019-09-27 21:07:25.647572+07', '', '2B7F74C924103d85efdcdDDdBBaC9D9d', NULL, '111111111114');
INSERT INTO "public"."users_user" VALUES (1, 'argon2$argon2i$v=19$m=512,t=2,p=2$ZjNxTWx4cURya1VI$wGsuq5ufQLdeSBYhWVg8Ng', '2019-09-27 15:55:15.359547+07', 't', 'admin', '', '', 'faizrahmat.hidayat06@gmail.com', 't', 't', '2019-09-03 18:48:09.668636+07', '', NULL, NULL, '');

-- ----------------------------
-- Table structure for users_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."users_user_groups";
CREATE TABLE "public"."users_user_groups" (
  "id" int4 NOT NULL DEFAULT nextval('users_user_groups_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "group_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for users_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."users_user_user_permissions";
CREATE TABLE "public"."users_user_user_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('users_user_user_permissions_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for villages
-- ----------------------------
DROP TABLE IF EXISTS "public"."villages";
CREATE TABLE "public"."villages" (
  "id_village" int4 NOT NULL DEFAULT nextval('villages_id_village_seq'::regclass),
  "village" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "id_subdistrict_id" int4 NOT NULL
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."account_emailaddress_id_seq"
OWNED BY "public"."account_emailaddress"."id";
SELECT setval('"public"."account_emailaddress_id_seq"', 2, false);
ALTER SEQUENCE "public"."account_emailconfirmation_id_seq"
OWNED BY "public"."account_emailconfirmation"."id";
SELECT setval('"public"."account_emailconfirmation_id_seq"', 2, false);
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 3, true);
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 2, false);
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 117, true);
ALTER SEQUENCE "public"."comments_id_comments_seq"
OWNED BY "public"."comments"."id_comments";
SELECT setval('"public"."comments_id_comments_seq"', 2, false);
ALTER SEQUENCE "public"."countries_id_country_seq"
OWNED BY "public"."countries"."id_country";
SELECT setval('"public"."countries_id_country_seq"', 2, false);
ALTER SEQUENCE "public"."districts_id_district_seq"
OWNED BY "public"."districts"."id_district";
SELECT setval('"public"."districts_id_district_seq"', 2, false);
ALTER SEQUENCE "public"."django_admin_log_id_seq"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq"', 3, true);
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 30, true);
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 44, true);
ALTER SEQUENCE "public"."django_site_id_seq"
OWNED BY "public"."django_site"."id";
SELECT setval('"public"."django_site_id_seq"', 2, false);
ALTER SEQUENCE "public"."forum_category_id_category_seq"
OWNED BY "public"."forum_category"."id_category";
SELECT setval('"public"."forum_category_id_category_seq"', 2, false);
ALTER SEQUENCE "public"."forum_discussion_id_discussion_seq"
OWNED BY "public"."forum_discussion"."id_discussion";
SELECT setval('"public"."forum_discussion_id_discussion_seq"', 2, false);
ALTER SEQUENCE "public"."forum_id_forum_seq"
OWNED BY "public"."forum"."id_forum";
SELECT setval('"public"."forum_id_forum_seq"', 2, false);
ALTER SEQUENCE "public"."forum_member_id_forum_member_seq"
OWNED BY "public"."forum_member"."id_forum_member";
SELECT setval('"public"."forum_member_id_forum_member_seq"', 2, false);
ALTER SEQUENCE "public"."provinces_id_province_seq"
OWNED BY "public"."provinces"."id_province";
SELECT setval('"public"."provinces_id_province_seq"', 2, false);
ALTER SEQUENCE "public"."socialaccount_socialaccount_id_seq"
OWNED BY "public"."socialaccount_socialaccount"."id";
SELECT setval('"public"."socialaccount_socialaccount_id_seq"', 2, false);
ALTER SEQUENCE "public"."socialaccount_socialapp_id_seq"
OWNED BY "public"."socialaccount_socialapp"."id";
SELECT setval('"public"."socialaccount_socialapp_id_seq"', 2, false);
ALTER SEQUENCE "public"."socialaccount_socialapp_sites_id_seq"
OWNED BY "public"."socialaccount_socialapp_sites"."id";
SELECT setval('"public"."socialaccount_socialapp_sites_id_seq"', 2, false);
ALTER SEQUENCE "public"."socialaccount_socialtoken_id_seq"
OWNED BY "public"."socialaccount_socialtoken"."id";
SELECT setval('"public"."socialaccount_socialtoken_id_seq"', 2, false);
ALTER SEQUENCE "public"."subdisctricts_id_subdistrict_seq"
OWNED BY "public"."subdisctricts"."id_subdistrict";
SELECT setval('"public"."subdisctricts_id_subdistrict_seq"', 2, false);
ALTER SEQUENCE "public"."users_user_groups_id_seq"
OWNED BY "public"."users_user_groups"."id";
SELECT setval('"public"."users_user_groups_id_seq"', 3, true);
ALTER SEQUENCE "public"."users_user_id_seq"
OWNED BY "public"."users_user"."id";
SELECT setval('"public"."users_user_id_seq"', 21, true);
ALTER SEQUENCE "public"."users_user_user_permissions_id_seq"
OWNED BY "public"."users_user_user_permissions"."id";
SELECT setval('"public"."users_user_user_permissions_id_seq"', 2, false);
ALTER SEQUENCE "public"."villages_id_village_seq"
OWNED BY "public"."villages"."id_village";
SELECT setval('"public"."villages_id_village_seq"', 2, false);

-- ----------------------------
-- Indexes structure for table account_emailaddress
-- ----------------------------
CREATE INDEX "account_emailaddress_email_03be32b2_like" ON "public"."account_emailaddress" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "account_emailaddress_user_id_2c513194" ON "public"."account_emailaddress" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table account_emailaddress
-- ----------------------------
ALTER TABLE "public"."account_emailaddress" ADD CONSTRAINT "account_emailaddress_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table account_emailaddress
-- ----------------------------
ALTER TABLE "public"."account_emailaddress" ADD CONSTRAINT "account_emailaddress_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_emailconfirmation
-- ----------------------------
CREATE INDEX "account_emailconfirmation_email_address_id_5b7f8c58" ON "public"."account_emailconfirmation" USING btree (
  "email_address_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "account_emailconfirmation_key_f43612bd_like" ON "public"."account_emailconfirmation" USING btree (
  "key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table account_emailconfirmation
-- ----------------------------
ALTER TABLE "public"."account_emailconfirmation" ADD CONSTRAINT "account_emailconfirmation_key_key" UNIQUE ("key");

-- ----------------------------
-- Primary Key structure for table account_emailconfirmation
-- ----------------------------
ALTER TABLE "public"."account_emailconfirmation" ADD CONSTRAINT "account_emailconfirmation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table attacment_job_apply
-- ----------------------------
CREATE INDEX "attacment_job_apply_attachment_code_id_e20fc917" ON "public"."attacment_job_apply" USING btree (
  "attachment_code_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "attacment_job_apply_attachment_code_id_e20fc917_like" ON "public"."attacment_job_apply" USING btree (
  "attachment_code_id" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "attacment_job_apply_id_attachment_359b5334_like" ON "public"."attacment_job_apply" USING btree (
  "id_attachment" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table attacment_job_apply
-- ----------------------------
ALTER TABLE "public"."attacment_job_apply" ADD CONSTRAINT "attacment_job_apply_pkey" PRIMARY KEY ("id_attachment");

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table career_category
-- ----------------------------
CREATE INDEX "career_category_id_category_839815a6_like" ON "public"."career_category" USING btree (
  "id_category" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table career_category
-- ----------------------------
ALTER TABLE "public"."career_category" ADD CONSTRAINT "career_category_pkey" PRIMARY KEY ("id_category");

-- ----------------------------
-- Indexes structure for table comments
-- ----------------------------
CREATE INDEX "comments_id_forum_member_id_cdc77782" ON "public"."comments" USING btree (
  "id_forum_member_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table comments
-- ----------------------------
ALTER TABLE "public"."comments" ADD CONSTRAINT "comments_pkey" PRIMARY KEY ("id_comments");

-- ----------------------------
-- Primary Key structure for table countries
-- ----------------------------
ALTER TABLE "public"."countries" ADD CONSTRAINT "countries_pkey" PRIMARY KEY ("id_country");

-- ----------------------------
-- Indexes structure for table districts
-- ----------------------------
CREATE INDEX "districts_id_province_id_66969511" ON "public"."districts" USING btree (
  "id_province_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_pkey" PRIMARY KEY ("id_district");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK ((action_flag >= 0));

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree (
  "expire_date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree (
  "session_key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");

-- ----------------------------
-- Indexes structure for table django_site
-- ----------------------------
CREATE INDEX "django_site_domain_a2e37b91_like" ON "public"."django_site" USING btree (
  "domain" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table django_site
-- ----------------------------
ALTER TABLE "public"."django_site" ADD CONSTRAINT "django_site_domain_a2e37b91_uniq" UNIQUE ("domain");

-- ----------------------------
-- Primary Key structure for table django_site
-- ----------------------------
ALTER TABLE "public"."django_site" ADD CONSTRAINT "django_site_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table forum
-- ----------------------------
CREATE INDEX "forum_id_category_id_c47b0296" ON "public"."forum" USING btree (
  "id_category_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table forum
-- ----------------------------
ALTER TABLE "public"."forum" ADD CONSTRAINT "forum_pkey" PRIMARY KEY ("id_forum");

-- ----------------------------
-- Primary Key structure for table forum_category
-- ----------------------------
ALTER TABLE "public"."forum_category" ADD CONSTRAINT "forum_category_pkey" PRIMARY KEY ("id_category");

-- ----------------------------
-- Indexes structure for table forum_discussion
-- ----------------------------
CREATE INDEX "forum_discussion_id_forum_id_a9a9d1c0" ON "public"."forum_discussion" USING btree (
  "id_forum_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "forum_discussion_id_forum_member_id_3950acaf" ON "public"."forum_discussion" USING btree (
  "id_forum_member_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table forum_discussion
-- ----------------------------
ALTER TABLE "public"."forum_discussion" ADD CONSTRAINT "forum_discussion_pkey" PRIMARY KEY ("id_discussion");

-- ----------------------------
-- Indexes structure for table forum_member
-- ----------------------------
CREATE INDEX "forum_member_id_forum_id_d2a96aae" ON "public"."forum_member" USING btree (
  "id_forum_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "forum_member_username_id_832ebe29" ON "public"."forum_member" USING btree (
  "username_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table forum_member
-- ----------------------------
ALTER TABLE "public"."forum_member" ADD CONSTRAINT "forum_member_pkey" PRIMARY KEY ("id_forum_member");

-- ----------------------------
-- Indexes structure for table job_apply
-- ----------------------------
CREATE INDEX "job_apply_attachment_code_5b5ab2d1_like" ON "public"."job_apply" USING btree (
  "attachment_code" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "job_apply_id_job_id_6d15e0de" ON "public"."job_apply" USING btree (
  "id_job_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "job_apply_id_job_id_6d15e0de_like" ON "public"."job_apply" USING btree (
  "id_job_id" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "job_apply_trx_job_80eb3368_like" ON "public"."job_apply" USING btree (
  "trx_job" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "job_apply_username_id_3bffe681" ON "public"."job_apply" USING btree (
  "username_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "job_apply_username_id_3bffe681_like" ON "public"."job_apply" USING btree (
  "username_id" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table job_apply
-- ----------------------------
ALTER TABLE "public"."job_apply" ADD CONSTRAINT "job_apply_attachment_code_key" UNIQUE ("attachment_code");

-- ----------------------------
-- Primary Key structure for table job_apply
-- ----------------------------
ALTER TABLE "public"."job_apply" ADD CONSTRAINT "job_apply_pkey" PRIMARY KEY ("trx_job");

-- ----------------------------
-- Indexes structure for table job_vacancy
-- ----------------------------
CREATE INDEX "job_vacancy_id_category_id_5c32ff91" ON "public"."job_vacancy" USING btree (
  "id_category_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "job_vacancy_id_category_id_5c32ff91_like" ON "public"."job_vacancy" USING btree (
  "id_category_id" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "job_vacancy_id_job_dd420317_like" ON "public"."job_vacancy" USING btree (
  "id_job" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "job_vacancy_username_3a9c5a9d" ON "public"."job_vacancy" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "job_vacancy_username_3a9c5a9d_like" ON "public"."job_vacancy" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table job_vacancy
-- ----------------------------
ALTER TABLE "public"."job_vacancy" ADD CONSTRAINT "job_vacancy_pkey" PRIMARY KEY ("id_job");

-- ----------------------------
-- Indexes structure for table postal_code
-- ----------------------------
CREATE INDEX "postal_code_id_village_id_331df56f" ON "public"."postal_code" USING btree (
  "id_village_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "postal_code_postal_code_9eacd42c_like" ON "public"."postal_code" USING btree (
  "postal_code" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table postal_code
-- ----------------------------
ALTER TABLE "public"."postal_code" ADD CONSTRAINT "postal_code_pkey" PRIMARY KEY ("postal_code");

-- ----------------------------
-- Indexes structure for table promotion
-- ----------------------------
CREATE INDEX "promotion_id_promotion_e9d8eaf0_like" ON "public"."promotion" USING btree (
  "id_promotion" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table promotion
-- ----------------------------
ALTER TABLE "public"."promotion" ADD CONSTRAINT "promotion_pkey" PRIMARY KEY ("id_promotion");

-- ----------------------------
-- Indexes structure for table provinces
-- ----------------------------
CREATE INDEX "provinces_id_country_id_ce050a05" ON "public"."provinces" USING btree (
  "id_country_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table provinces
-- ----------------------------
ALTER TABLE "public"."provinces" ADD CONSTRAINT "provinces_pkey" PRIMARY KEY ("id_province");

-- ----------------------------
-- Indexes structure for table socialaccount_socialaccount
-- ----------------------------
CREATE INDEX "socialaccount_socialaccount_user_id_8146e70c" ON "public"."socialaccount_socialaccount" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table socialaccount_socialaccount
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialaccount" ADD CONSTRAINT "socialaccount_socialaccount_provider_uid_fc810c6e_uniq" UNIQUE ("provider", "uid");

-- ----------------------------
-- Primary Key structure for table socialaccount_socialaccount
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialaccount" ADD CONSTRAINT "socialaccount_socialaccount_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table socialaccount_socialapp
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialapp" ADD CONSTRAINT "socialaccount_socialapp_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table socialaccount_socialapp_sites
-- ----------------------------
CREATE INDEX "socialaccount_socialapp_sites_site_id_2579dee5" ON "public"."socialaccount_socialapp_sites" USING btree (
  "site_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "socialaccount_socialapp_sites_socialapp_id_97fb6e7d" ON "public"."socialaccount_socialapp_sites" USING btree (
  "socialapp_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table socialaccount_socialapp_sites
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialapp_sites" ADD CONSTRAINT "socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq" UNIQUE ("socialapp_id", "site_id");

-- ----------------------------
-- Primary Key structure for table socialaccount_socialapp_sites
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialapp_sites" ADD CONSTRAINT "socialaccount_socialapp_sites_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table socialaccount_socialtoken
-- ----------------------------
CREATE INDEX "socialaccount_socialtoken_account_id_951f210e" ON "public"."socialaccount_socialtoken" USING btree (
  "account_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "socialaccount_socialtoken_app_id_636a42d7" ON "public"."socialaccount_socialtoken" USING btree (
  "app_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table socialaccount_socialtoken
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialtoken" ADD CONSTRAINT "socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq" UNIQUE ("app_id", "account_id");

-- ----------------------------
-- Primary Key structure for table socialaccount_socialtoken
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialtoken" ADD CONSTRAINT "socialaccount_socialtoken_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table subdisctricts
-- ----------------------------
CREATE INDEX "subdisctricts_id_district_id_29db93da" ON "public"."subdisctricts" USING btree (
  "id_district_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table subdisctricts
-- ----------------------------
ALTER TABLE "public"."subdisctricts" ADD CONSTRAINT "subdisctricts_pkey" PRIMARY KEY ("id_subdistrict");

-- ----------------------------
-- Indexes structure for table user_profile
-- ----------------------------
CREATE INDEX "user_profile_id_country_id_2c7e70f6" ON "public"."user_profile" USING btree (
  "id_country_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "user_profile_id_district_id_9c59ea83" ON "public"."user_profile" USING btree (
  "id_district_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "user_profile_id_profile_e7d195fb_like" ON "public"."user_profile" USING btree (
  "id_profile" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "user_profile_id_province_id_3e273786" ON "public"."user_profile" USING btree (
  "id_province_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "user_profile_id_village_id_d760bd21" ON "public"."user_profile" USING btree (
  "id_village_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "user_profile_nik_edb03f68_like" ON "public"."user_profile" USING btree (
  "nik" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "user_profile_username_id_59383d0c_like" ON "public"."user_profile" USING btree (
  "username_id" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table user_profile
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_nik_key" UNIQUE ("nik");
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_username_id_key" UNIQUE ("username_id");

-- ----------------------------
-- Primary Key structure for table user_profile
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_pkey" PRIMARY KEY ("id_profile");

-- ----------------------------
-- Indexes structure for table users_user
-- ----------------------------
CREATE INDEX "users_user_username_06e46fe6_like" ON "public"."users_user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_user
-- ----------------------------
ALTER TABLE "public"."users_user" ADD CONSTRAINT "users_user_username_key" UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table users_user
-- ----------------------------
ALTER TABLE "public"."users_user" ADD CONSTRAINT "users_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_user_groups
-- ----------------------------
CREATE INDEX "users_user_groups_group_id_9afc8d0e" ON "public"."users_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "users_user_groups_user_id_5f6f5a90" ON "public"."users_user_groups" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_user_groups
-- ----------------------------
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_user_id_group_id_b88eab82_uniq" UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table users_user_groups
-- ----------------------------
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_user_user_permissions
-- ----------------------------
CREATE INDEX "users_user_user_permissions_permission_id_0b93982e" ON "public"."users_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "users_user_user_permissions_user_id_20aca447" ON "public"."users_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_permissions_user_id_permission_id_43338c45_uniq" UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table users_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table villages
-- ----------------------------
CREATE INDEX "villages_id_subdistrict_id_5a3023c7" ON "public"."villages" USING btree (
  "id_subdistrict_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "villages_pkey" PRIMARY KEY ("id_village");

-- ----------------------------
-- Foreign Keys structure for table account_emailaddress
-- ----------------------------
ALTER TABLE "public"."account_emailaddress" ADD CONSTRAINT "account_emailaddress_user_id_2c513194_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table account_emailconfirmation
-- ----------------------------
ALTER TABLE "public"."account_emailconfirmation" ADD CONSTRAINT "account_emailconfirm_email_address_id_5b7f8c58_fk_account_e" FOREIGN KEY ("email_address_id") REFERENCES "public"."account_emailaddress" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table attacment_job_apply
-- ----------------------------
ALTER TABLE "public"."attacment_job_apply" ADD CONSTRAINT "attacment_job_apply_attachment_code_id_e20fc917_fk_job_apply" FOREIGN KEY ("attachment_code_id") REFERENCES "public"."job_apply" ("attachment_code") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table comments
-- ----------------------------
ALTER TABLE "public"."comments" ADD CONSTRAINT "comments_id_forum_member_id_cdc77782_fk_forum_mem" FOREIGN KEY ("id_forum_member_id") REFERENCES "public"."forum_member" ("id_forum_member") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table districts
-- ----------------------------
ALTER TABLE "public"."districts" ADD CONSTRAINT "districts_id_province_id_66969511_fk_provinces_id_province" FOREIGN KEY ("id_province_id") REFERENCES "public"."provinces" ("id_province") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table forum
-- ----------------------------
ALTER TABLE "public"."forum" ADD CONSTRAINT "forum_id_category_id_c47b0296_fk_forum_category_id_category" FOREIGN KEY ("id_category_id") REFERENCES "public"."forum_category" ("id_category") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table forum_discussion
-- ----------------------------
ALTER TABLE "public"."forum_discussion" ADD CONSTRAINT "forum_discussion_id_forum_id_a9a9d1c0_fk_forum_id_forum" FOREIGN KEY ("id_forum_id") REFERENCES "public"."forum" ("id_forum") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."forum_discussion" ADD CONSTRAINT "forum_discussion_id_forum_member_id_3950acaf_fk_forum_mem" FOREIGN KEY ("id_forum_member_id") REFERENCES "public"."forum_member" ("id_forum_member") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table forum_member
-- ----------------------------
ALTER TABLE "public"."forum_member" ADD CONSTRAINT "forum_member_id_forum_id_d2a96aae_fk_forum_id_forum" FOREIGN KEY ("id_forum_id") REFERENCES "public"."forum" ("id_forum") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."forum_member" ADD CONSTRAINT "forum_member_username_id_832ebe29_fk_users_user_id" FOREIGN KEY ("username_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table job_apply
-- ----------------------------
ALTER TABLE "public"."job_apply" ADD CONSTRAINT "job_apply_id_job_id_6d15e0de_fk_job_vacancy_id_job" FOREIGN KEY ("id_job_id") REFERENCES "public"."job_vacancy" ("id_job") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."job_apply" ADD CONSTRAINT "job_apply_username_id_3bffe681_fk_users_user_username" FOREIGN KEY ("username_id") REFERENCES "public"."users_user" ("username") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table job_vacancy
-- ----------------------------
ALTER TABLE "public"."job_vacancy" ADD CONSTRAINT "job_vacancy_id_category_id_5c32ff91_fk_career_ca" FOREIGN KEY ("id_category_id") REFERENCES "public"."career_category" ("id_category") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."job_vacancy" ADD CONSTRAINT "job_vacancy_username_3a9c5a9d_fk_users_user_username" FOREIGN KEY ("username") REFERENCES "public"."users_user" ("username") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table postal_code
-- ----------------------------
ALTER TABLE "public"."postal_code" ADD CONSTRAINT "postal_code_id_village_id_331df56f_fk_villages_id_village" FOREIGN KEY ("id_village_id") REFERENCES "public"."villages" ("id_village") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table provinces
-- ----------------------------
ALTER TABLE "public"."provinces" ADD CONSTRAINT "provinces_id_country_id_ce050a05_fk_countries_id_country" FOREIGN KEY ("id_country_id") REFERENCES "public"."countries" ("id_country") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table socialaccount_socialaccount
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialaccount" ADD CONSTRAINT "socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table socialaccount_socialapp_sites
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialapp_sites" ADD CONSTRAINT "socialaccount_social_site_id_2579dee5_fk_django_si" FOREIGN KEY ("site_id") REFERENCES "public"."django_site" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."socialaccount_socialapp_sites" ADD CONSTRAINT "socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc" FOREIGN KEY ("socialapp_id") REFERENCES "public"."socialaccount_socialapp" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table socialaccount_socialtoken
-- ----------------------------
ALTER TABLE "public"."socialaccount_socialtoken" ADD CONSTRAINT "socialaccount_social_account_id_951f210e_fk_socialacc" FOREIGN KEY ("account_id") REFERENCES "public"."socialaccount_socialaccount" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."socialaccount_socialtoken" ADD CONSTRAINT "socialaccount_social_app_id_636a42d7_fk_socialacc" FOREIGN KEY ("app_id") REFERENCES "public"."socialaccount_socialapp" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table subdisctricts
-- ----------------------------
ALTER TABLE "public"."subdisctricts" ADD CONSTRAINT "subdisctricts_id_district_id_29db93da_fk_districts_id_district" FOREIGN KEY ("id_district_id") REFERENCES "public"."districts" ("id_district") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table user_profile
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_id_country_id_2c7e70f6_fk_countries_id_country" FOREIGN KEY ("id_country_id") REFERENCES "public"."countries" ("id_country") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_id_district_id_9c59ea83_fk_districts_id_district" FOREIGN KEY ("id_district_id") REFERENCES "public"."districts" ("id_district") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_id_province_id_3e273786_fk_provinces_id_province" FOREIGN KEY ("id_province_id") REFERENCES "public"."provinces" ("id_province") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_id_village_id_d760bd21_fk_villages_id_village" FOREIGN KEY ("id_village_id") REFERENCES "public"."villages" ("id_village") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."user_profile" ADD CONSTRAINT "user_profile_username_id_59383d0c_fk_users_user_username" FOREIGN KEY ("username_id") REFERENCES "public"."users_user" ("username") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table users_user_groups
-- ----------------------------
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_group_id_9afc8d0e_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_user_id_5f6f5a90_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table users_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_perm_permission_id_0b93982e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_permissions_user_id_20aca447_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table villages
-- ----------------------------
ALTER TABLE "public"."villages" ADD CONSTRAINT "villages_id_subdistrict_id_5a3023c7_fk_subdisctr" FOREIGN KEY ("id_subdistrict_id") REFERENCES "public"."subdisctricts" ("id_subdistrict") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
