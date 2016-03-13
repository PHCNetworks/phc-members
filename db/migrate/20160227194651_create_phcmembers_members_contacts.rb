class CreatePhcmembersMembersContacts < ActiveRecord::Migration
	def change
		create_table :phcmembers_members_contacts do |t|

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

			t.references :main, index: true

			t.timestamps null: false

		end
	end
end
