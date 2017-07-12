class GameChannel < ApplicationCable::Channel


    def subscribed
      stream_from params[:room]
    end

    def receive(data) 
      ActionCable.server.broadcast(params[:room], data)
    end

    def perform(data)
    end


  end

