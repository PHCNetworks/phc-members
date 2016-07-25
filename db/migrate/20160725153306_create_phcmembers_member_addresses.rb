class CreatePhcmembersMemberAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :phcmembers_member_addresses do |t|
      t.string :maaddressl1

      t.timestamps
    end
  end
end
