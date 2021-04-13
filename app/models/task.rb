class Task < ApplicationRecord
  belongs_to :user

  # PRIORITIES = [
  #   ['Later', 1],
  #   ['Next', 2],
  #   ['Now', 3]
  # ]

  def complete!
    self.completed = completed
  end

  # def complete!
  #   if self.completed?
  #   self.completed = false
  # else
  #   self.completed = true
  #   end
  #   save
  # end

end