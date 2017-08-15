require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  post '/results' do
    subtot = params[:subtotal]
    perc = params[:percent]
    party = params[:party]
    @subtotal = subtot.to_f
    @percentage = perc.to_f
    @party = party.to_f
    
    @tip = calculate_tip(subtot, perc)
    @final = calculate_total(subtot, @tip)
    @indiv = individual_total(@final, party)
    
    erb :results
  end
  
end
