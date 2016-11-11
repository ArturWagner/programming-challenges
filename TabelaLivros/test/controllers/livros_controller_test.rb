require 'test_helper'

class LivrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get livros_index_url
    assert_response :success
  end

end
