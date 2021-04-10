class Task < ApplicationRecord
  belongs_to :user

  # PRIORITIES = [
  #   ['Later', 1],
  #   ['Next', 2],
  #   ['Now', 3]
  # ]

  validates :priority, numericality: {only_integer: true, greater_than: 0, less_than: 11, in: 1..10}

  def complete!
    if self.completed?
    self.completed = false
  else
    self.completed = true
    end
    save
  end

end