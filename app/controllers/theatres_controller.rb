class TheatresController < ApplicationController
	#http_basic_authenticate_with name: "raghav", password: "R@ghav25", except: [:index, :show]

	def index
		@theatres = Theatre.all
	end

	def show
		# binding.pry
        @theatre=Theatre.find(params[:id])
        # @customer =Customer.find(params[:id])
   	end
	
end
