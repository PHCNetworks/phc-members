class CreatePhcmembersMembersMains < ActiveRecord::Migration[5.0]
	def change

		create_table :phcmemberspro_members_mains do |t|

			t.string :mfirstname
			t.string :mlastname
			t.string :mtitle
			t.string :memail
			t.string :mphone
			t.string :mnotes

			t.string :smtwitter
			t.string :smfacebook
			t.string :smlinkedin

			t.timestamps

		end

	end
end
