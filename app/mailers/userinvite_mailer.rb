class UserinviteMailer < ApplicationMailer
default from: "praz.josh@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.userinvite_mailer.invitation.subject
  #
  def invitation(email_details)
    @pm = email_details[0]
    @proj = email_details[1]
    to = email_details[2]
    @teammember = email_details[3]
    mail to: to , subject: "Invitation to join Project"
  end
end
