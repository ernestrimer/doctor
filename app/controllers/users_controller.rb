class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

def create
  @user = User.create(user_params) #.create or .new?
  if @user.save
    #May need to fix later:
    redirect_to users_path
  else
    render :new
  end
end

def update
  if @user.update(user_params)
    # do something
  else
    render :edit
  end
end

def destroy
  @user.destroy
  redirect_to ##
end 

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :patient_num)
  end

end