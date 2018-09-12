class OrdersController < ApplicationController
  def create
    ticket = Ticket.find(params[:ticket_id])
    if current_user
      @order = Order.find_or_create_by(id: session[:order_id]) do |order|
        order.user = current_user
      end
      session[:order_id] = @order.id
      @message = OrdersService.add_ticket_to_order(ticket, @order)
    else
      session[:ticket_id] = ticket.id
      @role = 'fan'
      render 'devise/registrations/new'
    end
  end
end
