class CreateJoinTablesPlansClases < ActiveRecord::Migration
  def change
    create_join_table :plans, :clases do |t|
      t.index [:plan_id, :clase_id]
      t.index [:clase_id, :plan_id]
    end
  end
end
