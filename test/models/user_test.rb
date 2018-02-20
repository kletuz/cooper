require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(depto: "101", condo: "beta", password: "foobar",
                     password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "depto should be present" do
    @user.depto = "     "
    assert_not @user.valid?
  end

  test "condo should be present" do
    @user.condo = "     "
    assert_not @user.valid?
  end

  test "depto should not be too long" do
    @user.depto = "a" * 6
    assert_not @user.valid?
  end

  test "condo should not be too long" do
    @user.condo = "a" * 11
    assert_not @user.valid?
  end

  test "depto validation should reject invalid deptos" do
    invalid_deptos = %w[1 p A 11 aa AA]
    invalid_deptos.each do |invalid_depto|
      @user.depto = invalid_depto
      assert_not @user.valid?, "#{invalid_depto.inspect} should be valid"
    end
  end

  test "depto should be unique" do
    duplicate_user = @user.dup
    duplicate_user.depto = @user.depto.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
