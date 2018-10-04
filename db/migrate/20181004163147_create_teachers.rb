class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :teacher_username
      t.string :teacher_prefix
      t.string :teacher_prefix
      t.string :teacher_firstname
      t.string :teacher_lastname
      
      t.string :t.timestamps
    end
  end
end
