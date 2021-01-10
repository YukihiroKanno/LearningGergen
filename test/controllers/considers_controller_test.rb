require 'test_helper'

class ConsidersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get considers_new_url
    assert_response :success
  end

  test "should get show" do
    get considers_show_url
    assert_response :success
  end

  test "should get index" do
    get considers_index_url
    assert_response :success
  end

  test "should get edit" do
    get considers_edit_url
    assert_response :success
  end

end
