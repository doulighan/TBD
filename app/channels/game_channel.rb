class GameChannel < ApplicationCable::Channel


    def subscribed
      stream_from params[:room]
    end

    def recieve(data) 
      ActionCable.sever.broadcast(params[:room], data)
    end


  end

