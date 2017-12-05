class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def signup_confirmation(user)
    @user = user
    @greeting = "Hi"

    mail to: user.email, subject: "Sign Up Confirmation"
  end

  def checkout_confirmation(user)
    @user = user
    @greeting = "Checkout Confirmation"

    mail to: user.email, subject: "Checkout Confirmation"
  end
end
