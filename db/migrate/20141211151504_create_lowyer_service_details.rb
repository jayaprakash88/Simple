class CreateLowyerServiceDetails < ActiveRecord::Migration
  def change
    create_table :lowyer_service_details do |t|
      t.string :lowyer_code
      t.string :service_code
      t.string :service_name
      t.float :charges
      t.integer :lowyer_detail_id
      t.timestamps
    end
  end
end
