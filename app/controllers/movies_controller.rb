class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def article_params
    params.require(:movie).permit(:title, :body, :photo)
  end

end
