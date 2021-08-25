class CreatePotentials < ActiveRecord::Migration[6.0]
  def change
    create_table :potentials do |t|
      t.references :user
      t.string     :bench_press
      t.string     :squat
      t.string     :deadlift
      t.timestamps
    end
  end
end
