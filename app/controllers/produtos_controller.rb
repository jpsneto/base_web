class ProdutosController < ApplicationController
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  respond_to :html
  responders :flash

  def index
    @produtos = build_basic_search(Produto.all).order(:descricao)
  end

  def show
  end

  def new
    @produto = Produto.new
  end

  def edit
  end

  def create
    @produto = Produto.create(produto_params)
    respond_with @produto, location: produtos_path
  end

  def update
    @produto.update(produto_params)
    respond_with @produto, location: produtos_path
  end

  def destroy
    @produto.destroy
    respond_with @produto, location: produtos_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_produto
    @produto = Produto.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def produto_params
    params.require(:produto).permit(:descricao, :unidade, :fornecedor_id, :fabricante, :preco_custo, :margem_lucro, :custo_medio, :preco_venda, :estoque_atual, :estoque_minimo, :observacoes, :cst, :aliquota_ipi, :codigo_ipi, :aliquota_icms, :base_calculo, :peso_bruto, :peso_liquido, :precisao_chegada)
  end
end
