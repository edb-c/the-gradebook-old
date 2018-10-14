class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :prefix
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
