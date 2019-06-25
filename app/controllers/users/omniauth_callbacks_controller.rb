class Users::OmniauthCallbacksController < ApplicationController
	def spotify
     @user = User.from_omniauth(request.env["omniauth.auth"])
     sign_in_and_redirect @user      
  end
end
