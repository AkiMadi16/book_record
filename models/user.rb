def find_user_by_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1", [email])

    #if more than one user, pick the first one, 
    if users.to_a.count > 0
        users[0]
      else
        nil
      end
    end

def create_user(first_name, last_name, email, password)
    password_digest = BCrypt::Password.create(password)

    run_sql("INSERT INTO users(first_name, last_name, email, password_digest) VALUES($1, $2 ,$3, $4)", [first_name, last_name, email, password_digest]) 
end

def find_user_by_id(id)
    run_sql("SELECT * FROM users WHERE id = $1", [id])[0]
end

def create_profile(photo_url, bio, user_id)
  run_sql("UPDATE users SET photo_url = $2, bio = $3  WHERE id = $1", [user_id, photo_url, bio]) 
end
