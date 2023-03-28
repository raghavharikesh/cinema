class Employee < ApplicationRecord
	belongs_to :theatre
	validates :EmpCode, numericality: true
	validates :name,:address, uniqueness: true,presence: { strict: true,message: "can't leave blank please!"}
end
