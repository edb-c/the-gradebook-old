class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string  :assignment_name

      t.timestamps
    end
  end
end
