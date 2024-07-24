# frozen_string_literal: true

class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :post_event

  validates :comment, presence: true

  # scope :latest, -> { order(created_at: :desc)}
  def hidden_comment
    if score < -0.0
      "不適切な可能性のあるコメントのため表示できません（スコア: #{score}）"
    else
      comment
    end
  end
end
