json.array!(@tests_assigns) do |tests_assign|
  json.extract! tests_assign, :id, :test_id, :user_id
  json.url tests_assign_url(tests_assign, format: :json)
end
