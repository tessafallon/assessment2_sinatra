require 'bundler'
Bundler.require

set :database, "sqlite3:///spacecats.db"

class Cat < ActiveRecord::Base
end

	get '/' do
		@cats = Cat.all()
		erb :index
	end

	# get '/:id' do
	# 	@spacecat = Spacecat.find(params[:id])
	# erb :spacecat_single
	# end
