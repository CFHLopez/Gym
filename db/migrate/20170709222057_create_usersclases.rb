class CreateUsersclases < ActiveRecord::Migration
  def change
    create_table :usersclases do |t|

      t.timestamps null: false
    end
  end
end
