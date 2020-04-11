class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def products
  end
  
  def createOrder
  
  # @user= User.find(current_user.id)
  
   # may need more here see Tutorial 8
  
  end 
  
  @orders = Order.last
  
  @orderitems = Orderitem.where(order_id: Order.last)
  
  session[:cart] = nil
  
def paid
    # redirect_to "/cart/clear"
    flash[:notice] = 'Transaction Complete'
    @order = Order.last
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
  end

  def paid
    # redirect_to "/cart/clear"

    @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
  end

end
