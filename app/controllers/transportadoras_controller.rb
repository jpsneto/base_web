class TransportadorasController < ApplicationController
  before_action :set_transportadora, only: [:show, :edit, :update, :destroy]

  respond_to :html
  responders :flash

  def index
    @transportadoras = build_basic_search(Transportadora.all).order(:nome)
  end

  def show
  end

  def new
    @transportadora = Transportadora.new
  end

  def edit
  end

  def create
    @transportadora = Transportadora.create(transportadora_params)
    respond_with @transportadora, location: transportadoras_path
  end

  def update
    @transportadora.update(transportadora_params)
    respond_with @transportadora, location: transportadoras_path
  end

  def destroy
    @transportadora.destroy
    respond_with @transportadora, location: transportadoras_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_transportadora
    @transportadora = Transportadora.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def transportadora_params
    params.require(:transportadora).permit(:nome, :telefone, :email, :identidade, :cpf, :profissao, :referencias_comerciais, :referencias_bancarias, :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :observacoes)
  end
end
