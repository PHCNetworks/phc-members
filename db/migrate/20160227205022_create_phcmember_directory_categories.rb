class CreatePhcmembersDirectoryCategories < ActiveRecord::Migration
	def change
		create_table :phcmembers_directory_categories do |t|

			t.string :catname
			
			t.integer :account_id

			t.timestamps null: false

		end
	end
end
