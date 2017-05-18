class CreatePhcmembersVersionsAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :phcmembers_versions_addresses do |t|
      t.string   :item_type, {:null=>false}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.datetime :created_at
    end
    add_index :phcmembers_versions_addresses, %i(item_type item_id), name: 'phcmembers_version_address'
  end
end
