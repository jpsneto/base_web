class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.references :user, index: true, foreign_key: true
      t.date :data_nascimento
      t.string :rg
      t.string :cpf
      t.string :salario
      t.date :data_admissao
      t.date :data_demissao
      t.string :dia_pagamento
      t.string :telefone
      t.string :celular
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps null: false
    end
  end
end
