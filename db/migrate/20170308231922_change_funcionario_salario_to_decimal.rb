class ChangeFuncionarioSalarioToDecimal < ActiveRecord::Migration
  def change
    change_column :funcionarios, :salario, :decimal
  end
end
