CREATE DATABASE "pratica_curso"

CREATE TABLE "students" (
     id SERIAL NOT NULL PRIMARY KEY,
     "name" TEXTO NOT NULL,
     cpf varchar(11) NOT NULL UNIQUE,
     email TEXT NOT NULL UNIQUE,
     
)

CREATE TABLE "class" (
    id SERIAL NOT NULL PRIMARY KEY,
    "classCode" TEXT NOT NULL UNIQUE,
)

CREATE TABLE "project" (
    id SERIAL NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "endDate" DATE NOT NULL,
    "classId" INTEGER NOT NULL,
    "studentsId" INTEGER NOT NULL
    "moduleId" INTEGER NOT NULL,
    "result" TEXT,
)

CREATE TABLE "modules" (
    id SERIAL NOT NULL PRIMARY KEY,
    "name" VARCHAR(30) NOT NULL UNIQUE,
)