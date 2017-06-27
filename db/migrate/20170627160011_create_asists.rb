class CreateAsists < ActiveRecord::Migration
  def change
    create_table :asists do |t|
      t.datetime :fecha
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
