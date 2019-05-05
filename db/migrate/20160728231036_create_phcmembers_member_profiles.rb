class CreatePhcmembersMemberProfiles < ActiveRecord::Migration[5.2]
  def change

    create_table :phcmembers_member_profiles do |t|

      t.string :member_firstname
      t.string :member_lastname
      t.string :member_title
      t.string :member_email
      t.string :member_phone
      t.string :member_notes

      t.string :slug

      t.string :user_id
      t.string :org_id

      t.timestamps

    end

  end
end
