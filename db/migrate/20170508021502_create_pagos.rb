class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.int :monto

      t.timestamps null: false
    end
  end
end
