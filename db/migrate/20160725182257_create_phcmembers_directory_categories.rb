class CreatePhcmembersDirectoryCategories < ActiveRecord::Migration[5.0]
  def change

    create_table :phcmembers_directory_categories do |t|

      t.string :catname

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
