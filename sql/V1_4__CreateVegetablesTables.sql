SET search_path TO application;

-- create the table
CREATE TABLE IF NOT EXISTS "application.vegetable"(
   Id INT NOT NULL,
   Name VARCHAR(64) NOT NULL
);

-- Add primary key constraint
ALTER TABLE "application.vegetable" ADD CONSTRAINT "vegetables_primary_key" PRIMARY KEY (Id);

-- Unique vegetable name
ALTER TABLE "application.vegetable" ADD CONSTRAINT "vegetables_unique_name" UNIQUE (Name);

-- Create index on name
CREATE INDEX "idx_vegetables_name" ON "application.vegetable" (Name);
