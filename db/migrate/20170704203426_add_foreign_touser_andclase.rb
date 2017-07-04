class AddForeignTouserAndclase < ActiveRecord::Migration
  def change
    add_column :users, :clase_id, :integer
	add_foreign_key :users, :clases, column: :clase_id, primary_key: :id
  end
end
