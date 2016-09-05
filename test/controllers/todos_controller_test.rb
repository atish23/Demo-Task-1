require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get todos_edit_url
    assert_response :success
  end

end
