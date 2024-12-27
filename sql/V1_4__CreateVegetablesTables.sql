SET search_path TO application;

-- create the table
CREATE TABLE IF NOT EXISTS "vegetable"(
   Id SERIAL PRIMARY KEY ,
   Name VARCHAR(64) NOT NULL
);

-- Unique vegetable name
ALTER TABLE "vegetable" ADD CONSTRAINT "vegetables_unique_name" UNIQUE (Name);

-- Create index on name
CREATE INDEX "idx_vegetables_name" ON "vegetable" (Name);
