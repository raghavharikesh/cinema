module SessionsHelper
	# binding.pry
	def log_in(customer)
    
      session[:customer_id] = customer.id
    end

    def current_customer
       if session[:customer_id]
         @current_customer=@current_customer || Customer.find_by(id: session[:customer_id])
       end
    end

    
end
