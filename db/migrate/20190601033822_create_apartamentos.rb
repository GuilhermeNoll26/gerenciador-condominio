class CreateApartamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :apartamentos do |t|
      t.integer :codApto
      t.integer :numeroApto
      t.string :estadoOcupacao
      t.integer :codProprietario
      t.integer :codInquilino

      t.timestamps
    end
  end
end
