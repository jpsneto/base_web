class FornecedorsController < ApplicationController
  before_action :set_fornecedor, only: [:show, :edit, :update, :destroy]

  respond_to :html
  responders :flash

  def index
    @fornecedors = build_basic_search(Fornecedor.all).order(:nome_fantasia)
  end

  def show
  end

  def new
    @fornecedor = Fornecedor.new
  end

  def edit
  end

  def create
    @fornecedor = Fornecedor.create(fornecedor_params)
    respond_with @fornecedor, location: fornecedors_path
  end

  def update
    @fornecedor.update(fornecedor_params)
    respond_with @fornecedor, location: fornecedors_path
  end

  def destroy
    @fornecedor.destroy
    respond_with @fornecedor, location: fornecedors_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_fornecedor
    @fornecedor = Fornecedor.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def fornecedor_params
    params.require(:fornecedor).permit(:nome, :telefone, :email, :identidade, :cpf, :profissao, :referencias_comerciais, :referencias_bancarias, :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :observacoes)
  end
end
