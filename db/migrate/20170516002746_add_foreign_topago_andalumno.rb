class AddForeignTopagoAndalumno < ActiveRecord::Migration
  def change
  	 add_column :alumnos, :pago_id, :integer
	   add_foreign_key :alumnos, :pagos, column: :pago_id, primary_key: :id
  end
end
