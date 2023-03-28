class MoviesController < ApplicationController
	
     def index
     @theatre=Theatre.find(params[:theatre_id])
     @screen=Screen.find(params[:screen_id])
     @movie = Movie.all
     end

     def show
     # binding.pry
     @theatre=Theatre.find(params[:theatre_id])
     @screen=Screen.find(params[:screen_id])
     @movie=Movie.find(params[:id])
     end
end
