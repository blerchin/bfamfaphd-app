json.array!(@questions) do |question|
  json.extract! question, :id, :user_id, :response_id
  json.url question_url(question, format: :json)
end
