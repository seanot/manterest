class CreateDartboards < ActiveRecord::Migration
  def change
    create_table :dartboards do |t|
      t.string :caption
      t.integer :board_id
      t.integer :dart_id

      t.timestamps
    end
  end
end
