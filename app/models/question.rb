class Question < ApplicationRecord
  validates :group_id, presence: true
  validates :title, presence: true
  validates :question, presence: true

  belongs_to :user
  has_many :question_tags
  has_many :answers
  belongs_to :group

  scope :get_with_answer_size, -> {select("questions.*, COUNT(answers.id) AS answer_size").joins(:answers).group("answers.question_id")}
  scope :get_with_answers, -> id {includes(:answers).find(id)}
end
