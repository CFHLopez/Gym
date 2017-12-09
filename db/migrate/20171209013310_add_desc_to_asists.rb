class AddDescToAsists < ActiveRecord::Migration
  def change
    add_column :asists, :desc, :string
  end
end
