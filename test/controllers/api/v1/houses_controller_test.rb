require 'test_helper'

class Api::V1::HousesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get api_v1_houses_index_url
    assert_response :success
  end

  test 'should get create' do
    get api_v1_houses_create_url
    assert_response :success
  end

  test 'should get show' do
    get api_v1_houses_show_url
    assert_response :success
  end

  test 'should get destroy' do
    get api_v1_houses_destroy_url
    assert_response :success
  end
end
