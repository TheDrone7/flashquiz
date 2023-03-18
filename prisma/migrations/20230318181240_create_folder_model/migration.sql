-- CreateTable
CREATE TABLE "Folder" (
    "id" STRING NOT NULL,
    "name" STRING NOT NULL,
    "timeCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "timeUpdated" TIMESTAMP(3),
    "timeDeleted" TIMESTAMP(3),

    CONSTRAINT "Folder_pkey" PRIMARY KEY ("id")
);
