class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: 'Thank you for signing up!')
  end

  def make_reservation_email(user, reservation, restaurant)
    @user = user
    mail(to: @user.email, subject: 'Thank you for making a reservation!')
  end
end
