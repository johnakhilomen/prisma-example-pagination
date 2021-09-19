-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_forensicDetails" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "first_name" TEXT,
    "last_name" TEXT,
    "Criminal" TEXT,
    "Blood_group" TEXT,
    "height" INTEGER,
    "weight" INTEGER,
    "Evidence" TEXT
);
INSERT INTO "new_forensicDetails" ("id", "first_name", "last_name", "Criminal", "Blood_group", "height", "weight", "Evidence") SELECT "id", "first_name", "last_name", "Criminal", "Blood_group", "height", "weight", "Evidence" FROM "forensicDetails";
DROP TABLE "forensicDetails";
ALTER TABLE "new_forensicDetails" RENAME TO "forensicDetails";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
