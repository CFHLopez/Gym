class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :nombre
      t.integer :precio

      t.timestamps null: false
    end
  end
end
