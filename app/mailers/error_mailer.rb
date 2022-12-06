class ErrorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.error_mailer.not_included.subject
  #
  def not_included(inbound_email)
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
