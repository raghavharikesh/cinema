class AddTheatreToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :theatre, null: false, foreign_key: true
  end
end
