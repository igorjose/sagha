class OrgaosController < ApplicationController
  before_action :set_orgao, only: [:show, :edit, :update, :destroy]

  # GET /orgaos
  # GET /orgaos.json
  def index
    @orgaos = Orgao.all
  end

  # GET /orgaos/1
  # GET /orgaos/1.json
  def show
  end

  # GET /orgaos/new
  def new
    @orgao = Orgao.new
  end

  # GET /orgaos/1/edit
  def edit
  end

  # POST /orgaos
  # POST /orgaos.json
  def create
    @orgao = Orgao.new(orgao_params)

    respond_to do |format|
      if @orgao.save
        format.html { redirect_to @orgao, notice: 'Órgão criado com sucesso!' }
        format.json { render action: 'show', status: :created, location: @orgao }
      else
        format.html { render action: 'new' }
        format.json { render json: @orgao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orgaos/1
  # PATCH/PUT /orgaos/1.json
  def update
    respond_to do |format|
      if @orgao.update(orgao_params)
        format.html { redirect_to @orgao, notice: 'Órgão editado com sucesso!' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orgao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgaos/1
  # DELETE /orgaos/1.json
  def destroy
    @orgao.destroy
    respond_to do |format|
      format.html { redirect_to orgaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orgao
      @orgao = Orgao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orgao_params
      params.require(:orgao).permit(:nome, :tipo, :vinculo, :endereco, :bairro, :cep, :telefone, :secretario, :email_secretario, :nome_secretaria, :telefone_secretaria, :email_secretaria, :atribuicoes_orgao)
    end
end
