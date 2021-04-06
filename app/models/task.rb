class Task < ApplicationRecord
  belongs_to :user

  PRIORITIES = [
    [1],
    [2],
    [3],
    [4],
    [5]
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