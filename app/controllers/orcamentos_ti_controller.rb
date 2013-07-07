# encoding: utf-8

class OrcamentosTiController < ApplicationController
  before_action :set_orcamento_ti, only: [:show, :edit, :update, :destroy]

  # GET /orcamentos_ti
  # GET /orcamentos_ti.json
  def index
    if !params[:orgao_id].blank? && current_user.admin
      @orcamentos_ti = OrcamentoTi.where(orgao_id: params[:orgao_id])
    elsif current_user.admin
      @orcamentos_ti = OrcamentoTi.all
    else
      @orcamentos_ti = OrcamentoTi.where(orgao_id: current_user.orgao_id)
    end    
    #@orcamentos_ti = OrcamentoTi.all
  end

  # GET /orcamentos_ti/1
  # GET /orcamentos_ti/1.json
  def show
  end

  # GET /orcamentos_ti/new
  def new
    @orcamento_ti = OrcamentoTi.new
  end

  # GET /orcamentos_ti/1/edit
  def edit
  end

  # POST /orcamentos_ti
  # POST /orcamentos_ti.json
  def create
    @orcamento_ti = OrcamentoTi.new(orcamento_ti_params)

    respond_to do |format|
      if @orcamento_ti.save
        format.html { redirect_to @orcamento_ti, notice: 'Orçamento de TI criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @orcamento_ti }
      else
        format.html { render action: 'new' }
        format.json { render json: @orcamento_ti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamentos_ti/1
  # PATCH/PUT /orcamentos_ti/1.json
  def update
    respond_to do |format|
      if @orcamento_ti.update(orcamento_ti_params)
        format.html { redirect_to @orcamento_ti, notice: 'Orçamento de TI atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orcamento_ti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamentos_ti/1
  # DELETE /orcamentos_ti/1.json
  def destroy
    @orcamento_ti.destroy
    respond_to do |format|
      format.html { redirect_to orcamentos_ti_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento_ti
      @orcamento_ti = OrcamentoTi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orcamento_ti_params
      params.require(:orcamento_ti).permit(:orgao_id, :orcamento_ti)
    end
end
