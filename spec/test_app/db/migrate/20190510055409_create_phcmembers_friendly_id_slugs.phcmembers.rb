# This migration comes from phcmembers (originally 20170509002355)
class CreatePhcmembersFriendlyIdSlugs < ActiveRecord::Migration[5.2]
  def change

    create_table :phcmembers_friendly_id_slugs do |t|

      t.string   :slug,           :null => false
      t.integer  :sluggable_id,   :null => false
      t.string   :sluggable_type, :limit => 50
      t.string   :scope
      t.datetime :created_at

    end

    add_index :phcmembers_friendly_id_slugs, :sluggable_id, name: 'phcm_slugable_id'
    add_index :phcmembers_friendly_id_slugs, [:slug, :sluggable_type], name: 'phcm_slug_slugable_type', length: { slug: 140, sluggable_type: 50 }
    add_index :phcmembers_friendly_id_slugs, [:slug, :sluggable_type, :scope], name: 'phcm_slugable_type_scope', length: { slug: 70, sluggable_type: 50, scope: 70 }, unique: true
    add_index :phcmembers_friendly_id_slugs, :sluggable_type, name: 'phcm_slugable_type'

  end
end
