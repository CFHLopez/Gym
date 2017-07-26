class Plan < ActiveRecord::Base
	belongs_to :user
	has_many :alumnos,dependent: :delete_all

	validates :nombre,  presence: true, uniqueness: true
	validates :precio, numericality: true
end
