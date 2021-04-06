class Task < ApplicationRecord
  belongs_to :user

  PRIORITIES = [
    ['Later', 1],
    ['Next', 2],
    ['Now', 3]
  ]

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