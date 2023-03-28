class ScreensController < ApplicationController

    def index
    	@theatre=Theatre.find(params[:theatre_id])
    	
    end

	def show
		# binding.pry
	 @theatre=Theatre.find(params[:theatre_id])
     # @screen=Screen.find(params[:id])
    
	end
end
