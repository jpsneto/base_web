class Transportadora < ActiveRecord::Base
end

# == Schema Information
#
# Table name: transportadoras
#
#  id                 :integer          not null, primary key
#  nome               :string
#  logradouro         :string
#  numero             :string
#  complemento        :string
#  cidade             :string
#  estado             :string
#  telfone            :string
#  cnpj               :string
#  inscricao_estadual :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
