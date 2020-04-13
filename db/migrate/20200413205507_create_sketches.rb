class CreateSketches < ActiveRecord::Migration[6.0]
  def change
    create_table :sketches do |t|
      t.string :artist
      t.string :description
      t.text :code

      t.timestamps
    end
  end
end
