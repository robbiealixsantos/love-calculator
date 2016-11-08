post '/love' do
  @first_name = params[:first_name]
  @second_name = params[:second_name]
  @love = love_matcher(@first_name, @second_name)
  erb :index
end