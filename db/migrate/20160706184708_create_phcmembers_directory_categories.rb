class CreatePhcmembersDirectoryCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :phcmembers_directory_categories do |t|

      t.timestamps
    end
  end
end
