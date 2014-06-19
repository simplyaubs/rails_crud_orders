class OrdersController < ApplicationController

  def index
    @order = Order.new
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params)
    if @order.save

      redirect_to orders_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order).permit(:company, :product)
  end

end