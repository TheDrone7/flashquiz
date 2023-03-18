/*
  Warnings:

  - You are about to drop the column `timeDeleted` on the `Choice` table. All the data in the column will be lost.
  - You are about to drop the column `timeDeleted` on the `Folder` table. All the data in the column will be lost.
  - You are about to drop the column `timeDeleted` on the `Question` table. All the data in the column will be lost.
  - You are about to drop the column `timeDeleted` on the `User` table. All the data in the column will be lost.
  - Made the column `timeUpdated` on table `Choice` required. This step will fail if there are existing NULL values in that column.
  - Made the column `timeUpdated` on table `Folder` required. This step will fail if there are existing NULL values in that column.
  - Made the column `timeUpdated` on table `Question` required. This step will fail if there are existing NULL values in that column.
  - Made the column `timeUpdated` on table `User` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Choice" DROP COLUMN "timeDeleted";
ALTER TABLE "Choice" ALTER COLUMN "timeUpdated" SET NOT NULL;

-- AlterTable
ALTER TABLE "Folder" DROP COLUMN "timeDeleted";
ALTER TABLE "Folder" ALTER COLUMN "timeUpdated" SET NOT NULL;

-- AlterTable
ALTER TABLE "Question" DROP COLUMN "timeDeleted";
ALTER TABLE "Question" ALTER COLUMN "timeUpdated" SET NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "timeDeleted";
ALTER TABLE "User" ALTER COLUMN "timeUpdated" SET NOT NULL;
