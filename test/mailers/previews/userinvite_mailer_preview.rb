# Preview all emails at http://localhost:3000/rails/mailers/userinvite_mailer
class UserinviteMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/userinvite_mailer/invitation
  def invitation
    UserinviteMailer.invitation
  end

end
