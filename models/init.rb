#encoding: utf-8
require 'sequel'

db_dir = "/home/app_name/shared/db"
db_fname = 'app_name'
db_path = File.join(db_dir, db_fname)

DB = Sequel.sqlite(db_path)
puts "Opening db at #{db_path}"

ENV['DATABASE_URL'] = "sqlite://#{db_path}"


require_relative 'users'
