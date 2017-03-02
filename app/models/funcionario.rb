class Funcionario < ActiveRecord::Base
  belongs_to :user
end

# == Schema Information
#
# Table name: funcionarios
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  data_nascimento :date
#  rg              :string
#  cpf             :string
#  salario         :string
#  data_admissao   :date
#  data_demissao   :date
#  dia_pagamento   :string
#  telefone        :string
#  celular         :string
#  logradouro      :string
#  numero          :string
#  complemento     :string
#  bairro          :string
#  cidade          :string
#  estado          :string
#  cep             :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_funcionarios_on_user_id  (user_id)
#
