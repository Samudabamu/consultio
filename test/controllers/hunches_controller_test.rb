require 'test_helper'

class HunchesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hunches_show_url
    assert_response :success
  end

  test "should get index" do
    get hunches_index_url
    assert_response :success
  end

end
