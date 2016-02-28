class CreatePhcmembersMembersListings < ActiveRecord::Migration
	def change
		create_table :phcmembers_members_listings do |t|

			t.string :mlcontactname
			t.string :mlcompanyname
			t.string :mladdressl1
			t.string :mladdressl2
			t.string :mlcity
			t.string :mlprovince
			t.string :mlcountry
			t.string :mlpostalcode
			t.string :mlphone
			t.string :mlwebsite
			t.string :mlemail

			t.references :main, index: true
			t.integer :account_id

			t.timestamps null: false

		end
	end
end
