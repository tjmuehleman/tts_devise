require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "the truth" do
		assert true
	end

	test "save new user without email" do
		user = User.new
		assert_not user.save, "shouldn't be able to save a user w/out email"
	end

	test "save valid user" do
		user = User.new

		user.email = "something@something.com"
		user.password = "password"
		assert user.save
	end

	test "is INVALID password length (assume false)" do
		user = User.new

		user.email = "asdfadsf@gmail.com"
		user.password = "abc123"

		assert_not user.save
	end
	test "is VALID password length (assume true)" do
		user = User.new

		user.email = "asdfadsf@gmail.com"
		user.password = "password"

		assert user.save
	end
end
