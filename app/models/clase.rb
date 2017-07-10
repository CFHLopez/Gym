class Clase < ActiveRecord::Base
	#una clase tiene uno o mas users
	attr_accessible :nombre, :user_id
	has_many :usersclases
	has_many :users, through: :usersclases

	has_many :asistencias
	has_many :asists

	validates :nombre,  presence: true, length: { minimum: 2 }, uniqueness: true
	validates :desc, length: { maximum: 500 }
end
