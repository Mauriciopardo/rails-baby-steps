class Goal < ApplicationRecord
  # Rules: Rails refuses to save a goal that breaks them
  validates :title, presence: true
  validates :target, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :achieved, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true

  # How far along the goal is, as a whole number from 0 to 100+
  def progress_percent
    return 0 if target.blank? || achieved.blank?

    (achieved * 100.0 / target).round
  end
end