class AddForeignToprofesorAndclase < ActiveRecord::Migration
  def change
  	add_column :clases, :profesor_id, :integer
	add_foreign_key :clases, :profesors, column: :profesor_id, primary_key: :id
  end
end
