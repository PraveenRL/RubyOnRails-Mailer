# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

    def new_order_email
        order = Order.new(name: "Tomato", email: "praveensam62@gmai.com", address: "1-2-3 Chuo, Tokyo, 333-0000",
        phone: "090-7777-8888", message: "I want to place an order!")

        OrderMailer.with(order: order).new_order_email
    end

end
