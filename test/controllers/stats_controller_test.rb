require 'test_helper'

class StatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get stats_url
    assert_response :success
  end

  test "should get new" do
    get new_stat_url
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post stats_url, params: { stat: { b_year: @stat.b_year, c_status: @stat.c_status, cfc_10: @stat.cfc_10, cfc_11: @stat.cfc_11, cfc_12: @stat.cfc_12, cfc_13: @stat.cfc_13, cfc_14: @stat.cfc_14, cfc_1: @stat.cfc_1, cfc_2: @stat.cfc_2, cfc_3: @stat.cfc_3, cfc_4: @stat.cfc_4, cfc_5: @stat.cfc_5, cfc_6: @stat.cfc_6, cfc_7: @stat.cfc_7, cfc_8: @stat.cfc_8, cfc_9: @stat.cfc_9, email: @stat.email, gender: @stat.gender, svo_1: @stat.svo_1, svo_2: @stat.svo_2, svo_3: @stat.svo_3, svo_4: @stat.svo_4, svo_5: @stat.svo_5, svo_6: @stat.svo_6 } }
    end

    assert_redirected_to stat_url(Stat.last)
  end

  test "should show stat" do
    get stat_url(@stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_stat_url(@stat)
    assert_response :success
  end

  test "should update stat" do
    patch stat_url(@stat), params: { stat: { b_year: @stat.b_year, c_status: @stat.c_status, cfc_10: @stat.cfc_10, cfc_11: @stat.cfc_11, cfc_12: @stat.cfc_12, cfc_13: @stat.cfc_13, cfc_14: @stat.cfc_14, cfc_1: @stat.cfc_1, cfc_2: @stat.cfc_2, cfc_3: @stat.cfc_3, cfc_4: @stat.cfc_4, cfc_5: @stat.cfc_5, cfc_6: @stat.cfc_6, cfc_7: @stat.cfc_7, cfc_8: @stat.cfc_8, cfc_9: @stat.cfc_9, email: @stat.email, gender: @stat.gender, svo_1: @stat.svo_1, svo_2: @stat.svo_2, svo_3: @stat.svo_3, svo_4: @stat.svo_4, svo_5: @stat.svo_5, svo_6: @stat.svo_6 } }
    assert_redirected_to stat_url(@stat)
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete stat_url(@stat)
    end

    assert_redirected_to stats_url
  end
end
