class CreatePhcmembersDirectoryCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :phcmembers_directory_categories do |t|

      t.string :catname

      t.string :user_id
      t.string :slug

      t.timestamps

    end
  end
end
