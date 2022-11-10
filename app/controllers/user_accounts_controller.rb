class UserAccountsController < ApplicationController
    get '/users' do
        Account.all.to_json
    end
    post '/users' do
      user = Account.find_by(username:params[:username],password:params[:password])
      user.to_json
    end
    patch '/users' do
    end


end
