
require 'rails_helper'

RSpec.describe User, :type => :model do

  it 'is database authenticable' do
    user = User.create(
      email: 'test@example.com',
      password: 'password123',
      password_confirmation: 'password123'
    )
    expect(user.valid_password?('password123')).to be_truthy
  end

  it 'is not valid without email' do
    user = User.create(
      firstName: 'qwe',
      lastName: 'rty',
      password: 'password123',
      password_confirmation: 'password123'
    )
    expect(user).to_not be_valid
  end

  subject {
    described_class.new(firstName: "first_name",
                        lastName: "last_name",
                        email: 'test@example.com',
                        password: 'password123',
                        password_confirmation: 'password123'
    )
  }
  it "is not valid without a first name" do
    subject.firstName = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last name" do
    subject.lastName = nil
    expect(subject).to_not be_valid
  end
end

