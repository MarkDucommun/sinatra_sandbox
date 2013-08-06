get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @text = Statement.find(params[:id])
  erb :get_cool_url
end

get '/:cool_url' do
  @text = Statement.all
  erb :post_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  Statement.create(params[:text])
  redirect "/"
end
