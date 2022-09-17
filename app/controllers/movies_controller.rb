class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    #redirect_to movie_path
  end


  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    #redirect_to tasks_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :overview, :c)
  end
end

