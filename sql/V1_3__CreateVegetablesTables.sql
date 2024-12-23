SET search_path TO "garden.db";

CREATE TABLE IF NOT EXISTS "vegetables.vegetable"(
   Id INT NOT NULL,
   Name VARCHAR(64) NOT NULL
);

-- Add primary key constraint
ALTER TABLE "vegetables.vegetable" ADD CONSTRAINT "vegetables_primary_key" PRIMARY KEY (Id);

-- Unique vegetable name
ALTER TABLE "vegetables.vegetable" ADD CONSTRAINT "vegetables_unique_name" UNIQUE (Name);

-- Create index on name
CREATE INDEX "idx_vegetables_name" ON "vegetables.vegetable" (Name);
