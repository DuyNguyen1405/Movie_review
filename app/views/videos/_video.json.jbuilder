json.extract! video, :id, :link, :movie_id, :created_at, :updated_at
json.url video_url(video, format: :json)