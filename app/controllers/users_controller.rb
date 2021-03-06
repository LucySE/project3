class UsersController < ApplicationController

  before_action :authenticate_user, except: [:new, :create]

  def current
     render json: current_user, include: [:bookings]
  end


  def new
    @user= User.new #make a blank user object to give to 'form_width'
  end

  def create
    @user = User.create user_params

    #did the above create? actually save to the database or now
    if @user.persisted?

      session[:user_id] = @user.id
      redirect_to root_path

    else
      render :new
    end

  end #end of create


  def index
    @users= User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end

  end #end of class
