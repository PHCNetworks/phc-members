# This migration comes from phcmember (originally 20160227194651)
class CreatePhcmemberMembersContacts < ActiveRecord::Migration
	def change
		create_table :phcmember_members_contacts do |t|

			t.string :mccontactname
			t.string :mccompanyname
			t.string :mcaddressl1
			t.string :mcaddressl2
			t.string :mccity
			t.string :mcprovince
			t.string :mccountry
			t.string :mcpostalcode
			t.string :mcphone
			t.string :mcemail

			t.string :mctype
			t.references :main, index: true
			t.integer :account_id

			t.timestamps null: false

		end
	end
end
