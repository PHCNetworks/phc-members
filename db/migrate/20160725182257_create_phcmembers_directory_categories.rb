class CreatePhcmembersDirectoryCategories < ActiveRecord::Migration[5.1]
  def change

    create_table :phcmembers_directory_categories do |t|

      t.string :catname

      t.string :slug

      t.string :user_id

      t.timestamps

    end

  end
end
