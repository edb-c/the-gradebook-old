class AddOmniauthToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :provider, :string
    add_column :teachers, :uid, :string
    add_column :teachers, :token, :string
    add_column :teachers, :expires_at, :integer
    add_column :teachers, :expires, :boolean
  end
end
