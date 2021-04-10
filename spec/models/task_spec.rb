require 'rails_helper'

RSpec.describe Task, :type => :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.completed = true
    subject.title = nil
    subject.description = "Anything"
    subject.priority = 1
    subject.due_date = DateTime.now + 1.week
    expect(subject).to_not be_valid
  end
end