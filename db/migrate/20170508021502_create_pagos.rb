class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.integer :monto

      t.timestamps null: false
    end
  end
end
