class VideomonitoramentosController < ApplicationController
  before_action :set_videomonitoramento, only: [:show, :edit, :update, :destroy]

  # GET /videomonitoramentos
  # GET /videomonitoramentos.json
  def index
    @videomonitoramentos = Videomonitoramento.all
  end

  # GET /videomonitoramentos/1
  # GET /videomonitoramentos/1.json
  def show
  end

  # GET /videomonitoramentos/new
  def new
    @videomonitoramento = Videomonitoramento.new
  end

  # GET /videomonitoramentos/1/edit
  def edit
  end

  # POST /videomonitoramentos
  # POST /videomonitoramentos.json
  def create
    @videomonitoramento = Videomonitoramento.new(videomonitoramento_params)

    respond_to do |format|
      if @videomonitoramento.save
        format.html { redirect_to @videomonitoramento, notice: 'Videomonitoramento criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @videomonitoramento }
      else
        format.html { render action: 'new' }
        format.json { render json: @videomonitoramento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videomonitoramentos/1
  # PATCH/PUT /videomonitoramentos/1.json
  def update
    respond_to do |format|
      if @videomonitoramento.update(videomonitoramento_params)
        format.html { redirect_to @videomonitoramento, notice: 'Videomonitoramento atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @videomonitoramento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videomonitoramentos/1
  # DELETE /videomonitoramentos/1.json
  def destroy
    @videomonitoramento.destroy
    respond_to do |format|
      format.html { redirect_to videomonitoramentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videomonitoramento
      @videomonitoramento = Videomonitoramento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videomonitoramento_params
      params.require(:videomonitoramento).permit(:possui_cameras, :pertencente_a, :atual_videomonitoramento, :previsto_videomonitoramento)
    end
end
