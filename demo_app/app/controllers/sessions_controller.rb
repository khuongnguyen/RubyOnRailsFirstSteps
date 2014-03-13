class SessionsController < ApplicationController
  
 def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page. 
      flash[:success] = 'Fine!!' # Not quite right!    
      sign_in user
      redirect_to user
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
 
  def destroy        
    sign_out
    redirect_to store_url
  end

end
