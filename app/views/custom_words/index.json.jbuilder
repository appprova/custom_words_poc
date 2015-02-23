json.array!(@custom_words) do |custom_word|
  json.extract! custom_word, :id, :key, :word, :user_id
  json.url custom_word_url(custom_word, format: :json)
end
