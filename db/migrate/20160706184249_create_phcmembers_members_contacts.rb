class CreatePhcmembersMembersContacts < ActiveRecord::Migration[5.0]
	def change
		create_table :phcmemberspro_members_contacts do |t|

			t.string :mcaddressl1
			t.string :mcaddressl2
			t.string :mccity
			t.string :mcprovince
			t.string :mccountry
			t.string :mcpostalcode
			t.string :mctype

			t.references :main, index: true

			t.timestamps

		end
	end
end
