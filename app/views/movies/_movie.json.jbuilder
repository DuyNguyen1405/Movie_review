json.extract! movie, :id, :name, :score, :ranked, :episodes, :status, :rating, :summary, :created_at, :updated_at
json.url movie_url(movie, format: :json)