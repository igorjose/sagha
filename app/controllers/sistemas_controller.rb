class SistemasController < ApplicationController
  before_action :set_sistema, only: [:show, :edit, :update, :destroy]

  # GET /sistemas
  # GET /sistemas.json
  def index
    @sistemas = Sistema.all
  end

  # GET /sistemas/1
  # GET /sistemas/1.json
  def show
  end

  # GET /sistemas/new
  def new
    @sistema = Sistema.new
  end

  # GET /sistemas/1/edit
  def edit
  end

  # POST /sistemas
  # POST /sistemas.json
  def create
    @sistema = Sistema.new(sistema_params)

    respond_to do |format|
      if @sistema.save
        format.html { redirect_to @sistema, notice: 'Sistema criado com sucesso.' }
        format.json { render action: 'show', status: :created, location: @sistema }
      else
        format.html { render action: 'new' }
        format.json { render json: @sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sistemas/1
  # PATCH/PUT /sistemas/1.json
  def update
    respond_to do |format|
      if @sistema.update(sistema_params)
        format.html { redirect_to @sistema, notice: 'Sistema atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sistemas/1
  # DELETE /sistemas/1.json
  def destroy
    @sistema.destroy
    respond_to do |format|
      format.html { redirect_to sistemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sistema
      @sistema = Sistema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sistema_params
      params.require(:sistema).permit(:nome)
    end
end
