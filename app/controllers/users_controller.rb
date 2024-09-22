class UsersController < ApplicationController
  def index
    @num = 1 + 2
    @users = User.all
  end
end
