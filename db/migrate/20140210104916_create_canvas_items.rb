class CreateCanvasItems < ActiveRecord::Migration
  def change
    create_table :canvas_items do |t|
      t.string :title

      t.timestamps
    end
  end
end
