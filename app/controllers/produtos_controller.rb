class ProdutosController < ApplicationController
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  respond_to :html
  responders :flash

  def index
    @produtos = build_basic_search(Produto.all).order(:descricao)
  end

  def show
  end

  def new_multiple
    @produtos = []
    3.times do
      @produtos << Produto.new
    end
  end

  def new
    @produto = Produto.new
  end

  def edit
  end

  def create_multiple
    @produtos = params[:produto].values.collect { |produto| Produto.new(produto) }
    @produtos_bck = params[:produto]
    puts "**************PARAMS PRODUTO #{@produtos_bck}"
    puts "**************PARAMS PRODUTO values collect #{@produtos}"
    if @produtos.all?(&:valid?)
      @produtos.each(&:save!)
      redirect_to :action => 'index'
    else
      render :action => 'new_multiple'
    end
  end

  def create
    @produto = Produto.create(produto_params(params))
    respond_with @produto, location: produtos_path
  end

  def update
    @produto.update(produto_params(params))
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
  def produto_params(my_params)
    # params.permit(:descricao, :preco_venda)
    my_params.permit(:descricao, :preco_venda)

    # params.require(:produto).permit(:descricao, :unidade, :fornecedor_id, :fabricante, :attachment,:preco_custo, :margem_lucro, :custo_medio, :preco_venda, :estoque_atual, :estoque_minimo, :observacoes, :cst, :aliquota_ipi, :codigo_ipi, :aliquota_icms, :base_calculo, :peso_bruto, :peso_liquido, :precisao_chegada)
  end

end

