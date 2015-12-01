class Test < ActiveRecord::Base
  belongs_to :user

  has_many :test_questions
  has_many :questions, :through => :test_questions


  validates :user_id, presence: true
end
