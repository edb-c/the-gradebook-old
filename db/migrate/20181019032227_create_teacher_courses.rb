class CreateTeacherCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_courses do |t|
      t.belongs_to  :teacher
      t.belongs_to  :course

      t.timestamps
    end
  end
end
