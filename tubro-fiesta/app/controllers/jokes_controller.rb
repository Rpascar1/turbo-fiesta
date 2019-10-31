class JokesController < ApplicationController

get "/" do
  @jobs = Job.all
  erb "jobs/index"
end


get "/jokes/new" do
@job = Job.new
  erb "/jobs/new"
end

post '/jobs' do
binding.pry
end



end
