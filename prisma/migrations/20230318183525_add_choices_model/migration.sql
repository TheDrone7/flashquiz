-- CreateTable
CREATE TABLE "Choice" (
    "id" STRING NOT NULL,
    "content" STRING NOT NULL,
    "isCorrect" BOOL NOT NULL,
    "timeCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "timeUpdated" TIMESTAMP(3),
    "timeDeleted" TIMESTAMP(3),
    "questionId" STRING NOT NULL,

    CONSTRAINT "Choice_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Choice" ADD CONSTRAINT "Choice_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "Question"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
