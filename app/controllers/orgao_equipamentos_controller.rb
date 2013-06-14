class OrgaoEquipamentosController < ApplicationController
  before_action :set_orgao_equipamento, only: [:show, :edit, :update, :destroy]

  # GET /orgao_equipamentos
  # GET /orgao_equipamentos.json
  def index
    @orgao_equipamentos = OrgaoEquipamento.all
  end

  # GET /orgao_equipamentos/1
  # GET /orgao_equipamentos/1.json
  def show
  end

  # GET /orgao_equipamentos/new
  def new
    @orgao_equipamento = OrgaoEquipamento.new
  end

  # GET /orgao_equipamentos/1/edit
  def edit
  end

  # POST /orgao_equipamentos
  # POST /orgao_equipamentos.json
  def create
    @orgao_equipamento = OrgaoEquipamento.new(orgao_equipamento_params)

    respond_to do |format|
      if @orgao_equipamento.save
        format.html { redirect_to @orgao_equipamento, notice: 'Orgao equipamento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @orgao_equipamento }
      else
        format.html { render action: 'new' }
        format.json { render json: @orgao_equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orgao_equipamentos/1
  # PATCH/PUT /orgao_equipamentos/1.json
  def update
    respond_to do |format|
      if @orgao_equipamento.update(orgao_equipamento_params)
        format.html { redirect_to @orgao_equipamento, notice: 'Orgao equipamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orgao_equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgao_equipamentos/1
  # DELETE /orgao_equipamentos/1.json
  def destroy
    @orgao_equipamento.destroy
    respond_to do |format|
      format.html { redirect_to orgao_equipamentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orgao_equipamento
      @orgao_equipamento = OrgaoEquipamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orgao_equipamento_params
      params.require(:orgao_equipamento).permit(:orgao_id, :equipamento_id, :qtd_funcionando, :qtd_defeito, :descricao_defeito, :qtd_extra, :qtd_emprestado, :qtd_alugado, :qtd_garantia)
    end
end
