class SitterController < ApplicationController
    post '/sitterregistration' do
        sitter = Sitter.create(
            first_name: params[:firstname],
            last_name: params[:lastname],
            user_name: params[:username],
            gender: params[:gender],
            email: params[:email],
            phone_number: params[:phonenumber],
            year_of_birth: params[:yearofbirth],
            password: params[:password],
            location: params[:location],
            age: params[:age],
            category_id: nil

        )
        sitter_account = Account.create(
            username: params[:username],
            password: params[:password],
            usertype: "sitter",
            client_id: nil,
            sitter_id: sitter.id
        )
    end
    get '/sitters' do
        Sitter.all.to_json
    end

    get '/sitter/:id' do
        Sitter.find(params[:id]).to_json
    end


end
