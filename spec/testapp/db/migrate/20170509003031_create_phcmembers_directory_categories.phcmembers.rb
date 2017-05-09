# This migration comes from phcmembers (originally 20160725182257)
class CreatePhcmembersDirectoryCategories < ActiveRecord::Migration[5.1]
  def change

    create_table :phcmembers_directory_categories do |t|

      t.string :catname

      t.string :slug

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
