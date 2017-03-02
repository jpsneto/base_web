class Fornecedor < ActiveRecord::Base
  validates :nome_fantasia, presence: true
end

# == Schema Information
#
# Table name: fornecedors
#
#  id                    :integer          not null, primary key
#  nome_fantasia         :string
#  contato               :string
#  email                 :string
#  logradouro            :string
#  bairro                :string
#  cidade                :string
#  estado                :string
#  cep                   :string
#  telefone              :string
#  fax                   :string
#  cnpj                  :string
#  inscricao_estadual    :string
#  refenrecias_bancarias :string
#  observacoes           :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
