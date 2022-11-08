require 'sinatra'
require_relative "./config/environment"

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser
 
use UserAccountsController
use ClientController
use SitterController
use JobPostController
run ApplicationController # this is the line that starts the server
