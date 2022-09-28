CREATE TABLE "students" (
  "id" SERIAL PRIMARY KEY,
  "fname" varchar(25),
  "lname" varchar(25),
  "email" varchar(55)
);

CREATE TABLE "teachers" (
  "id" SERIAL PRIMARY KEY,
  "fname" varchar(25),
  "lname" varchar(25),
  "email" varchar(55),
  "phone" varchar(15)
);

CREATE TABLE "courses" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar(25),
  "courseNumber" varchar(25),
  "student_id" int,
  "teacher_id" int
);

CREATE TABLE "topics" (
  "id" SERIAL PRIMARY KEY,
  "general" varchar(25),
  "language" varchar(25),
  "science" varchar(25),
  "math" varchar(25)
);

CREATE TABLE "courses_students" (
  "courses_id" int
);

ALTER TABLE "courses" ADD FOREIGN KEY ("student_id") REFERENCES "students" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id");
