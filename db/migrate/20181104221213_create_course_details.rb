class CreateCourseDetails < ActiveRecord::Migration[5.2]
  def change
    create_table    :course_details do |t|
      t.string      :assignment_name
      t.integer     :assignment_grade
      t.belongs_to  :course
      t.belongs_to  :student
      t.belongs_to  :teacher
      t.timestamps
    end
  end
end
