class InformacaoSitesController < ApplicationController
  before_action :set_informacao_site, only: [:show, :edit, :update, :destroy]

  # GET /informacao_sites
  # GET /informacao_sites.json
  def index
    @informacao_sites = InformacaoSite.all
  end

  # GET /informacao_sites/1
  # GET /informacao_sites/1.json
  def show
  end

  # GET /informacao_sites/new
  def new
    @informacao_site = InformacaoSite.new
  end

  # GET /informacao_sites/1/edit
  def edit
  end

  # POST /informacao_sites
  # POST /informacao_sites.json
  def create
    @informacao_site = InformacaoSite.new(informacao_site_params)

    respond_to do |format|
      if @informacao_site.save
        format.html { redirect_to @informacao_site, notice: 'Informação site criada com sucesso.' }
        format.json { render action: 'show', status: :created, location: @informacao_site }
      else
        format.html { render action: 'new' }
        format.json { render json: @informacao_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacao_sites/1
  # PATCH/PUT /informacao_sites/1.json
  def update
    respond_to do |format|
      if @informacao_site.update(informacao_site_params)
        format.html { redirect_to @informacao_site, notice: 'Informação site atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @informacao_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacao_sites/1
  # DELETE /informacao_sites/1.json
  def destroy
    @informacao_site.destroy
    respond_to do |format|
      format.html { redirect_to informacao_sites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacao_site
      @informacao_site = InformacaoSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacao_site_params
      params.require(:informacao_site).permit(:possui_site, :responsavel_tecnico, :servicos_oferecidos, :local_hospedado)
    end
end
