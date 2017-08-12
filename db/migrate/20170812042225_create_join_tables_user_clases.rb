class CreateJoinTablesUserClases < ActiveRecord::Migration
  def change
    create_join_table :users, :clases do |t|
      t.index [:user_id, :clase_id]
      t.index [:clase_id, :user_id]
    end
  end
end
