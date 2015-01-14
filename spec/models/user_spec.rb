require 'rails_helper'


describe User do
  it "valid with a username and password" do
    user = User.new(
      username: "Brian",
      password: "a"
      )
    expect(user).to be_valid
  end

  it "invalid without a username" do
    user = User.new(username: nil)
    user.valid?
    expect(user.errors[:username]).to include("can't be blank")
  end

  it "invalid without a password" do
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "invalid with a duplicate username" do
    User.create(
      username: "Brian",
      password: "a"
      )
    user = User.new(
      username: "Brian",
      password: "a"
      )
    user.valid?
    expect(user.errors[:username]).to include("has already been taken")
  end
end
