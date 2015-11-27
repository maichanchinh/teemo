json.array!(@question_details) do |question_detail|
  json.extract! question_detail, :id, :question_id, :content
  json.url question_detail_url(question_detail, format: :json)
end
