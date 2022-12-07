class MemberMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.member_mailer.send_through.subject
  #
  def send_through(member, mail)
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
