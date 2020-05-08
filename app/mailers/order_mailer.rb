class OrderMailer < ApplicationMailer
    
    def new_order_email
        @order = params[:order]
        mail(to: 'praveensam62@gmail.com', subject: 'You got a new order!')
    end

end
