get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/:statement' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  if params[:statement].match(/Statement\..+/)
    @text = eval(params[:statement])
  else
    @text = Statement.create(text: params[:statement])
  end
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  # @text = eval(params[:text])
  # Statement.create(text: params[:text])
  redirect "/#{params[:text]}"
end
