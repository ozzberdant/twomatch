class CreateImagenComercios < ActiveRecord::Migration
  def change
    create_table :imagen_comercios do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :comercio_id

      t.timestamps
    end
  end
end
