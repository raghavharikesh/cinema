class Screen < ApplicationRecord
	belongs_to :theatre
	has_one :movie
	has_many :customers, through: :movies
	validates :name,uniqueness: true, presence: { strict: true,message: "can't leave blank please!"}
end
