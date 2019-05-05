# This migration comes from phcmembers (originally 20160728231011)
class CreatePhcmembersMemberListings < ActiveRecord::Migration[5.2]
  def change

    create_table :phcmembers_member_listings do |t|

      t.string :listing_companyname
      t.string :listing_contactname
      t.string :listing_addressl1
      t.string :listing_addressl2
      t.string :listing_city
      t.string :listing_province
      t.string :listing_country
      t.string :listing_postalcode
      t.string :listing_phone
      t.string :listing_contactemail
      t.string :listing_website

      t.references :profile

      t.string :slug

      t.string :user_id
      t.string :org_id

      t.timestamps

    end

  end
end
