class ProjetosTiController < ApplicationController
  before_action :set_projeto_ti, only: [:show, :edit, :update, :destroy]

  # GET /projetos_ti
  # GET /projetos_ti.json
  def index
    if !params[:orgao_id].blank? && current_user.admin
      @projetos_ti = ProjetoTi.where(orgao_id: params[:orgao_id])
    elsif current_user.admin
      @projetos_ti = ProjetoTi.all
    else
      @projetos_ti = ProjetoTi.where(orgao_id: current_user.orgao_id)
    end    
    #@projetos_ti = ProjetoTi.all
  end

  # GET /projetos_ti/1
  # GET /projetos_ti/1.json
  def show
  end

  # GET /projetos_ti/new
  def new
    @projeto_ti = ProjetoTi.new
  end

  # GET /projetos_ti/1/edit
  def edit
  end

  # POST /projetos_ti
  # POST /projetos_ti.json
  def create
    @projeto_ti = ProjetoTi.new(projeto_ti_params)

    respond_to do |format|
      if @projeto_ti.save
        format.html { redirect_to @projeto_ti, notice: 'Projeto de TI criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @projeto_ti }
      else
        format.html { render action: 'new' }
        format.json { render json: @projeto_ti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projetos_ti/1
  # PATCH/PUT /projetos_ti/1.json
  def update
    respond_to do |format|
      if @projeto_ti.update(projeto_ti_params)
        format.html { redirect_to @projeto_ti, notice: 'Projeto de TI atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projeto_ti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projetos_ti/1
  # DELETE /projetos_ti/1.json
  def destroy
    @projeto_ti.destroy
    respond_to do |format|
      format.html { redirect_to projetos_ti_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto_ti
      @projeto_ti = ProjetoTi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projeto_ti_params
      params.require(:projeto_ti).permit(:orgao_id, :nome_projeto, :descricao, :gerente_projeto, :coordenador_tecnico, :valor, :prazo, :previsto_orcamento, :observacao)
    end
end
