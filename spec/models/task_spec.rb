require 'rails_helper'

describe Task do
  it "valid with a description" do
    user = User.create( username: "Brian", password: "a")
    task = user.tasks.build(description: "Buy boots")
    expect(task).to be_valid
  end

  it "validates with a description" do
    user = User.create( username: "Brian", password: "a")
    task = user.tasks.build(description: nil)
    task.valid?
    expect(task.errors[:description]).to include("can't be blank")
  end

  it "defaults completeness to false" do
    user = User.create( username: "Brian", password: "a")
    task = user.tasks.create(description: "Buy boots")
    expect(task.completeness).to be false
  end

end
