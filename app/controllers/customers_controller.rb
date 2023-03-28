class CustomersController < ApplicationController
	 # before_action :logged_in_customer, only: [:edit, :update]
  def new
		# binding.pry
		  @customer=Customer.new
  end
  def index
     @customer=Customer.all
  end

  def show
        @customer = Customer.find(params[:id])
        #@movie=Movie.find(params[:id])#@theatre=Theatre.find(params[:id])#@screen=Screen.find(params[:id])
  end
  def create
       @customer = Customer.new(customer_params)
     # binding.pry
       if @customer.save
       	session[:customer_id]=@customer.id
       	redirect_to theatres_list_path  #customer new page
	      else
          render :new
        end
  end 
  def edit
     @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
     if @customer.update(customer_params)
       redirect_to @customer  # customer show page
     else
       render :edit
     end
  end

  # def destroy
  #   binding.pry
  # @customer=Customer.find(params[:id])
  # @customer.destroy
  # flash[:success] = "Customer deleted"
  # redirect_to customers_path
  # end
  private
    def customer_params
     params.require(:customer).permit(:name, :email, :password)
    end
   
  # def logged_in_customer
  #      #unless logged_in_customer
  #      flash[:danger] = "Please log in."
  #      redirect_to login_path
  # end
end

  
