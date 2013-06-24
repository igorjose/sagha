class TreinamentosTiController < ApplicationController
  before_action :set_treinamento_ti, only: [:show, :edit, :update, :destroy]

  # GET /treinamentos_ti
  # GET /treinamentos_ti.json
  def index
    @treinamentos_ti = TreinamentoTi.all
  end

  # GET /treinamentos_ti/1
  # GET /treinamentos_ti/1.json
  def show
  end

  # GET /treinamentos_ti/new
  def new
    @treinamento_ti = TreinamentoTi.new
  end

  # GET /treinamentos_ti/1/edit
  def edit
  end

  # POST /treinamentos_ti
  # POST /treinamentos_ti.json
  def create
    @treinamento_ti = TreinamentoTi.new(treinamento_ti_params)

    respond_to do |format|
      if @treinamento_ti.save
        format.html { redirect_to @treinamento_ti, notice: 'Treinamento de TI criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @treinamento_ti }
      else
        format.html { render action: 'new' }
        format.json { render json: @treinamento_ti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treinamentos_ti/1
  # PATCH/PUT /treinamentos_ti/1.json
  def update
    respond_to do |format|
      if @treinamento_ti.update(treinamento_ti_params)
        format.html { redirect_to @treinamento_ti, notice: 'Treinamento de TI atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @treinamento_ti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treinamentos_ti/1
  # DELETE /treinamentos_ti/1.json
  def destroy
    @treinamento_ti.destroy
    respond_to do |format|
      format.html { redirect_to treinamentos_ti_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treinamento_ti
      @treinamento_ti = TreinamentoTi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treinamento_ti_params
      params.require(:treinamento_ti).permit(:treinamento, :empresa, :qtd_pessoa)
    end
end
