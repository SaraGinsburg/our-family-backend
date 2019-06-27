class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  # GET /users
  def index
    @users = User.all
    users_json =  UserSerializer.new(@users).serialized_json
    render json: users_json
    # render json: @users
  end

  # GET /users/1
  def show
    user_json =  UserSerializer.new(@user).serialized_json
    render json: user_json
    # render json: @user
  end

  # POST /users
  def create
  

    @user = User.new(user_params)

    if @user.save
      render json: UserSerializer.new(@user), status: :created
    else
      resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp,  status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username,  :birthdate, :picture, :points_earned, :password)
    end
end
