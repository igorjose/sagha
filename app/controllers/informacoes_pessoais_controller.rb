# encoding: utf-8

class InformacoesPessoaisController < ApplicationController
  before_action :set_informacao_pessoal, only: [:show, :edit, :update, :destroy]

  # GET /informacoes_pessoais
  # GET /informacoes_pessoais.json
  def index
    if !params[:orgao_id].blank? && current_user.admin
      @informacoes_pessoais = InformacaoPessoal.where(orgao_id: params[:orgao_id])
    elsif current_user.admin
      @informacoes_pessoais = InformacaoPessoal.all
    else
      @informacoes_pessoais = InformacaoPessoal.where(orgao_id: current_user.orgao_id)
    end    
    #@informacoes_pessoais = InformacaoPessoal.all
  end

  # GET /informacoes_pessoais/1
  # GET /informacoes_pessoais/1.json
  def show
  end

  # GET /informacoes_pessoais/new
  def new
    @informacao_pessoal = InformacaoPessoal.new
  end

  # GET /informacoes_pessoais/1/edit
  def edit
  end

  # POST /informacoes_pessoais
  # POST /informacoes_pessoais.json
  def create
    @informacao_pessoal = InformacaoPessoal.new(informacao_pessoal_params)

    respond_to do |format|
      if @informacao_pessoal.save
        format.html { redirect_to @informacao_pessoal, notice: 'Informação pessoal criada com sucesso.' }
        format.json { render action: 'show', status: :created, location: @informacao_pessoal }
      else
        format.html { render action: 'new' }
        format.json { render json: @informacao_pessoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacoes_pessoais/1
  # PATCH/PUT /informacoes_pessoais/1.json
  def update
    respond_to do |format|
      if @informacao_pessoal.update(informacao_pessoal_params)
        format.html { redirect_to @informacao_pessoal, notice: 'Informação pessoal atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @informacao_pessoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacoes_pessoais/1
  # DELETE /informacoes_pessoais/1.json
  def destroy
    @informacao_pessoal.destroy
    respond_to do |format|
      format.html { redirect_to informacoes_pessoais_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacao_pessoal
      @informacao_pessoal = InformacaoPessoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacao_pessoal_params
      params.require(:informacao_pessoal).permit(:orgao_id, :cargo_id, :nome, :telefone, :celular_cooperativo, :celular_pessoal, :email_cooperativo, :email_pessoal, :tipo_contratacao, :empresa, :vigencia_contrato, :pode_renovar, :nivel_escolaridade, :mini_curriculo, :experiencia, :cursos, :certificacoes, :conhecimentos_adicionais, :observacoes)
    end
end
