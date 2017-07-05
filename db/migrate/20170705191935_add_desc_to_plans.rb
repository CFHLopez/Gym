class AddDescToPlans < ActiveRecord::Migration
  def change
  	add_column :plans, :desc, :string
  end
end
