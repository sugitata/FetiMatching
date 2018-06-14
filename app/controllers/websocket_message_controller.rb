class WebsocketMessageController < WebsocketRails::BaseController
  def recieve_message
    message = message()
  	broadcast_message :show_message, message
  end

  def client_connected
    WebsocketRails.users[params[:client_id]] = connection
  end
end