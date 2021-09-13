class UsersController < ApplicationController
  def show
    

    @user = User.find(params[:id])
    @prototypes = @user.prototypes

    # @comment = Comment.new
    # @comments = @prototype.comments.includes(:user)
  end
end