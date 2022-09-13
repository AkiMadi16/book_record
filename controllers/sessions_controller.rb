get '/sessions/new' do
    erb :'sessions/new'
  end

  post '/sessions' do
    email = params['email']
    password = params['password']
    user = find_user_by_email(email)

    # Use BCrypt to check that the user provided the correct password
    if user && BCrypt::Password.new(user['password_digest']) == password
        #log the user in
        session['user_id'] = user['id']
        
    redirect '/'
    end
end

delete '/sessions' do
    session['user_id'] = nil
    redirect '/'
  end

