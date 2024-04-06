class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.references :mentor, null: false, foreign_key: true
      t.datetime :schedule_at
      t.references :mentee, null: false, foreign_key: true
      t.references :expertise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
