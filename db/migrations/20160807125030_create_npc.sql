-- +micrate Up
CREATE TABLE "npcs" ("id" INT NOT NULL, "name" TEXT NOT NULL, "sheet" TEXT, "place_id" INT NOT NULL, "when" TIMESTAMP NOT NULL, "status" BOOLEAN NOT NULL);
CREATE INDEX ON "npcs" ("id" DESC, "when" DESC);

-- +micrate Down
DROP TABLE "npcs";
