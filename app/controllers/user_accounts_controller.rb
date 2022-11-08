class UserAccountsController < ApplicationController

    get '/users' do 
        Account.all.to_json
    end

    get '/users/clients' do 
    end

    get '/users/sitters' do 
    end

end