class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.integer :unidade
      t.references :fornecedor, index: true, foreign_key: true
      t.string :fabricante
      t.decimal :preco_custo
      t.decimal :margem_lucro
      t.decimal :custo_medio
      t.decimal :preco_venda
      t.string :estoque_atual
      t.string :estoque_minimo
      t.text :observacoes
      t.string :cst
      t.decimal :aliquota_ipi
      t.string :codigo_ipi
      t.decimal :aliquota_icms
      t.decimal :base_calculo
      t.string :peso_bruto
      t.string :peso_liquido
      t.date :precisao_chegada

      t.timestamps null: false
    end
  end
end
