class SitterSignupController < ApplicationController
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
    end
end