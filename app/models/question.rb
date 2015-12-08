class Question < ActiveRecord::Base

  enum type: {Radio:10, CheckBox:20, TextAera:30}


  has_many :test_questions
  has_many :tests, :through => :test_questions
  #
  self.inheritance_column = nil

  has_many :question_detail

end
