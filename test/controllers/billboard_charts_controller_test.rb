require 'test_helper'

class BillboardChartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billboard_charts_index_url
    assert_response :success
  end

  test "should get show" do
    get billboard_charts_show_url
    assert_response :success
  end

end
