json.extract! cliente, :id, :nome, :telefone, :email, :identidade, :cpf, :profissao, :referencias_comerciais, :referencias_bancarias, :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :observacoes, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)