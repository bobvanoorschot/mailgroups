require "rails_helper"

RSpec.describe ErrorMailer, type: :mailer do
  describe "list_not_found" do
    let(:mail) { ErrorMailer.list_not_found }

    it "renders the headers" do
      expect(mail.subject).to eq("List not found")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "not_included" do
    let(:mail) { ErrorMailer.not_included }

    it "renders the headers" do
      expect(mail.subject).to eq("Not included")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
