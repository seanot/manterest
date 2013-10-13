class UpdateDarts < ActiveRecord::Migration
  def change
    add_column :darts, :caption, :string
  end
end
