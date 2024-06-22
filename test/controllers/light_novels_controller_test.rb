require "test_helper"

class LightNovelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get light_novels_index_url
    assert_response :success
  end

  test "should get show" do
    get light_novels_show_url
    assert_response :success
  end
end
