class CreatePhcmembersVersionsCategorylisting < ActiveRecord::Migration[5.1]
  def change
    create_table :phcmembers_versions_categorylistings do |t|
      t.string   :item_type, {:null=>false}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.datetime :created_at
    end
    add_index :phcmembers_versions_categorylistings, %i(item_type item_id), name: 'phcmembers_version_catlist'
  end
end
