class CreateTheatres < ActiveRecord::Migration[7.0]
  def change
    create_table :theatres do |t|
      t.string :name

      t.timestamps
    end
  end
end
