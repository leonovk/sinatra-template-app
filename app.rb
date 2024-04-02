# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/json'
require_relative 'app/hello'

# main class
class Application < Sinatra::Base
  get '/' do
    json Hello.hi
  end

  get '/rand' do
    json Hello.rand
  end
end
