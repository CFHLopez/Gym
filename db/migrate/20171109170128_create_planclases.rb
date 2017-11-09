class CreatePlanclases < ActiveRecord::Migration
  def change
    create_table :planclases do |t|

      t.timestamps null: false
    end
  end
end
