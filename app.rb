require 'sinatra/base'
require 'sinatra/flash'


require 'dm-core'
require 'dm-validations'
require 'dm-timestamps'
require 'dm-migrations'

class Hackme < Sinatra::Base

  get '/' do
    "Hello world"
  end

  

  # start the server if execute this file directly
  run! if app_file == $0
end
