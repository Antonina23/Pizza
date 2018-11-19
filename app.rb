#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizza.db"

class Product < ActiveRecord::Base
end

get '/' do
	# с помощью ActiveRecord получаем все записи из таблицы
	@products = Product.all
	erb :index			
end

get '/about' do
	erb :about			
end

post '/cart' do
	erb 'Hello'
end
