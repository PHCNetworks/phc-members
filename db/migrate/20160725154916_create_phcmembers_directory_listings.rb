class CreatePhcmembersDirectoryListings < ActiveRecord::Migration[5.0]
  def change
    create_table :phcmembers_directory_listings do |t|

      t.timestamps
    end
  end
end
