class JobPostController < ApplicationController

    get '/jobs' do
        Job.all.to_json

    end

    get '/job/:id' do
        Job.find(params[:id]).to_json
    end

    post  '/jobs' do
        job = Job.create(
            headline: params[:headline],
            date_posted: params[:date_posted],
            expires:params[:expires],
            care_needed:params[:care_needed],
            schedule: params[:schedule],
            location: params[:location],
            majorrequirement: params[:majorrequirement],
            sitter_id: params[:sitter_id],
            client_id: params[:client_id],
            status:params[:status])
         job.to_json
    end




end
