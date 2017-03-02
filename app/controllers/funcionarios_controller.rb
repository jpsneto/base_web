class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy]

  respond_to :html
  responders :flash

  def index
    @funcionarios = build_basic_search(Funcionario.all).order(:user_id)
  end

  def show
  end

  def new
    @funcionario = Funcionario.new
  end

  def edit
  end

  def create
    @funcionario = Funcionario.create(funcionario_params)
    respond_with @funcionario, location: funcionarios_path
  end

  def update
    @funcionario.update(funcionario_params)
    respond_with @funcionario, location: funcionarios_path
  end

  def destroy
    @funcionario.destroy
    respond_with @funcionario, location: funcionarios_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_funcionario
    @funcionario = Funcionario.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def funcionario_params
    params.require(:funcionario).permit(:nome, :telefone, :email, :identidade, :cpf, :profissao, :referencias_comerciais, :referencias_bancarias, :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :observacoes)
  end
end
