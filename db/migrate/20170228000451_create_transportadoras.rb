class CreateTransportadoras < ActiveRecord::Migration
  def change
    create_table :transportadoras do |t|
      t.string :nome
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.string :telfone
      t.string :cnpj
      t.string :inscricao_estadual

      t.timestamps null: false
    end
  end
end
