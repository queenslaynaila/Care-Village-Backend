class ClientSignUpController < ApplicationController
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
    end
end