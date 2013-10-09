class CreateDarts < ActiveRecord::Migration
  def change
    create_table :darts do |t|
      t.string :image_url
      t.string :link_url
      t.integer :user_id

      t.timestamps
    end
  end
end
