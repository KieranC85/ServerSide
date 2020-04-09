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
  
end
