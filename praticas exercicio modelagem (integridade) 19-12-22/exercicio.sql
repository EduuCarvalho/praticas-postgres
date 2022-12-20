
CREATE TABLE "states" (
  id SERIAL PRIMARY KEY,
  "name" VARCHAR(16) NOT NULL
);

CREATE TABLE "cities" (
    id SERIAL PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL,
    "stateId"  INTEGER NOT NULL REFERENCES "states"("id")
)

CREATE TABLE "custommesAdress" (
  id SERIAL PRIMARY KEY,
  "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
  street VARCHAR(25) NOT NULL,
  "number" INTEGER NOT NULL,
  complement INTEGER,
  "postalCode" VARCHAR(9) NOT NULL,
  "cityId" INTEGER NOT NULL REFERENCES "ciries"("id")

);

CREATE TABLE "customers"(
  id SERIAL PRIMARY KEY,
  "fullName" VARCHAR(30) NOT NULL UNIQUE,
  cpf VARCHAR(11) NOT NULL,
  email VARCHAR(40) NOT NULL UNIQUE,
  "password" VARCHAR(50) NOT NULL,
);

CREATE TABLE "bankAccount"(
  id SERIAL PRIMARY KEY,
  "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
  "accountNumber" TEXT NOT NULL UNIQUE,
  agency INTEGER NOT NULL,
  "openDate" DATE NOT NULL DEFAULT NOW(),
  "closeDate" DATE

CREATE TABLE "customersPhone" (
  id SERIAL PRIMARY KEY,
  customerId INTEGER NOT NULL REFERENCES "customers"("id"),
  "number" VARCHAR (13) NOT NULL,
  "type" 
)

CREATE TYPE "transactionsType" AS ENUM('withdraw','deposit');
CREATE TABLE "transactions"(
  id SERIAL PRIMARY KEY,
  "banckAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
  amount INTEGER NOT NULL,
  "type" "transactionsType" NOT NULL,
  "time" TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
  "description" VARCHAR(100) NOT NULL,
  cancelled BOOLEAN NOT NULL
)

CREATE TABLE "creditCard"(
  id SERIAL PRIMARY KEY,
  "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
  "name" VARCHAR(30) UNIQUE,
  "number" TEXT NOT NULL UNIQUE,
  "secutiryCode" VARCHAR(5) NOT NULL,
  "expirtaionMonth" INTEGER NOT NULL,
"expirationYear" INTEGER NOT NULL,
  "password" VARCHAR(30) NOT NULL,
  "limit" INTEGER
)