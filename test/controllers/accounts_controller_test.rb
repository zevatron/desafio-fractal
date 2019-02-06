require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account = accounts(:one)
    @group = groups(:one)
  end

  test "should get index" do
    get group_accounts_url(@group), as: :json
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post group_accounts_url(@group), params: { account: { athlete_id: @account.athlete_id, group_id: @account.group_id } }, as: :json
    end

    assert_response 201
  end

  test "should show account" do
    get group_account_url(@group,@account), as: :json
    assert_response :success
  end

  test "should update account" do
    patch group_account_url(@group,@account), params: { account: { athlete_id: @account.athlete_id, group_id: @account.group_id } }, as: :json
    assert_response 200
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete group_account_url(@group,@account), as: :json
    end

    assert_response 204
  end
end
