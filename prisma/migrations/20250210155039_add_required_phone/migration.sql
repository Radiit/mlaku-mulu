/*
  Warnings:

  - A unique constraint covering the columns `[phone]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `phone` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "User" ADD COLUMN     "isVerified" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "phone" TEXT NOT NULL DEFAULT '0000000000';

ALTER TABLE "User" ALTER COLUMN "phone" DROP DEFAULT;

-- CreateIndex
CREATE UNIQUE INDEX "User_phone_key" ON "User"("phone");
