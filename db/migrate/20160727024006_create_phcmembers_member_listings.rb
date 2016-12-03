class CreatePhcmembersMemberListings < ActiveRecord::Migration[5.0]
	def change

		create_table :phcmembers_member_listings do |t|

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
			
			t.references :profile

			t.timestamps

		end

	end
end
