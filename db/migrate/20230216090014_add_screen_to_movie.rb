class AddScreenToMovie < ActiveRecord::Migration[7.0]
  def change
    add_reference :movies, :screen, null: false, foreign_key: true
  end
end
