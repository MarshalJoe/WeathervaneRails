class UserMailer < ActionMailer::Base
  default from: "Alert@weathervane.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.alert_mail.subject
  #
  def alert_mail(user)
    @greeting = "Hi"
    @user = user

    mail to: user.email, subject: "Weathervane Alert"
  end
end
