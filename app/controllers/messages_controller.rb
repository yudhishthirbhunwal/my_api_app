class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: MessageSerializer.new(messages).serialized_json
  end

  def create
    message = Message.new(message_params)
    if message.save
      render json: MessageSerializer.new(message).serialized_json
    else
      render json: { error: message.errors.full_messages.to_sentence }, status: 422
    end
  end

  private
    def message_params
      params.require(:message).permit(:content, :file)
    end
end
