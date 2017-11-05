json.extract! book, :id, :genre, :page_count, :created_at, :updated_at
json.url book_url(book, format: :json)
