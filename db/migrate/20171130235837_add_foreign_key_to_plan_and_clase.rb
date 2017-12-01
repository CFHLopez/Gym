class AddForeignKeyToPlanAndClase < ActiveRecord::Migration
  def change
  	add_column :clases, :plan_id, :integer
	add_foreign_key :clases, :plans, column: :plan_id, primary_key: :id
  end
end
