class AddForeignToplanAndadministrador < ActiveRecord::Migration
  def change
  	add_colum :administradores, :plan_id, :integer
	add_foreign_key :administradores, :planes, colum: :plan_id, primary key: id
  end
end
