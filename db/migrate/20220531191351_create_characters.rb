class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :character
      t.string :stage
      t.string :quote
      t.string :move

      t.timestamps
    end
  end
end
