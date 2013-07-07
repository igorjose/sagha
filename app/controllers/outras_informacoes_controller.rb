class OutrasInformacoesController < ApplicationController
  before_action :set_outra_informacao, only: [:show, :edit, :update, :destroy]

  # GET /outras_informacoes
  # GET /outras_informacoes.json
  def index
    if !params[:orgao_id].blank? && current_user.admin
      @outras_informacoes = OutraInformacao.where(orgao_id: params[:orgao_id])
    elsif current_user.admin
      @outras_informacoes = OutraInformacao.all
    else
      @outras_informacoes = OutraInformacao.where(orgao_id: current_user.orgao_id)
    end    
    #@outras_informacoes = OutraInformacao.all
  end

  # GET /outras_informacoes/1
  # GET /outras_informacoes/1.json
  def show
  end

  # GET /outras_informacoes/new
  def new
    @outra_informacao = OutraInformacao.new
  end

  # GET /outras_informacoes/1/edit
  def edit
  end

  # POST /outras_informacoes
  # POST /outras_informacoes.json
  def create
    @outra_informacao = OutraInformacao.new(outra_informacao_params)

    respond_to do |format|
      if @outra_informacao.save
        format.html { redirect_to @outra_informacao, notice: 'Outra informacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @outra_informacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @outra_informacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outras_informacoes/1
  # PATCH/PUT /outras_informacoes/1.json
  def update
    respond_to do |format|
      if @outra_informacao.update(outra_informacao_params)
        format.html { redirect_to @outra_informacao, notice: 'Outra informacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @outra_informacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outras_informacoes/1
  # DELETE /outras_informacoes/1.json
  def destroy
    @outra_informacao.destroy
    respond_to do |format|
      format.html { redirect_to outras_informacoes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outra_informacao
      @outra_informacao = OutraInformacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outra_informacao_params
      params.require(:outra_informacao).permit(:orgao_id, :recursos_suficientes, :justificar_recursos, :grau_satisfacao, :principais_necessidades, :duvidas_levantamento)
    end
end
