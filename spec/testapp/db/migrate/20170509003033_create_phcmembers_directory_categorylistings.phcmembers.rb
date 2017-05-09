# This migration comes from phcmembers (originally 20160727042756)
class CreatePhcmembersDirectoryCategorylistings < ActiveRecord::Migration[5.1]
  def change

    create_table :phcmembers_directory_categorylistings do |t|

      t.references :category
      t.references :listing

      t.string :slug

      t.string :user_id
      t.string :user_name

      t.timestamps

    end

  end
end
