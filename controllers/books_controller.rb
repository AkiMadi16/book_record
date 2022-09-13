require './models/book'

get '/' do
  books = all_books()
  erb :'books/index', locals: {
          books: books
        }

end


# HTTParty.get("https://omdbapi.com?apikey=#{ENV['OMDB_API_KEY']}&t=jaws").to_s
  

get '/books/new' do
    erb :'books/new'
  end


post '/books' do
    title = params['title']
    img_url = params['image_url']
    author = params['author']
    illustrator = params['illustrator']
    quote = params['quote']
  
    books = create_book(title, image_url, author, illustrator, quote)
    
  
    redirect '/' 
  end
  
  get '/books/:id/edit' do
    id = params['id']

    book = get_book(id)
  
    erb :'books/edit', locals: {
      book: book
    }
  end
  
  put '/books/:id' do
    id = params['id']
    title = params['title']
    img_url = params['image_url']
    author = params['author']
    illustrator = params['illustrator']
    quote = params['quote']
  
    book = update_book(id, title, img_url, author, illustrator, quote)
    
    redirect '/'
  end
  
  
  delete '/books/:id' do
    id = params['id']
  
    delete_book(id)
    redirect '/'
  end
  
  
  
  