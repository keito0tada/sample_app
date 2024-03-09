class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @action = params[:action]
  end

  def new
  end
end
