require 'test_helper'
require 'models/person'

class ValidatePresenceMatcherTest < MiniTest::Unit::TestCase
  test 'must validate presence of a required attribute' do
    assert_must validate_presence_of(:first_name), Person
  end

  test 'must not validate presence of an optional attribute' do
    assert_wont validate_presence_of(:no_required), Person
  end
end
