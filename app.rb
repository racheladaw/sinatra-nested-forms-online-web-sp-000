require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/new'
    end

    post '/pirates' do
      binding.pry
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      erb :'pirates/show'
    end

  end
end
