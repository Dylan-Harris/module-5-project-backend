class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end
 
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      render json: { user: @user }, status: :accepted
    else
      render json: { error: 'Failed to edit profile' }, status: :not_acceptable
    end
  end
 
  private
 
  def user_params
    params.require(:user).permit(:username, :password, :bio, :avatar)
  end
end
