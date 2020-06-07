class CreateAppts < ActiveRecord::Migration[6.0]
  def change
    create_table :appts do |t|
      t.date :date
      t.time :time
      t.belongs_to :doc, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
