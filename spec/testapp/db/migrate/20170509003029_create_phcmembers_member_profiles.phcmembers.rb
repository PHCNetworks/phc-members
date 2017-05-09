# This migration comes from phcmembers (originally 20160724220339)
class CreatePhcmembersMemberProfiles < ActiveRecord::Migration[5.1]
  def change

    create_table :phcmembers_member_profiles do |t|

      t.string :mfirstname
      t.string :mlastname
      t.string :mtitle
      t.string :memail
      t.string :mphone
      t.string :mnotes

      t.string :slug

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
