class CreateMains < ActiveRecord::Migration[6.0]
  def change
    create_table :mains do |t|
      t.references :user
      t.integer    :event_id     , null: false
      t.integer    :weight_id     , null: false
      t.integer    :sets_id     , null: false
      t.integer    :number_id     , null: false
      t.timestamps
    end
  end
end
