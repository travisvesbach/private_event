class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.datetime :date

      t.timestamps
    end
    add_index :events, :name
  end
end
