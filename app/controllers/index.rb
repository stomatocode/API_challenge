get '/' do

  erb :index
end

post '/viewer' do
  user_name = params[:user_name]
  password  = params[:password]

  @client = Octokit::Client.new(:login => user_name, :password => password)

  @gists = @client.gists(user_name)
  @followers = @client.followers(user_name)
  @repos = @client.repositories(user_name)

  erb :profile_view
end



