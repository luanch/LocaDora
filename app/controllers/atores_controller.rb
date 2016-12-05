class AtoresController < ApplicationController
  before_action :set_ator, only: [:show, :edit, :update, :destroy]

  # GET /atores
  # GET /atores.json
  def index
    @atores = Ator.all
  end

  # GET /atores/1
  # GET /atores/1.json
  def show
  end

  # GET /atores/new
  def new
    @ator = Ator.new
  end

  # GET /atores/1/edit
  def edit
  end

  # POST /atores
  # POST /atores.json
  def create
    @ator = Ator.new(ator_params)

    respond_to do |format|
      if @ator.save
        format.html { redirect_to @ator, notice: 'Ator was successfully created.' }
        format.json { render :show, status: :created, location: @ator }
      else
        format.html { render :new }
        format.json { render json: @ator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atores/1
  # PATCH/PUT /atores/1.json
  def update
    respond_to do |format|
      if @ator.update(ator_params)
        format.html { redirect_to @ator, notice: 'Ator was successfully updated.' }
        format.json { render :show, status: :ok, location: @ator }
      else
        format.html { render :edit }
        format.json { render json: @ator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atores/1
  # DELETE /atores/1.json
  def destroy
    @ator.destroy
    respond_to do |format|
      format.html { redirect_to atores_url, notice: 'Ator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ator
      @ator = Ator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ator_params
      params.require(:ator).permit(:nome, :sexo)
    end
end
