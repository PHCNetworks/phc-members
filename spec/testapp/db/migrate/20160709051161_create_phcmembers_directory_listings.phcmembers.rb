# This migration comes from phcmembers (originally 20160706184527)
class CreatePhcmembersDirectoryListings < ActiveRecord::Migration[5.0]
	def change

		create_table :phcmembers_directory_listings do |t|

			t.references :main, index: true
			t.references :business, index: true
			t.references :category, index: true

			t.timestamps

		end

	end
end
