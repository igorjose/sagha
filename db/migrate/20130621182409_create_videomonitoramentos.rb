class CreateVideomonitoramentos < ActiveRecord::Migration
  def change
    create_table :videomonitoramentos do |t|
      t.boolean :possui_cameras
      t.string :pertencente_a
      t.boolean :atual_videomonitoramento
      t.boolean :previsto_videomonitoramento

      t.timestamps
    end
  end
end
