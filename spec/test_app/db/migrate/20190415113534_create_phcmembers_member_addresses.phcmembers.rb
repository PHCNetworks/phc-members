# This migration comes from phcmembers (originally 20160728230901)
class CreatePhcmembersMemberAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :phcmembers_member_addresses do |t|

      t.string :mcaddressl1
      t.string :mcaddressl2
      t.string :mccity
      t.string :mcprovince
      t.string :mccountry
      t.string :mcpostalcode
      t.string :mctype

      t.references :profile

      t.string :user_id
      t.string :slug

      t.timestamps

    end
  end
end