class CreatePotentials < ActiveRecord::Migration[6.0]
  def change
    create_table :potentials do |t|
      t.references :user
      t.string     :bench_press, null: false
      t.string     :squat, null: false
      t.string     :deadlift, null: false
      t.timestamps
    end
  end
end
