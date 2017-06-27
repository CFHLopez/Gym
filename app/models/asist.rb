class Asist < ActiveRecord::Base
	has_many :clases

	validates :cantidad, presence: true, numericality: true
	validates :clase_id, presence: true
end
