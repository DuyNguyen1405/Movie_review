json.extract! review, :id, :content, :add_at, :score, :user_id, :movie_id, :created_at, :updated_at
json.url review_url(review, format: :json)