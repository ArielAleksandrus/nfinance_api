require "test_helper"

class StoretagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storetag = storetags(:one)
  end

  test "should get index" do
    get storetags_url, as: :json
    assert_response :success
  end

  test "should create storetag" do
    assert_difference("Storetag.count") do
      post storetags_url, params: { storetag: { main_tag: @storetag.main_tag, pattern_type: @storetag.pattern_type, score: @storetag.score, sec_tag: @storetag.sec_tag, status: @storetag.status, term: @storetag.term, thir_tag: @storetag.thir_tag } }, as: :json
    end

    assert_response :created
  end

  test "should show storetag" do
    get storetag_url(@storetag), as: :json
    assert_response :success
  end

  test "should update storetag" do
    patch storetag_url(@storetag), params: { storetag: { main_tag: @storetag.main_tag, pattern_type: @storetag.pattern_type, score: @storetag.score, sec_tag: @storetag.sec_tag, status: @storetag.status, term: @storetag.term, thir_tag: @storetag.thir_tag } }, as: :json
    assert_response :success
  end

  test "should destroy storetag" do
    assert_difference("Storetag.count", -1) do
      delete storetag_url(@storetag), as: :json
    end

    assert_response :no_content
  end
end
