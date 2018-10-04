class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string  :student_username
      t.string  :student_firstname
      t.string  :student_lastname

      t.timestamps
    end
  end
end
