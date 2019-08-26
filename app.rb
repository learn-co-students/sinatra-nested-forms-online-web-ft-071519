require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
  get "/" do
    erb :root
  end
    
  get '/new' do
    erb :'pirates/new'
    
  end
  
  
  post "/pirates" do
     @pirates = Pirate.new(params[:pirate])
    params[:pirate][:ships].each do |details|
      Ship.new(details)
    end
    @ships = Ship.all
    
    erb :'pirates/show'
  end
  end
end

# <h3><%= @pirates.ships[1].name %></h3>
# <h3><%= @pirates.ships[1].type %></h3>
# <h3><%= @pirates.ships[1].booty %></h3>

# <h3><%= @pirates.weight %></h3>
# <h3><%= @pirates.height %></h3>
# <h3><%= @pirates.ships[0].name %></h3>
# <h3><%= @pirates.ships[0].type %></h3>
# <h3><%= @pirates.ships[0].booty %></h3>
