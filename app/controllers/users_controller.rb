class UsersController < ApplicationController
  def new
  end

  def create
  	user_created = User.create(name: params[:name], bio: params[:bio]).valid?
    if user_created == false
      redirect_to "/error"
    else
    redirect_to "/users/#{params[:name]}"
    end
  end

  def show
  	@user = User.find_by_name(params[:name])
  end

end
