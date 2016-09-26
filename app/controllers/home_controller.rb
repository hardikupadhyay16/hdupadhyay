class HomeController < ApplicationController
  def index
  end

  def send_mail
  	UserMailer.welcome_email(params[:name],params[:email],params[:desc]).deliver_now
  	flash[:success] = "Thank you to connecting me, I will reach back to you sortly."
  	redirect_to root_path
  end
end
