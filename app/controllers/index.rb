get '/' do

  erb :index
end

post '/viewer' do
  user_name = params[:user_name]
  password  = params[:password]

  @client = Octokit::Client.new(:login => user_name, :password => password)

  @gists = @client.public_gists


  erb :profile_view
end

