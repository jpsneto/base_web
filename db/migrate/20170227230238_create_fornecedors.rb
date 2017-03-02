class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nome_fantasia
      t.string :contato
      t.string :email
      t.string :logradouro
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :fax
      t.string :cnpj
      t.string :inscricao_estadual
      t.string :refenrecias_bancarias
      t.text :observacoes

      t.timestamps null: false
    end
  end
end
