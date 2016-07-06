class CreatePhcmembersMembersMains < ActiveRecord::Migration[5.0]
  def change
    create_table :phcmembers_members_mains do |t|

      t.timestamps
    end
  end
end
