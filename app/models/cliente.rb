class Cliente < ActiveRecord::Base
  validates :nome, presence: true
end

# == Schema Information
#
# Table name: clientes
#
#  id                     :integer          not null, primary key
#  nome                   :string
#  telefone               :string
#  email                  :string
#  identidade             :string
#  cpf                    :string
#  profissao              :string
#  referencias_comerciais :string
#  referencias_bancarias  :string
#  logradouro             :string
#  numero                 :string
#  complemento            :string
#  bairro                 :string
#  cidade                 :string
#  estado                 :string
#  cep                    :string
#  observacoes            :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
