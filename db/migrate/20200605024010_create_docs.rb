class CreateDocs < ActiveRecord::Migration[6.0]
  def change
    create_table :docs do |t|
      t.string :dr_name
      t.string :dr_num

      t.timestamps
    end
  end
end
