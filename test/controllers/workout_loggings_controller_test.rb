require 'test_helper'

class WorkoutLoggingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_logging = workout_loggings(:one)
  end

  test "should get index" do
    get workout_loggings_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_logging_url
    assert_response :success
  end

  test "should create workout_logging" do
    assert_difference('WorkoutLogging.count') do
      post workout_loggings_url, params: { workout_logging: { activityCalories: @workout_logging.activityCalories, dailyHeartRate: @workout_logging.dailyHeartRate, date: @workout_logging.date, fairlyActiveminutes: @workout_logging.fairlyActiveminutes, float: @workout_logging.float, height: @workout_logging.height, hourlyHeartRate: @workout_logging.hourlyHeartRate, lightlyActiveminutes: @workout_logging.lightlyActiveminutes, sleepEndTime: @workout_logging.sleepEndTime, sleepStartTime: @workout_logging.sleepStartTime, steps: @workout_logging.steps, veryActiveminutes: @workout_logging.veryActiveminutes, weight: @workout_logging.weight } }
    end

    assert_redirected_to workout_logging_url(WorkoutLogging.last)
  end

  test "should show workout_logging" do
    get workout_logging_url(@workout_logging)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_logging_url(@workout_logging)
    assert_response :success
  end

  test "should update workout_logging" do
    patch workout_logging_url(@workout_logging), params: { workout_logging: { activityCalories: @workout_logging.activityCalories, dailyHeartRate: @workout_logging.dailyHeartRate, date: @workout_logging.date, fairlyActiveminutes: @workout_logging.fairlyActiveminutes, float: @workout_logging.float, height: @workout_logging.height, hourlyHeartRate: @workout_logging.hourlyHeartRate, lightlyActiveminutes: @workout_logging.lightlyActiveminutes, sleepEndTime: @workout_logging.sleepEndTime, sleepStartTime: @workout_logging.sleepStartTime, steps: @workout_logging.steps, veryActiveminutes: @workout_logging.veryActiveminutes, weight: @workout_logging.weight } }
    assert_redirected_to workout_logging_url(@workout_logging)
  end

  test "should destroy workout_logging" do
    assert_difference('WorkoutLogging.count', -1) do
      delete workout_logging_url(@workout_logging)
    end

    assert_redirected_to workout_loggings_url
  end
end
