# This migration comes from phcmembers (originally 20181221060220)
class CreatePhcmembersJoinTableCategoriesListings < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :listings do |t|

      t.references :category
      t.references :listing

      t.timestamps

    end
  end
end
