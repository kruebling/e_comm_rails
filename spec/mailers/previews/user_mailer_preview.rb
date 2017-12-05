# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/checkout_confirmation
  def checkout_confirmation
    UserMailerMailer.checkout_confirmation
  end

end
