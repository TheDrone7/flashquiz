-- AlterTable
ALTER TABLE "folders" ADD COLUMN     "course_id" STRING;

-- CreateTable
CREATE TABLE "courses" (
    "id" STRING NOT NULL,
    "name" STRING NOT NULL,
    "time_created" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "time_updated" TIMESTAMP(3) NOT NULL,
    "instructor_id" STRING NOT NULL,
    "folder_id" STRING NOT NULL,

    CONSTRAINT "courses_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_CourseStudent" (
    "A" STRING NOT NULL,
    "B" STRING NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "courses_folder_id_key" ON "courses"("folder_id");

-- CreateIndex
CREATE UNIQUE INDEX "_CourseStudent_AB_unique" ON "_CourseStudent"("A", "B");

-- CreateIndex
CREATE INDEX "_CourseStudent_B_index" ON "_CourseStudent"("B");

-- AddForeignKey
ALTER TABLE "courses" ADD CONSTRAINT "courses_instructor_id_fkey" FOREIGN KEY ("instructor_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "courses" ADD CONSTRAINT "courses_folder_id_fkey" FOREIGN KEY ("folder_id") REFERENCES "folders"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CourseStudent" ADD CONSTRAINT "_CourseStudent_A_fkey" FOREIGN KEY ("A") REFERENCES "courses"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CourseStudent" ADD CONSTRAINT "_CourseStudent_B_fkey" FOREIGN KEY ("B") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
