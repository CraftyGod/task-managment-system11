class Task < ApplicationRecord
  belongs_to :user

  # PRIORITIES = [
  #   ['Later', 1],
  #   ['Next', 2],
  #   ['Now', 3]
  # ]

  validates_presence_of :priority, numericality: { greater_than_or_equal_to: 0, less_than: 11, other_than: 0 }
  validates_presence_of :due_date_cannot_be_in_the_past

  def due_date_cannot_be_in_the_past
    errors.add(:due_date, "can't be in the past") if
      !due_date.blank? and due_date < Date.today
  end
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