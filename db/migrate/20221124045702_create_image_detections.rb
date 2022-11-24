class CreateImageDetections < ActiveRecord::Migration[7.0]
  def change
    create_table :image_detections do |t|
      t.string :url
      t.string :result

      t.timestamps
    end
  end
end
