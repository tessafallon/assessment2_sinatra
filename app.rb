require 'bundler'
require './lib/cat.rb'
Bundler.require

set :database, "sqlite3:///spacecats.db"

class App < ActiveRecord::Base
end

	get '/' do
		@cats = Cat.all
		erb :index
	end

	# get '/:id' do
	# 	@spacecat = Spacecat.find(params[:id])
	# erb :spacecat_single
	# end
