class AddForeignKeyToClaseAndPlan < ActiveRecord::Migration
  def change
  	add_column :plans, :clase_id, :integer
	add_foreign_key :plans, :clases, column: :clase_id, primary_key: :id
  end
end
