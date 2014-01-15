require 'bundler'
Bundler.require

set :database, "sqlite3:///spacecats.db"

class App < ActiveRecord::Base
end