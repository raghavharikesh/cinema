class AddTheatreToScreen < ActiveRecord::Migration[7.0]
  def change
    add_reference :screens, :theatre, null: false, foreign_key: true
  end
end
