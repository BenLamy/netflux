class LikesController < ApplicationController
  before_action :set_like, only: [:destroy]
  def index
    @likes = current_user.likes.includes(:movie)
  end

  def show
    @like = Like.find(params[:id])
  end

  def new
    @like = Like.new
  end

  def create
    @like = Like.new
    @like.movie_id = like_params[:movie_id]
    @like.user_id = current_user.id

    if @like.save
      redirect_to movies_path, notice: "Like successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to likes_path, notice: "Like deleted.", status: :see_other
  end

  private

  def like_params
    params.permit(:movie_id)
  end

  def set_like
    @like = Like.find(params[:id])
  end

end
