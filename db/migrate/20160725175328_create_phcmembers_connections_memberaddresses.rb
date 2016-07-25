class CreatePhcmembersConnectionsMemberaddresses < ActiveRecord::Migration[5.0]
	def change
		create_table :phcmembers_connections_memberaddresses do |t|

			t.references :profile
			t.references :listing

			t.timestamps

		end
	end
end
