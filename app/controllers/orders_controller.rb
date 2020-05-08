class OrdersController < ApplicationController

    def new
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            OrderMailer.with(order: @order).new_order_email.deliver_now
            flash.now[:notice] = "Order saved"
            render 'new'
        else
            flash.now[:notice] = "Order could not be saved"
            render 'new'
        end
    end

    private 

    def order_params
        params.require(:order).permit(:name, :email, :address, :phone, :message)
    end

end