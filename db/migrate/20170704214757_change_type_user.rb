class ChangeTypeUser < ActiveRecord::Migration
    def up
    change_table :users do |t|
      t.change :rut, :string
    end
  end

  def down
    change_table :users do |t|
      t.change :rut, :integer
    end
  end
end
