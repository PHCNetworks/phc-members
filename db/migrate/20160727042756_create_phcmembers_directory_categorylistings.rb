class CreatePhcmembersDirectoryCategorylistings < ActiveRecord::Migration[5.1]
  def change

    create_table :phcmembers_directory_categorylistings do |t|

      t.references :category
      t.references :listing

      t.string :slug

      t.timestamps

    end

  end
end
