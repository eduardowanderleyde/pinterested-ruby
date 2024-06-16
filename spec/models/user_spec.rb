# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(
      email: "test@example.com",
      password: "password123",
      full_name: "Test User",
      username: "testuser",
      phone_number: "1234567890"
    )
    expect(user).to be_valid
  end

  it "is not valid without a full_name" do
    user = User.new(
      email: "test@example.com",
      password: "password123",
      username: "testuser",
      phone_number: "1234567890"
    )
    expect(user).to_not be_valid
  end

  it "is not valid without a username" do
    user = User.new(
      email: "test@example.com",
      password: "password123",
      full_name: "Test User",
      phone_number: "1234567890"
    )
    expect(user).to_not be_valid
  end

  it "is not valid without a phone_number" do
    user = User.new(
      email: "test@example.com",
      password: "password123",
      full_name: "Test User",
      username: "testuser"
    )
    expect(user).to_not be_valid
  end

  it "is not valid with a duplicate username" do
    User.create(
      email: "test@example.com",
      password: "password123",
      full_name: "Test User",
      username: "testuser",
      phone_number: "1234567890"
    )
    user = User.new(
      email: "another_test@example.com",
      password: "password456",
      full_name: "Another Test User",
      username: "testuser",
      phone_number: "0987654321"
    )
    expect(user).to_not be_valid
  end
end
