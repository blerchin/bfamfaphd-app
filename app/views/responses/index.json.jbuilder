json.array!(@responses) do |response|
  json.extract! response, :id, :user_id, :question_id, :int_val, :string_val
  json.url response_url(response, format: :json)
end
