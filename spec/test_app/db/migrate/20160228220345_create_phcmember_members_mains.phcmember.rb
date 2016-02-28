# This migration comes from phcmembers (originally 20160227150117)
class CreatePhcmembersMembersMains < ActiveRecord::Migration
	def change
		create_table :phcmembers_members_mains do |t|

			t.string :mfirstname
			t.string :mlastname
			t.string :mtitle
			t.string :memail
			t.string :mphone
			t.string :mnotes

			t.integer :account_id

			t.timestamps null: false

		end
	end
end
