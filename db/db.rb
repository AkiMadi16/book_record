require 'pg'

def run_sql(sql, sql_params = [])
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'book_records_db'})
    results = db.exec_params(sql, sql_params)
    db.close
    results
  end
  