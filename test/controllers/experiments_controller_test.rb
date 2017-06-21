require 'test_helper'

class ExperimentsControllerTest < ActionDispatch::IntegrationTest
  test "should get pag1" do
    get experiments_pag1_url
    assert_response :success
  end

  test "should get pag2" do
    get experiments_pag2_url
    assert_response :success
  end

  test "should get pag3" do
    get experiments_pag3_url
    assert_response :success
  end

end
