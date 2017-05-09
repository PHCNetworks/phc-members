# This migration comes from phcmembers (originally 20160725153306)
class CreatePhcmembersMemberAddresses < ActiveRecord::Migration[5.1]
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

      t.string :slug

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
