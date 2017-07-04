class AddForeignToclaseAnduser < ActiveRecord::Migration
  def change
    add_column :clases, :user_id, :integer
	add_foreign_key :clases, :plans, column: :user_id, primary_key: :id
  end
end
