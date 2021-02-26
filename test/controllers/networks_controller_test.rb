require "test_helper"

class NetworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @network = networks(:one)
  end

  test "should get index" do
    get networks_url, as: :json
    assert_response :success
  end

  test "should create network" do
    assert_difference('Network.count') do
      post networks_url, params: { network: { group: @network.group, name: @network.name } }, as: :json
    end

    assert_response 201
  end

  test "should show network" do
    get network_url(@network), as: :json
    assert_response :success
  end

  test "should update network" do
    patch network_url(@network), params: { network: { group: @network.group, name: @network.name } }, as: :json
    assert_response 200
  end

  test "should destroy network" do
    assert_difference('Network.count', -1) do
      delete network_url(@network), as: :json
    end

    assert_response 204
  end
end
