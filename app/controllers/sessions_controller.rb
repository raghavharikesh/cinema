class SessionsController < ApplicationController
  def new
		# binding.pry
        @customer=Customer.new
   end
   
   def create
  	#binding.pry
  	if customer = Customer.find_by(email: params[:session][:email].downcase,password:params[:session][:password])
        log_in (customer)
        redirect_to theatres_path,notice:"logged in successfully"
    else
        flash[:danger] = 'Invalid email/password combination' # Not quite right!
        render 'new'
    end
   end

   def destroy
		session.delete(:customer_id)
		@current_customer = nil
		redirect_to root_path, notice:"logged out"
	end
end
