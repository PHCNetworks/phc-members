class CreatePhcmembersModulesDashboards < ActiveRecord::Migration[5.0]
  def change
    create_table :phcmembers_modules_dashboards do |t|

      t.timestamps
    end
  end
end
