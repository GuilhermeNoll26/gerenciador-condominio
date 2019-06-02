class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.integer :cod_usuario
      t.string :login
      t.string :senha

      t.timestamps
    end
  end
end
