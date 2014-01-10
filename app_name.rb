#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'json'
require 'haml'

require 'sinatra/reloader' if development?
require 'pp' if development?


require_relative 'models/init.rb'


class AppName < Sinatra::Base
  set :bind, '0.0.0.0'
  enable :sessions

  configure :development do
    set :logging, true
    register Sinatra::Reloader
  end

  configure :production do
  end

  # Routes
  get '/' do
    "Dooby dooby doo!"
  end


  # Helpers

  run! if app_file == $0
end
