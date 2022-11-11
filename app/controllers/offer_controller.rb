class OfferController < ApplicationController
  get '/joboffers' do
    Offer.all.to_json
  end

  get '/offer/:id' do
    Offer.find(params[:id]).to_json
  end

  post '/offer' do
    offer = Offer.create(
      category_id: params[:category_id],
      client_id: params[:client_id],
      sitter_id: params[:sitter_id],
      price: params[:price]
      )
   offer.to_json
  end

  patch '/offer' do
    offer = Offer.update(
      category_id: params[:category_id],
      client_id: params[:client_id],
      sitter_id: params[:sittee_id],
      price: params[:price])
    offer.to_json
  end

  delete '/offer/:id' do
    offer = Offer.find(params[:id])
    offer.destroy
    offer.to_json
  end
end
