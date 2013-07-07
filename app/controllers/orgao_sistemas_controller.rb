# encoding: utf-8

class OrgaoSistemasController < ApplicationController
  before_action :set_orgao_sistema, only: [:show, :edit, :update, :destroy]

  # GET /orgao_sistemas
  # GET /orgao_sistemas.json
  def index
    if !params[:orgao_id].blank? && current_user.admin
      @orgao_sistemas = OrgaoSistema.where(orgao_id: params[:orgao_id])
    elsif current_user.admin
      @orgao_sistemas = OrgaoSistema.all
    else
      @orgao_sistemas = OrgaoSistema.where(orgao_id: current_user.orgao_id)
    end
  end

  # GET /orgao_sistemas/1
  # GET /orgao_sistemas/1.json
  def show
  end

  # GET /orgao_sistemas/new
  def new
    @orgao_sistema = OrgaoSistema.new
  end

  # GET /orgao_sistemas/1/edit
  def edit
  end

  # POST /orgao_sistemas
  # POST /orgao_sistemas.json
  def create
    @orgao_sistema = OrgaoSistema.new(orgao_sistema_params)

    respond_to do |format|
      if @orgao_sistema.save
        format.html { redirect_to @orgao_sistema, notice: 'Órgão sistema criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @orgao_sistema }
      else
        format.html { render action: 'new' }
        format.json { render json: @orgao_sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orgao_sistemas/1
  # PATCH/PUT /orgao_sistemas/1.json
  def update
    respond_to do |format|
      if @orgao_sistema.update(orgao_sistema_params)
        format.html { redirect_to @orgao_sistema, notice: 'Órgão sistema atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orgao_sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgao_sistemas/1
  # DELETE /orgao_sistemas/1.json
  def destroy
    @orgao_sistema.destroy
    respond_to do |format|
      format.html { redirect_to orgao_sistemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orgao_sistema
      @orgao_sistema = OrgaoSistema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orgao_sistema_params
      params.require(:orgao_sistema).permit(:orgao_id, :sistema_id, :nivel_implantacao, :qtd_consulta, :qtd_cadastro)
    end
end
