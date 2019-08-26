require 'test_helper'

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get item_name:string_url
    assert_response :success
  end

  test "should get effect:integer" do
    get item_effect:integer_url
    assert_response :success
  end

  test "should get references:character" do
    get item_references:character_url
    assert_response :success
  end

end
