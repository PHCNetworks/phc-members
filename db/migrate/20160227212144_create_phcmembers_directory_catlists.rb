class CreatePhcmembersDirectoryCatlists < ActiveRecord::Migration
	def change
		create_table :phcmembers_directory_catlists do |t|

			t.integer :category_id
			t.integer :subcategory_id
			t.integer :listing_id

			t.timestamps null: false

		end
	end
end
