class AddForeignToplanAndalumno < ActiveRecord::Migration
  def change
  	add_colum :alumnos, :plan_id, :integer
	add_foreign_key :alumnos, :planes, colum: :plan_id, primary key: id
  end
end
