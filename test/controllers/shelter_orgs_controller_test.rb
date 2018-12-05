require 'test_helper'

class ShelterOrgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shelter_org = shelter_orgs(:one)
  end

  test "should get index" do
    get shelter_orgs_url, as: :json
    assert_response :success
  end

  test "should create shelter_org" do
    assert_difference('ShelterOrg.count') do
      post shelter_orgs_url, params: { shelter_org: { address: @shelter_org.address, name: @shelter_org.name } }, as: :json
    end

    assert_response 201
  end

  test "should show shelter_org" do
    get shelter_org_url(@shelter_org), as: :json
    assert_response :success
  end

  test "should update shelter_org" do
    patch shelter_org_url(@shelter_org), params: { shelter_org: { address: @shelter_org.address, name: @shelter_org.name } }, as: :json
    assert_response 200
  end

  test "should destroy shelter_org" do
    assert_difference('ShelterOrg.count', -1) do
      delete shelter_org_url(@shelter_org), as: :json
    end

    assert_response 204
  end
end
