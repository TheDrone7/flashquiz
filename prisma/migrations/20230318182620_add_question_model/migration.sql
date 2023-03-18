-- CreateTable
CREATE TABLE "Question" (
    "id" STRING NOT NULL,
    "title" STRING NOT NULL,
    "content" STRING NOT NULL,
    "timeCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "timeUpdated" TIMESTAMP(3),
    "timeDeleted" TIMESTAMP(3),
    "folderId" STRING NOT NULL,

    CONSTRAINT "Question_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Question" ADD CONSTRAINT "Question_folderId_fkey" FOREIGN KEY ("folderId") REFERENCES "Folder"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
