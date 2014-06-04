class UserMailer < ActionMailer::Base
  default from: "tj@weand.co"

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def send_email(blog)
  	@blog = blog
  	mail(to: "tj.muehleman@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end
