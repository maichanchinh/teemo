json.array!(@test_questions) do |test_question|
  json.extract! test_question, :id, :test_id, :question_id, :sort
  json.url test_question_url(test_question, format: :json)
end
