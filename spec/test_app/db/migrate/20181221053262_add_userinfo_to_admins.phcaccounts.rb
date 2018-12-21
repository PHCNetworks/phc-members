# This migration comes from phcaccounts (originally 20180419144437)
class AddUserinfoToAdmins < ActiveRecord::Migration[5.2]
  def change

    add_column :phcaccounts_admins, :firstname, :string
    add_column :phcaccounts_admins, :lastname, :string
    add_column :phcaccounts_admins, :username, :string
    add_column :phcaccounts_admins, :org_id, :string

    add_index :phcaccounts_admins, :firstname
    add_index :phcaccounts_admins, :lastname
    add_index :phcaccounts_admins, :username, unique: true
    add_index :phcaccounts_admins, :org_id, unique: true

  end
end
