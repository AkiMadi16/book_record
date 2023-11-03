require './models/user'

get '/users/new' do
    erb :'users/new'
  
  end
  
  post '/users' do
    first_name = params['first_name']
    last_name = params['last_name']
    email = params['email']
    password = params['password']
    
    create_user(first_name, last_name, email, password)
  
    redirect '/'
  end


  post '/user_profile' do
    
    photo_url = params['photo_url']
    bio = params['bio']
    user_id = params['user_id']
    
    create_profile(photo_url, bio, user_id)

    redirect '/'
  end
