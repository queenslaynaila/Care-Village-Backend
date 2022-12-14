class ClientController < ApplicationController
    post '/clientregistration' do
        client = Client.create(
            firstname: params[:firstname],
            lastname: params[:lastname],
            username: params[:username],
            location: params[:location],
            email: params[:email],
            password: params[:password]
        )

        client_account = Account.create(
            username: params[:username],
            password: params[:password],
            usertype: "client",
            client_id: client.id,
            sitter_id: nil
        )
        client_account.to_json
    end
    get '/clients' do
        Client.all.to_json
    end

    get '/client/:id' do
        Client.find(params[:id]).to_json
    end

    delete '/client/:id' do
        client= Invoice.find(params[:id])
         client.destroy
        client.to_json
    end

    patch '/client/:id' do
        client = Client.update(
            firstname: params[:firstname],
            lastname: params[:lastname],
            username: params[:username],
            location: params[:location],
            email: params[:email],
            password: params[:password]
        )
    end
end
