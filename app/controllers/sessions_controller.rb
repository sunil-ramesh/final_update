class SessionsController < ApplicationController
 def new

 end


def create

  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])


   session[:user_id]=@user.id
   store_flash_message("logged in succesfully", :success)
   redirect_to action_index_path
 else
  store_flash_message("Invalid email or password", :error)
  redirect_to root_path
end

end

def destroy
 session[:user_id]=nil
 flash[:success]="Loggedout"
 redirect_to root_path
end

end
