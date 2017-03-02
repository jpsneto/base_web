class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :identidade
      t.string :cpf
      t.string :profissao
      t.string :referencias_comerciais
      t.string :referencias_bancarias
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.text :observacoes

      t.timestamps null: false
    end
  end
end
