class Cambio < ActiveRecord::Migration
  def up
    change_table :rutinas do |t|
    t.change :fecha, :datetime
    end
  end
 
  def down
    change_table :rutinas do |t|
      t.change :fecha, :date
    end
  end
end
