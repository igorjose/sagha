# encoding: utf-8

class InformacoesGedController < ApplicationController
  before_action :set_informacao_ged, only: [:show, :edit, :update, :destroy]

  # GET /informacoes_ged
  # GET /informacoes_ged.json
  def index
    @informacoes_ged = InformacaoGed.all
  end

  # GET /informacoes_ged/1
  # GET /informacoes_ged/1.json
  def show
  end

  # GET /informacoes_ged/new
  def new
    @informacao_ged = InformacaoGed.new
  end

  # GET /informacoes_ged/1/edit
  def edit
  end

  # POST /informacoes_ged
  # POST /informacoes_ged.json
  def create
    @informacao_ged = InformacaoGed.new(informacao_ged_params)

    respond_to do |format|
      if @informacao_ged.save
        format.html { redirect_to @informacao_ged, notice: 'Informação sobre o GED criada com sucesso.' }
        format.json { render action: 'show', status: :created, location: @informacao_ged }
      else
        format.html { render action: 'new' }
        format.json { render json: @informacao_ged.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacoes_ged/1
  # PATCH/PUT /informacoes_ged/1.json
  def update
    respond_to do |format|
      if @informacao_ged.update(informacao_ged_params)
        format.html { redirect_to @informacao_ged, notice: 'Informação sobre o GED atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @informacao_ged.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacoes_ged/1
  # DELETE /informacoes_ged/1.json
  def destroy
    @informacao_ged.destroy
    respond_to do |format|
      format.html { redirect_to informacoes_ged_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacao_ged
      @informacao_ged = InformacaoGed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacao_ged_params
      params.require(:informacao_ged).permit(:orgao_id, :processo_digitalizacao, :numero_digitalizacao, :documentos_indexados, :hospedado_sepog)
    end
end
