class AddForeignTouserAndplan < ActiveRecord::Migration
  def change
    add_column :users, :plan_id, :integer
	add_foreign_key :users, :plans, column: :plan_id, primary_key: :id
  end
end
