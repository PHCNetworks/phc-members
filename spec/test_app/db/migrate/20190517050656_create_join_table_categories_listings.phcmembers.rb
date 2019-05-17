# This migration comes from phcmembers (originally 20190317215659)
class CreateJoinTableCategoriesListings < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :listings do |t|
      # t.index [:category_id, :listing_id]
      # t.index [:listing_id, :category_id]
    end
  end
end
