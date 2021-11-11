class UserController < ApplicationController
  before_action :authenticate_user!
  def index
    @interactor = User::Index.call
  end

  def new
    @user = User.new
  end

  def create
    interactor = User::Add.call(params: user_params)
    @user = interactor.user
    render :new unless @user.valid?
  end

  def edit
    interactor = User::Show.call(params)
    @user = interactor.user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
