class AddForeignToplanAndalumno < ActiveRecord::Migration
  def change
  	 add_column :alumnos, :plan_id, :integer
	   add_foreign_key :alumnos, :plans, column: :plan_id, primary_key: :id
  end
end
