class UserAccountsController < ApplicationController
    get '/users' do
        Account.all.to_json
    end

    post '/users' do
      user = Account.find_by(username:params[:username],password:params[:password])
      user.to_json
    end

    patch '/user/:id' do
      user = Account.find(params[:id])
      user.update(
          username: params[:username],
          password: params[:password])

    end

    delete '/user/:id' do
      @user = Account.find(params[:id])
      @user.destroy
      @user.to_json
    end
end
