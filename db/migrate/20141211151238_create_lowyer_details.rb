class CreateLowyerDetails < ActiveRecord::Migration
  def change
    create_table :lowyer_details do |t|
      t.string :lowyer_code
      t.string :lowyer
      t.float :experience
      t.string :city
      t.float :rate

      t.timestamps
    end
  end
end
