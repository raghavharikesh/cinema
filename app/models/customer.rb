class Customer < ApplicationRecord
	 belongs_to :theatre,optional:true
	 validates :name, presence: { message: " please! given movie name"}
	 validates :password,presence: true,length: { minimum: 3 }
	 validates :email, presence: true

	 
end	 

