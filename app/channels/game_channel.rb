class GameChannel < ApplicationCable::Channel

    player_1 = nil
    player_2 = nil

    def subscribed
      stream_from params[:game]
    end

    def receive(data) 
      byebug
      ActionCable.server.broadcast(params[:game], data)
    end

    def perform(data)
    end


  end

