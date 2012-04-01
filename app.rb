require 'sinatra/base'
require 'sinatra/flash'


require 'dm-core'
require 'dm-validations'
require 'dm-timestamps'
require 'dm-migrations'

class Hackme < Sinatra::Base

  root_dir = File.dirname(__FILE__)
  app_file = File.join(root_dir, 'app.rb')

  set :environment, ENV['RACK_ENV'].to_sym
  set :static, :false
  set :root, root_dir
  set :app_file, app_file
  set :public_folder, Proc.new { File.join(root, "public") }
  set :views, Proc.new { File.join(root, "views") }
  set :haml, { :format => :html5 }

  register Sinatra::Flash
  use Rack::Session::Pool, :expire_after => 2592000
  set :session_secret, "Th1S 1S a Gr34T s3Cr3tS P4sSphr4s3"

  get '/private' do
    haml :private
  end

  get '/' do
    haml :index
  end



  # start the server if execute this file directly
  run! if app_file == $0
end
