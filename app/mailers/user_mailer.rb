class UserMailer < ApplicationMailer
	default from: 'hdupadhyay16@gmail.com'
 
  def welcome_email(name,email,message)
    @name = name
    @email= email
    @message = message
    mail(to: 'hardik.upadhyay1992@gmail.com', subject: 'new visitor from your web')
  end
end
