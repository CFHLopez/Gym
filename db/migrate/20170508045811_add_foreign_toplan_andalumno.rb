class AddForeignToplanAndalumno < ActiveRecord::Migration
  def change
	add_colum :alumnos, :plan_id, :integer
	add_foreign_key :alumnos, :plans, colum: :plan_id, primary key: id
  end
end
