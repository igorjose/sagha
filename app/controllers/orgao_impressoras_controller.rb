class OrgaoImpressorasController < ApplicationController
  before_action :set_orgao_impressora, only: [:show, :edit, :update, :destroy]

  # GET /orgao_impressoras
  # GET /orgao_impressoras.json
  def index
    @orgao_impressoras = OrgaoImpressora.all
  end

  # GET /orgao_impressoras/1
  # GET /orgao_impressoras/1.json
  def show
  end

  # GET /orgao_impressoras/new
  def new
    @orgao_impressora = OrgaoImpressora.new
  end

  # GET /orgao_impressoras/1/edit
  def edit
  end

  # POST /orgao_impressoras
  # POST /orgao_impressoras.json
  def create
    @orgao_impressora = OrgaoImpressora.new(orgao_impressora_params)

    respond_to do |format|
      if @orgao_impressora.save
        format.html { redirect_to @orgao_impressora, notice: 'Órgão impressora criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @orgao_impressora }
      else
        format.html { render action: 'new' }
        format.json { render json: @orgao_impressora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orgao_impressoras/1
  # PATCH/PUT /orgao_impressoras/1.json
  def update
    respond_to do |format|
      if @orgao_impressora.update(orgao_impressora_params)
        format.html { redirect_to @orgao_impressora, notice: 'Órgão impressora atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orgao_impressora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgao_impressoras/1
  # DELETE /orgao_impressoras/1.json
  def destroy
    @orgao_impressora.destroy
    respond_to do |format|
      format.html { redirect_to orgao_impressoras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orgao_impressora
      @orgao_impressora = OrgaoImpressora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orgao_impressora_params
      params.require(:orgao_impressora).permit(:orgao_id, :tipo, :funcionando, :defeituosas, :detalhes_defeituosas, :extras, :emprestadas, :detalhes_emprestadas, :proprias, :alugadas, :em_garantia, :tem_contrato_locacao, :tem_contrato_manutencao, :detalhes_contrato_manutencao, :detalhes_contrato_locacao)
    end
end
