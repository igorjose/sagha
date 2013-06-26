class DemandaVideomonitoramentosController < ApplicationController
  before_action :set_demanda_videomonitoramento, only: [:show, :edit, :update, :destroy]

  # GET /demanda_videomonitoramentos
  # GET /demanda_videomonitoramentos.json
  def index
    @demanda_videomonitoramentos = DemandaVideomonitoramento.all
  end

  # GET /demanda_videomonitoramentos/1
  # GET /demanda_videomonitoramentos/1.json
  def show
  end

  # GET /demanda_videomonitoramentos/new
  def new
    @demanda_videomonitoramento = DemandaVideomonitoramento.new
  end

  # GET /demanda_videomonitoramentos/1/edit
  def edit
  end

  # POST /demanda_videomonitoramentos
  # POST /demanda_videomonitoramentos.json
  def create
    @demanda_videomonitoramento = DemandaVideomonitoramento.new(demanda_videomonitoramento_params)

    respond_to do |format|
      if @demanda_videomonitoramento.save
        format.html { redirect_to @demanda_videomonitoramento, notice: 'Demanda videomonitoramento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @demanda_videomonitoramento }
      else
        format.html { render action: 'new' }
        format.json { render json: @demanda_videomonitoramento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demanda_videomonitoramentos/1
  # PATCH/PUT /demanda_videomonitoramentos/1.json
  def update
    respond_to do |format|
      if @demanda_videomonitoramento.update(demanda_videomonitoramento_params)
        format.html { redirect_to @demanda_videomonitoramento, notice: 'Demanda videomonitoramento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @demanda_videomonitoramento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demanda_videomonitoramentos/1
  # DELETE /demanda_videomonitoramentos/1.json
  def destroy
    @demanda_videomonitoramento.destroy
    respond_to do |format|
      format.html { redirect_to demanda_videomonitoramentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demanda_videomonitoramento
      @demanda_videomonitoramento = DemandaVideomonitoramento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demanda_videomonitoramento_params
      params.require(:demanda_videomonitoramento).permit(:qtd_camera, :obj_videomonitoramento, :infra_monitoramento, :previsto_orcamento)
    end
end
