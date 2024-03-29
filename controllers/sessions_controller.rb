require './models/user'

get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  email = params['email']
  password = params['password']
  user = find_user_by_email(email)

    # Use BCrypt to check that the user provided the correct password
  if user && BCrypt::Password.new(user['password_digest']) == password #log the user in
  session['user_id'] = user['id']
       
       
  redirect '/'
  end
end

delete '/sessions' do
  session['user_id'] = nil
    redirect '/'
end

post '/books/:id/comments' do
  comment = params['comment']
  book_id = params['id']
  user_id = session['user_id']

  create_comment(comment, book_id, user_id)

  redirect '/'
end

put '/books/:id/comments' do
  comment = params['comment']
  book_id = params['id']
  user_id = session['user_id']

  update_comment(comment, book_id, user_id)
  redirect '/'
end

delete 'books/:id/comments' do
  comment = params['comment']

  delete_comment['comment']
  redirect '/'
  end

post '/books/:id/likes' do
  book_id = params['id']
  user_id = session['user_id']

  create_like(book_id, user_id)

  redirect '/'
end

  