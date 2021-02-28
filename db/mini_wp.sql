CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "firstname" varchar(50),
  "lastname" varchar(50),
  "birth_date" date,
  "email" varchar,
  "password" varchar,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now()),
  "deleted_at" timestamptz DEFAULT (now())
);

CREATE TABLE "articles" (
  "id" serial PRIMARY KEY,
  "user_id" int,
  "title" varchar(100),
  "body" text,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now()),
  "deleted_at" timestamptz DEFAULT (now())
);

CREATE TABLE "article_images" (
  "id" serial PRIMARY KEY,
  "article_id" int,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now()),
  "deleted_at" timestamptz DEFAULT (now())
);

CREATE TABLE "comments" (
  "id" serial PRIMARY KEY,
  "user_id" int,
  "article_id" int,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now()),
  "deleted_at" timestamptz DEFAULT (now())
);

ALTER TABLE "articles" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "article_images" ADD FOREIGN KEY ("article_id") REFERENCES "articles" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("article_id") REFERENCES "articles" ("id");

CREATE INDEX ON "articles" ("id");

CREATE INDEX ON "articles" ("user_id");

CREATE INDEX ON "articles" ("title");

CREATE INDEX ON "articles" ("body");

CREATE INDEX ON "articles" ("created_at");

CREATE INDEX ON "articles" ("updated_at");
