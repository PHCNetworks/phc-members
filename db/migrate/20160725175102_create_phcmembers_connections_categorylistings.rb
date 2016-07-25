class CreatePhcmembersConnectionsCategorylistings < ActiveRecord::Migration[5.0]
	def change
		create_table :phcmembers_connections_categorylistings do |t|

			t.references :category
			t.references :listing

			t.timestamps

		end
	end
end
