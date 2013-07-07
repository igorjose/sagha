class DesktopsController < ApplicationController
  before_action :set_desktop, only: [:show, :edit, :update, :destroy]

  # GET /desktops
  # GET /desktops.json
  def index
    @desktops = Desktop.all
  end

  # GET /desktops/1
  # GET /desktops/1.json
  def show
  end

  # GET /desktops/new
  def new
    @desktop = Desktop.new
  end

  # GET /desktops/1/edit
  def edit
  end

  # POST /desktops
  # POST /desktops.json
  def create
    #desktop_params[:orgao_id] = current_user.orgao_id

    @desktop = Desktop.new(desktop_params)

    respond_to do |format|
      if @desktop.save
        format.html { redirect_to @desktop, notice: 'Desktop criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @desktop }
      else
        format.html { render action: 'new' }
        format.json { render json: @desktop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desktops/1
  # PATCH/PUT /desktops/1.json
  def update
    respond_to do |format|
      if @desktop.update(desktop_params)
        format.html { redirect_to @desktop, notice: 'Desktop atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @desktop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desktops/1
  # DELETE /desktops/1.json
  def destroy
    @desktop.destroy
    respond_to do |format|
      format.html { redirect_to desktops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desktop
      @desktop = Desktop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desktop_params
      params.require(:desktop).permit(:orgao_id, :qtd_funcionando, :qtd_extra, :qtd_defeito, :descricao_defeito, :qtd_emprestado, :lugar_emprestado, :qtd_garantia, :tem_contrato_locacao, :qtd_alugados, :descricao_locacao, :vigencia_contrato_locacao, :tem_contrato_manutencao, :qtd_manutencao, :descricao_manutencao, :vigencia_contrato_manutencao)
    end
end
