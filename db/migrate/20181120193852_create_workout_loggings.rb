class CreateWorkoutLoggings < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_loggings do |t|
      t.datetime :date
      t.string :dailyHeartRate
      t.string :float
      t.string :hourlyHeartRate
      t.string :float
      t.float :height
      t.float :weight
      t.float :steps
      t.float :lightlyActiveminutes
      t.float :fairlyActiveminutes
      t.float :veryActiveminutes
      t.float :activityCalories
      t.datetime :sleepStartTime
      t.datetime :sleepEndTime

      t.timestamps
    end
  end
end
