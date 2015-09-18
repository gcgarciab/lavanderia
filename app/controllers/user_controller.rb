class UserController < ApplicationController
  
  def new
  end

  def index
  end

  def create 
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = 'Usuario creado'
  		redirect_to '/user/new'
  	else
  		flash[:notice] = 'Usuario NO creado'
  		render :new
  	end
  end

	private

	def user_params
		params.require(:user).permit(:name, :phone, :email)
	end
end
