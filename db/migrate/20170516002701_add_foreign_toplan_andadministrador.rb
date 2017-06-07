class AddForeignToplanAndadministrador < ActiveRecord::Migration
  def change
  	 add_column :administradors, :plan_id, :integer
	   add_foreign_key :administradors, :plans, column: :plan_id, primary_key: :id
  end
end
