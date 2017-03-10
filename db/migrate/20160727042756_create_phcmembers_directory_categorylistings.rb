class CreatePhcmembersDirectoryCategorylistings < ActiveRecord::Migration[5.0]
  def change
    
    create_table :phcmembers_directory_categorylistings do |t|
    
      t.references :category
      t.references :listing

      t.string :user_id
      t.string :user_name
      
      t.timestamps
    
    end
    
  end
end