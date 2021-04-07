class Task < ApplicationRecord
  belongs_to :user

  # PRIORITIES = [
  #   ['Later', 1],
  #   ['Next', 2],
  #   ['Now', 3]
  # ]

  validates_presence_of :priority, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 11, other_than: 0 }


  def complete!
    if self.completed == false
      self.completed = true
      save
    else
      self.completed = false
      save
    end
  end

end