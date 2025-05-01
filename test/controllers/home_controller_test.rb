require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get stress_cpu" do
    get home_stress_cpu_url
    assert_response :success
  end
end
