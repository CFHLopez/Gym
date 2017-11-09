class AddColumnToPlanclase < ActiveRecord::Migration
  def change
	add_column :planclases, :plan_id, :integer
	add_column :planclases, :clase_id, :integer
  end
end
