class AddOmniauthToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :provider, :string
    add_column :students, :uid, :string
    add_column :students, :token, :string
    add_column :students, :expires_at, :integer
    add_column :students, :expires, :boolean
  end
end
