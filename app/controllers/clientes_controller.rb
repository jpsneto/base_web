class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  respond_to :html
  responders :flash

  def index
    @clientes = build_basic_search(Cliente.all).order(:nome)
  end

  def show
  end

  def new
    @cliente = Cliente.new
  end

  def edit
  end

  def create
    @cliente = Cliente.create(cliente_params)
    respond_with @cliente, location: clientes_path
  end

  def update
    @cliente.update(cliente_params)
    respond_with @cliente, location: clientes_path
  end

  def destroy
    @cliente.destroy
    respond_with @cliente, location: clientes_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:nome, :telefone, :email, :identidade, :cpf, :profissao, :referencias_comerciais, :referencias_bancarias, :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :observacoes)
    end
end
