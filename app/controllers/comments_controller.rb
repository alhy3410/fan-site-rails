class CommentsController < ApplicationController

  def new
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new(comment_params)
    if @comment.save
      redirect_to movie_path(@comment.movie)
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @comment = Comment.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to movie_path(@movie)
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to movie_path(@movie, @comment)
    else
      render :edit
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:author, :comment)
  end

end
