class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :nombre
      t.int :precio

      t.timestamps null: false
    end
  end
end
