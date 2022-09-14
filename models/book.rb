def all_books(current_user)
    
    run_sql("SELECT * FROM books WHERE user_id = $1", [current_user])
end

def create_book(title, img_url, author, illustrator, quote, user_id)

    run_sql("INSERT INTO books(title, image_url, author, illustrator, quote, user_id) VALUES($1, $2, $3, $4, $5, $6)", [title, img_url, author, illustrator, quote, user_id])
end

def get_book(id)
    run_sql("SELECT * FROM books WHERE id = $1", [id])[0]
end

def update_book(id, title, img_url, author, illustrator, quote)
    
    run_sql("UPDATE books SET title = $2, image_url = $3, author = $4, illustrator = $5, quote = $6  WHERE id = $1", [id, title, img_url, author, illustrator, quote])
end

def delete_book(id)
    run_sql("DELETE FROM books WHERE id =$1", [id])
end

# def create_profile(photo_url, bio)
#     run_sql("INSERT INTO users(pho) VALUES($1, $2, $3, $4, $5, $6)", [title, img_url, author, illustrator, quote, user_id])
# end

