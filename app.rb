# frozen_string_literal: true

require 'sinatra'
require 'json'

# main app class
class Application < Sinatra::Base
  set :views, 'app/views'

  get '/' do
    redirect '/index.html', 303
  end

  get '/time' do
    erb :time
  end

  get '/healthz' do
    { json: 'ok' }.to_json
  end
end
