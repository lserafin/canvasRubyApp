class CreateCanvasItems < ActiveRecord::Migration
  def change
  	drop_table :canvas_items
    create_table :canvas_items do |t|
      t.string :title

      t.timestamps
    end
  end
end
