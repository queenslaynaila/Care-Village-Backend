class JobPostController < ApplicationController

    get '/jobs' do
        Job.all.to_json
    end

    get '/job/:id' do
        Job.find(params[:id]).to_json
    end


end