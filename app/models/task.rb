class Task < ApplicationRecord
  belongs_to :user


  def complete!
    if self.completed?
    self.completed = false
  else
    self.completed = true
    end
    save
  end

end