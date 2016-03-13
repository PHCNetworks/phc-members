class CreatePhcmembersMembersMains < ActiveRecord::Migration
	def change
		create_table :phcmembers_members_mains do |t|

			t.string :mfirstname
			t.string :mlastname
			t.string :mtitle
			t.string :memail
			t.string :mphone
			t.string :mnotes

			t.timestamps null: false

		end
	end
end
