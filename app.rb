require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

#shiiit was originally pirate ... so, essentially, you can call your route whatever you want.  When you are doing gets and posts in the app.rb file, you are DEFINING the route, not calling it something that already existed.]
# Really annoying though that I wouldn't have been able to edit this without editing the RSPEC test to accept shiiit as opposed to pirate.

    post '/shiiit' do
      @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |attributes|
      Ship.new(attributes)
    end
    @ships = Ship.all

    erb :'pirates/show'
    end
  end
end