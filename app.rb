# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/json'

# main app class
class Application < Sinatra::Base
  get '/' do
    result = {
      lol: 'kek'
    }

    json result
  end
end
