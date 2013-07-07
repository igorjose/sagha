# encoding: utf-8

class OrgaoSoftwaresController < ApplicationController
  before_action :set_orgao_software, only: [:show, :edit, :update, :destroy]

  # GET /orgao_softwares
  # GET /orgao_softwares.json
  def index
    if !params[:orgao_id].blank? && current_user.admin
      @orgao_softwares = OrgaoSoftware.where(orgao_id: params[:orgao_id])
    elsif current_user.admin
      @orgao_softwares = OrgaoSoftware.all
    else
      @orgao_softwares = OrgaoSoftware.where(orgao_id: current_user.orgao_id)
    end
  end

  # GET /orgao_softwares/1
  # GET /orgao_softwares/1.json
  def show
  end

  # GET /orgao_softwares/new
  def new
    @orgao_software = OrgaoSoftware.new
  end

  # GET /orgao_softwares/1/edit
  def edit
  end

  # POST /orgao_softwares
  # POST /orgao_softwares.json
  def create
    @orgao_software = OrgaoSoftware.new(orgao_software_params)

    respond_to do |format|
      if @orgao_software.save
        format.html { redirect_to @orgao_software, notice: 'Órgão software criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @orgao_software }
      else
        format.html { render action: 'new' }
        format.json { render json: @orgao_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orgao_softwares/1
  # PATCH/PUT /orgao_softwares/1.json
  def update
    respond_to do |format|
      if @orgao_software.update(orgao_software_params)
        format.html { redirect_to @orgao_software, notice: 'Órgão software atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orgao_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgao_softwares/1
  # DELETE /orgao_softwares/1.json
  def destroy
    @orgao_software.destroy
    respond_to do |format|
      format.html { redirect_to orgao_softwares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orgao_software
      @orgao_software = OrgaoSoftware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orgao_software_params
      params.require(:orgao_software).permit(:orgao_id, :software_id, :quantidade)
    end
end
