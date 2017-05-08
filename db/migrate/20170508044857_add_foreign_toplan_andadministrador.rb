class AddForeignToplanAndadministrador < ActiveRecord::Migration
  def change
	add_colum :administradors, :plan_id, :integer
	add_foreign_key :administradors, :plans, colum: :plan_id, primary key: id
  end
end
