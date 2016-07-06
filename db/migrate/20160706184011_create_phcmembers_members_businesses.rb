class CreatePhcmembersMembersBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :phcmembers_members_businesses do |t|

      t.timestamps
    end
  end
end
