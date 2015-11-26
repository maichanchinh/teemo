json.array!(@test_tags) do |test_tag|
  json.extract! test_tag, :id, :test_id, :tag_id
  json.url test_tag_url(test_tag, format: :json)
end
