class Clase < ActiveRecord::Base
	belongs_to :user
	
	has_many :asists,dependent: :delete_all

	validates :nombre,  presence: true, length: { minimum: 2 }, uniqueness: true
	validates :desc, length: { maximum: 500 }
end
