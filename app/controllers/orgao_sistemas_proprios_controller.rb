class OrgaoSistemasPropriosController < ApplicationController
  before_action :set_orgao_sistema_proprio, only: [:show, :edit, :update, :destroy]

  # GET /orgao_sistemas_proprios
  # GET /orgao_sistemas_proprios.json
  def index
    @orgao_sistemas_proprios = OrgaoSistemaProprio.all
  end

  # GET /orgao_sistemas_proprios/1
  # GET /orgao_sistemas_proprios/1.json
  def show
  end

  # GET /orgao_sistemas_proprios/new
  def new
    @orgao_sistema_proprio = OrgaoSistemaProprio.new
  end

  # GET /orgao_sistemas_proprios/1/edit
  def edit
  end

  # POST /orgao_sistemas_proprios
  # POST /orgao_sistemas_proprios.json
  def create
    @orgao_sistema_proprio = OrgaoSistemaProprio.new(orgao_sistema_proprio_params)

    respond_to do |format|
      if @orgao_sistema_proprio.save
        format.html { redirect_to @orgao_sistema_proprio, notice: 'Órgão sistema próprio criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @orgao_sistema_proprio }
      else
        format.html { render action: 'new' }
        format.json { render json: @orgao_sistema_proprio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orgao_sistemas_proprios/1
  # PATCH/PUT /orgao_sistemas_proprios/1.json
  def update
    respond_to do |format|
      if @orgao_sistema_proprio.update(orgao_sistema_proprio_params)
        format.html { redirect_to @orgao_sistema_proprio, notice: 'Órgão sistema próprio atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orgao_sistema_proprio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgao_sistemas_proprios/1
  # DELETE /orgao_sistemas_proprios/1.json
  def destroy
    @orgao_sistema_proprio.destroy
    respond_to do |format|
      format.html { redirect_to orgao_sistemas_proprios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orgao_sistema_proprio
      @orgao_sistema_proprio = OrgaoSistemaProprio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orgao_sistema_proprio_params
      params.require(:orgao_sistema_proprio).permit(:nome, :descricao, :desenvolvedor, :manutencao, :cod_fonte, :descricao_cod_fonte, :lugar_hospedado, :nr_usuario, :linguagem, :banco, :tem_licenca, :terceiros_acessando, :responsavel_banco, :nivel_confidencialidade, :nivel_integracao, :existe_padroes, :existe_ambiente_homologacao, :existe_backup_diferenciado, :existe_backup, :descricao_backup, :linguagem_banco, :possui_documentos, :descricao_documentos, :possui_manual, :descricao_manual)
    end
end
