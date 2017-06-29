class Asist < ActiveRecord::Base
	belongs_to :clase

	validates :cantidad, presence: true, numericality: true
	validates :clase_id, presence: true
end
