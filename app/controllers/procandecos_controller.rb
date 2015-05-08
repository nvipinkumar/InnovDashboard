class ProcandecosController < ApplicationController
  before_action :set_procandeco, only: [:show, :edit, :update, :destroy]

  # GET /procandecos
  # GET /procandecos.json
  def index
    @procandecos = Procandeco.all
  end

  # GET /procandecos/1
  # GET /procandecos/1.json
  def show
  end

  # GET /procandecos/new
  def new
    @procandeco = Procandeco.new
  end

  # GET /procandecos/1/edit
  def edit
  end

  # POST /procandecos
  # POST /procandecos.json
  def create
    @procandeco = Procandeco.new(procandeco_params)

    respond_to do |format|
      if @procandeco.save
        format.html { redirect_to @procandeco, notice: 'Procandeco was successfully created.' }
        format.json { render :show, status: :created, location: @procandeco }
      else
        format.html { render :new }
        format.json { render json: @procandeco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procandecos/1
  # PATCH/PUT /procandecos/1.json
  def update
    respond_to do |format|
      if @procandeco.update(procandeco_params)
        format.html { redirect_to @procandeco, notice: 'Procandeco was successfully updated.' }
        format.json { render :show, status: :ok, location: @procandeco }
      else
        format.html { render :edit }
        format.json { render json: @procandeco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procandecos/1
  # DELETE /procandecos/1.json
  def destroy
    @procandeco.destroy
    respond_to do |format|
      format.html { redirect_to procandecos_url, notice: 'Procandeco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procandeco
      @procandeco = Procandeco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procandeco_params
      params.require(:procandeco).permit(:Name, :Summary, :Description, :Owner, :Reviewed, :Status_id, :Comments, :Action, :ImpOwner_id)
    end
end
