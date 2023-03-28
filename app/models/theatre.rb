class Theatre < ApplicationRecord
	has_many :screens
	has_many :employees
	has_many :customers
	validates :name,uniqueness: true, presence: { strict: true,message: "can't leave blank please!"}
end
