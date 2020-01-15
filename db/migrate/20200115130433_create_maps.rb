class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :name
      t.jsonb :data

      t.timestamps
    end
  end
end
