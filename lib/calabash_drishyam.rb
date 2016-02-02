require 'sinatra'
require 'json'
require 'sinatra/config_file'
require 'sinatra/respond_with'
require 'calabash-cucumber/operations'
require 'htmlentities'

class CalabashDrishyam < Sinatra::Base

  include Calabash::Cucumber::Operations 
    
  ASSETS_PATH_EXPAND = File.expand_path('../calabash_drishyam/assets', __FILE__)
  ASSETS_PATH = "#{ASSETS_PATH_EXPAND}/"
  CALABASH_SCREENSHOT_FILE_NAME = "calabash_symbiote_screenshot"
    
  use Rack::MethodOverride
  set :static, true                             # set up static file routing
  set :public_folder, ASSETS_PATH # set up the static dir (with images/js/css inside)

  set :views,  File.expand_path('../calabash_drishyam/views/', __FILE__) # set up the views dir
  configure :development do
    set :server, %w[thin mongrel webrick]
    set :port, 4321
    enable :logging
  end

  helpers do
    include Rack::Utils
    alias_method :make_valid_string, :escape_html
  end

  get '/' do
    erb :'/home'
  end
    
  def inspect
  end

  def embed(x,y=nil,z=nil)
   puts "Screenshot at #{x}"
  end
  
end