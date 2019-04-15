# This migration comes from phcmembers (originally 20160728231036)
class CreatePhcmembersMemberProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :phcmembers_member_profiles do |t|

      t.string :mfirstname
      t.string :mlastname
      t.string :mtitle
      t.string :memail
      t.string :mphone
      t.string :mnotes

      t.string :user_id
      t.string :slug

      t.timestamps

    end
  end
end
