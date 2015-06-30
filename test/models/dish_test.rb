require 'test_helper'

class DishTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: 'gs', email: 'a@a.com', password: 'something', password_confirmation: 'something')
    @dish = @user.dishes.build(name: 'omelette', description: 'egg mix', serving: 2)
  end

  test "should be valid" do
    assert @dish.valid?
  end

  test "user id should be present" do
    @dish.user_id = nil
    assert_not @dish.valid?
  end

  test "name should be present" do
    @dish.name = "    "
    assert_not @dish.valid?
  end
end
