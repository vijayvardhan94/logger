json.extract! workout_logging, :id, :date, :dailyHeartRate, :float, :hourlyHeartRate, :float, :height, :weight, :steps, :lightlyActiveminutes, :fairlyActiveminutes, :veryActiveminutes, :activityCalories, :sleepStartTime, :sleepEndTime, :created_at, :updated_at
json.url workout_logging_url(workout_logging, format: :json)
