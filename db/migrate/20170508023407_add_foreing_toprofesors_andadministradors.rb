class AddForeingToprofesorsAndadministradors < ActiveRecord::Migration
  def change
  add_colum :administradors, :profesors_id, :integer
  add_foreign_key :administradors, :profesors, colum: :profesors_id, primary_key: id
  end
end
