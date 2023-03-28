class Movie < ApplicationRecord
	belongs_to :screen

	validates :name,uniqueness: true
end
