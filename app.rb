# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/json'

# main app class
class Application < Sinatra::Base
  set :views, 'app/views'

  get '/' do
    redirect '/index.html', 303
  end

  get '/healthz' do
    json({ json: 'ok' })
  end
end
