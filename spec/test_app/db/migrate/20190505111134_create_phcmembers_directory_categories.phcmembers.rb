# This migration comes from phcmembers (originally 20160728230720)
class CreatePhcmembersDirectoryCategories < ActiveRecord::Migration[5.2]
  def change

    create_table :phcmembers_directory_categories do |t|

      t.string :category_name
      t.string :slug

      t.string :user_id
      t.string :org_id

      t.timestamps

    end

  end
end
