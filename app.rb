require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :piglatinizer
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.to_pit_latin(params[:user_phrase])

    erb :results
  end
end
