class CreateMains < ActiveRecord::Migration[6.0]
  def change
    create_table :mains do |t|
      t.string     :run
      t.string     :bench_press
      t.string     :squat
      t.string     :deadlift
      t.string     :abdominal_muscle
      t.string     :suspension
      t.string     :others
      t.references :user
      t.timestamps
    end
  end
end
