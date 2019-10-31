class Jokes_Controller < Application_Controller

  get "/" do
    @jokes = Joke.all
    erb "/jokes/index"
  end


  get "/jokes/new" do
    @Joke = Joke.new
    erb "/jokes/new"
  end

  post "/jokes" do
    binding.pry
  end



end
