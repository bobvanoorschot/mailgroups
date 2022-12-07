require "rails_helper"

RSpec.describe MemberMailer, type: :mailer do
  describe "send_through" do
    let(:mail) { MemberMailer.send_through }

    it "renders the headers" do
      expect(mail.subject).to eq("Send through")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
