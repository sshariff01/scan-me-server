class RegistrationController < ApplicationController
  def create
    user = User.create(user_params)

    redirect_to "/barcode/#{user.id}"
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
  end
end
