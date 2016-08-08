class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post = Post.find(params[:id])
    @genre = Genre.find(params[:id])
  end
end
