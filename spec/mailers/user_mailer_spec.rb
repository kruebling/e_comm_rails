require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "checkout_confirmation" do
    user = FactoryBot.create(:user)
    let(:mail) { UserMailer.checkout_confirmation(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Checkout Confirmation")
      expect(mail.to).to eq(["test@test.com"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Checkout Confirmation")
    end
  end

end
