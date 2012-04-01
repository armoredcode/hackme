require 'sinatra/base'
class Hackme < Sinatra::Base
# ... app code here ... 

 # start the server if execute this file directly
 run! if app_file == $0
end
