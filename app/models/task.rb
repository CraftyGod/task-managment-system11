class Task < ApplicationRecord
  belongs_to :user

  # PRIORITIES = [
  #   ['Later', 1],
  #   ['Next', 2],
  #   ['Now', 3]
  # ]

  validates_presence_of :priority, presence: true, numericality: { greater_than: 0, less_than: 11, other_than: 0 }



  def complete!
    if self.completed?
    self.completed = false
  else
    self.completed = true
    end
    save
  end

end