require "application_system_test_case"

class WorkoutLoggingsTest < ApplicationSystemTestCase
  setup do
    @workout_logging = workout_loggings(:one)
  end

  test "visiting the index" do
    visit workout_loggings_url
    assert_selector "h1", text: "Workout Loggings"
  end

  test "creating a Workout logging" do
    visit workout_loggings_url
    click_on "New Workout Logging"

    fill_in "Activitycalories", with: @workout_logging.activityCalories
    fill_in "Dailyheartrate", with: @workout_logging.dailyHeartRate
    fill_in "Date", with: @workout_logging.date
    fill_in "Fairlyactiveminutes", with: @workout_logging.fairlyActiveminutes
    fill_in "Float", with: @workout_logging.float
    fill_in "Height", with: @workout_logging.height
    fill_in "Hourlyheartrate", with: @workout_logging.hourlyHeartRate
    fill_in "Lightlyactiveminutes", with: @workout_logging.lightlyActiveminutes
    fill_in "Sleependtime", with: @workout_logging.sleepEndTime
    fill_in "Sleepstarttime", with: @workout_logging.sleepStartTime
    fill_in "Steps", with: @workout_logging.steps
    fill_in "Veryactiveminutes", with: @workout_logging.veryActiveminutes
    fill_in "Weight", with: @workout_logging.weight
    click_on "Create Workout logging"

    assert_text "Workout logging was successfully created"
    click_on "Back"
  end

  test "updating a Workout logging" do
    visit workout_loggings_url
    click_on "Edit", match: :first

    fill_in "Activitycalories", with: @workout_logging.activityCalories
    fill_in "Dailyheartrate", with: @workout_logging.dailyHeartRate
    fill_in "Date", with: @workout_logging.date
    fill_in "Fairlyactiveminutes", with: @workout_logging.fairlyActiveminutes
    fill_in "Float", with: @workout_logging.float
    fill_in "Height", with: @workout_logging.height
    fill_in "Hourlyheartrate", with: @workout_logging.hourlyHeartRate
    fill_in "Lightlyactiveminutes", with: @workout_logging.lightlyActiveminutes
    fill_in "Sleependtime", with: @workout_logging.sleepEndTime
    fill_in "Sleepstarttime", with: @workout_logging.sleepStartTime
    fill_in "Steps", with: @workout_logging.steps
    fill_in "Veryactiveminutes", with: @workout_logging.veryActiveminutes
    fill_in "Weight", with: @workout_logging.weight
    click_on "Update Workout logging"

    assert_text "Workout logging was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout logging" do
    visit workout_loggings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout logging was successfully destroyed"
  end
end
