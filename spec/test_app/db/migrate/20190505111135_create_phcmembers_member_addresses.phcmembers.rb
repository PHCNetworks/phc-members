# This migration comes from phcmembers (originally 20160728230901)
class CreatePhcmembersMemberAddresses < ActiveRecord::Migration[5.2]
  def change

    create_table :phcmembers_member_addresses do |t|

      t.string :address_addressl1
      t.string :address_addressl2
      t.string :address_city
      t.string :address_province
      t.string :address_country
      t.string :address_postalcode
      t.string :address_type

      t.references :profile

      t.string :slug

      t.string :user_id
      t.string :org_id

      t.timestamps

    end

  end
end
