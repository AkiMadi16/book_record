     
require 'sinatra'
# require 'httparty'
require 'dotenv/load'
require './db/db'
require 'bcrypt'

enable :sessions

require './controllers/books_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

require './helpers/sessions_helper'











