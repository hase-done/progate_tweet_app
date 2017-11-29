PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20170515060224');
INSERT INTO schema_migrations VALUES('20171128114401');
INSERT INTO schema_migrations VALUES('20171128122302');
INSERT INTO schema_migrations VALUES('20171129142239');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO posts VALUES(2,'hitujibulog','2017-11-28 12:08:22.579729','2017-11-28 12:08:22.579729',2);
INSERT INTO posts VALUES(3,'a','2017-11-29 13:56:06.672691','2017-11-29 13:56:06.672691',1);
CREATE TABLE IF NOT EXISTS "likes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "post_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO likes VALUES(3,1,2,'2017-11-29 13:55:13.483540','2017-11-29 13:55:13.483540');
INSERT INTO likes VALUES(4,1,3,'2017-11-29 14:19:04.418923','2017-11-29 14:19:04.418923');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password_digest" varchar);
INSERT INTO users VALUES(1,'にんじゃわんこ','wanko@prog-8.com','2017-04-18 08:06:52.739295','2017-11-29 14:24:44.032683','default_user.jpg','$2a$10$LAJ7dIz3E.csPkr1mcrvLesIGPl7StnxzZB2l4UV1ojVymBPc49VG');
INSERT INTO users VALUES(2,'ひつじ仙人','hitsuji@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg',NULL);
INSERT INTO users VALUES(3,'ベイビーわんこ','baby@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg',NULL);
INSERT INTO users VALUES(4,'しょう','sho@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg',NULL);
INSERT INTO users VALUES(5,'みちこ','michiko@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg',NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',3);
INSERT INTO sqlite_sequence VALUES('likes',4);
INSERT INTO sqlite_sequence VALUES('users',5);
COMMIT;
