require 'test_helper'

class ApptsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appts_index_url
    assert_response :success
  end

  test "should get new" do
    get appts_new_url
    assert_response :success
  end

end
