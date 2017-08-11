ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])

require 'rubygems'
require 'shotgun'
require 'uri'
require 'pathname'

require 'bcrypt'

require 'pg'
require 'active_record'
require 'logger'

require 'sinatra'
require 'sinatra/reloader' if development?

require 'erb'

require 'faker'
require 'awesome_print'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

configure do
  set :root, APP_ROOT.to_path

  enable :sessions
  set :session_secret, ENV['SESSION_SECRET'] || 'this is a secret shhh'

  set :views, File.join(Sinatra::Application.root, 'app', 'views')
end

Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

require APP_ROOT.join('config', 'database')
