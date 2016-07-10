# This migration comes from phcmembers (originally 20160706184011)
class CreatePhcmembersMembersBusinesses < ActiveRecord::Migration[5.0]
	def change
		create_table :phcmembers_members_businesses do |t|

			t.string :mbcompanyname
			t.string :mbcontactname
			t.string :mbaddressl1
			t.string :mbaddressl2
			t.string :mbcity
			t.string :mbprovince
			t.string :mbcountry
			t.string :mbpostalcode
			t.string :mbphone
			t.string :mbcontactemail
			t.string :mbwebsite

			t.references :main, index: true

			t.string :user_id
			t.string :membership_id
			t.string :oganization_id

			t.timestamps null: false

		end
	end
end
