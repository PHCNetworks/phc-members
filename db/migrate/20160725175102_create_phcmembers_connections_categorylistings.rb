class CreatePhcmembersConnectionsCategorylistings < ActiveRecord::Migration[5.0]
  def change
    create_table :phcmembers_connections_categorylistings do |t|
      t.references :category, foreign_key: true
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
