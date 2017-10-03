class AddCreaterToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :creater_id, :integer
  end
end
