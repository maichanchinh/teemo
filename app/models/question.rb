class Question < ActiveRecord::Base

  QUESTION_TYPE = %w[Radio Checkbox Textarea]
  has_many :test_questions
  has_many :tests, :through => :test_questions

  self.inheritance_column = nil

end
