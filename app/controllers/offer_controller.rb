class OfferController < ApplicationController
  get '/joboffers' do
    Offer.all.to_json
  end

  get '/offer/:id' do
    Offer.find(params[:id]).to_json
  end

  post '/offer' do
    offer = Offer.create(
      title: params[:title],
      name: params[:name],
      sitter_id:params[:sitterid],
      category_id:params[:category_id],
      about: params[:about],
      keyskills: params[:keyskills],
      gender: params[:gender],
      additionalqualification: params[:additionalqualification],
      location: params[:location],
      Languages:params[:Languages],
      workexperience:params[:workexperience],
      email:params[:email],
      phonenumber:params[:phonenumber],
      ratecharged:params[:ratecharged])
   offer.to_json
  end

  patch '/offer' do
    offer = Offer.update(
      title: params[:title],
      name: params[:name],
      about: params[:about],
      keyskills: params[:keyskills],
      gender: params[:gender],
      additionalqualification: params[:additionalqualification],
      location: params[:location],
      Languages:params[:Languages],
      workexperience:params[:workexperience],
      email:params[:email],
      phonenumber:params[:phonenumber],
      ratecharged:params[:ratecharged])
    offer.to_json
  end

  delete '/offer/:id' do
    offer = Offer.find(params[:id])
    offer.destroy
    offer.to_json
  end
end
