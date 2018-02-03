class RegistrationController < ApplicationController
  def create
    User.create(user_params)

    redirect_to '/barcode/index'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
