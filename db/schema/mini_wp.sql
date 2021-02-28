CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "firstname" varchar(50) NOT NULL,
  "lastname" varchar(50) NOT NULL,
  "birth_date" date NOT NULL,
  "email" varchar NOT NULL UNIQUE,
  "password" varchar NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now()),
  "deleted_at" timestamptz
);

CREATE TABLE "articles" (
  "id" serial PRIMARY KEY,
  "user_id" int NOT NULL,
  "title" varchar(100) NOT NULL,
  "body" text NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now()),
  "deleted_at" timestamptz
);

CREATE TABLE "article_images" (
  "id" serial PRIMARY KEY,
  "article_id" int NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now()),
  "deleted_at" timestamptz
);

CREATE TABLE "comments" (
  "id" serial PRIMARY KEY,
  "user_id" int NOT NULL,
  "article_id" int NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now()),
  "deleted_at" timestamptz
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
