# This migration comes from phcmembers (originally 20160728230830)
class CreatePhcmembersDirectoryCategorylistings < ActiveRecord::Migration[5.2]
  def change
    create_table :phcmembers_directory_categorylistings do |t|

      t.references :category
      t.references :listing

      t.string :user_id
      t.string :slug

      t.timestamps

    end
  end
end
