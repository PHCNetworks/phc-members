# This migration comes from phcmember (originally 20160227212144)
class CreatePhcmemberDirectoryCatlists < ActiveRecord::Migration
	def change
		create_table :phcmember_directory_catlists do |t|

		  t.integer :category_id
		  t.integer :subcategory_id
		  t.integer :listing_id

		  t.timestamps null: false

		end
	end
end
