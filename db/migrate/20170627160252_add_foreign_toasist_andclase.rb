class AddForeignToasistAndclase < ActiveRecord::Migration
  def change
  	add_column :clases, :asist_id, :integer
	add_foreign_key :clases, :asists, column: :asist_id, primary_key: :id
  end
end
