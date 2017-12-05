class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def signup_confirmation(user)
    @user = user
    @greeting = "Hi"

    mail to: user.email, subject: "Sign Up Confirmation"
  end
end
