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

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update_attributes!(order_params)

    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:company, :product)
  end

end