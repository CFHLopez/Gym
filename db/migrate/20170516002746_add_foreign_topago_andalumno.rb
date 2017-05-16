class AddForeignTopagoAndalumno < ActiveRecord::Migration
  def change
  	add_colum :alumnos, :pago_id, :integer
	add_foreign_key :alumnos, :pagos, colum: :pago_id, primary key: id
  end
end
