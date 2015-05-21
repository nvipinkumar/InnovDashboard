class TechandsolsController < ApplicationController
  before_action :set_techandsol, only: [:show, :edit, :update, :destroy]

  # GET /techandsols
  # GET /techandsols.json
  def index
    @techandsols = Techandsol.all
  end

  # GET /techandsols/1
  # GET /techandsols/1.json
  def show
    
    @chart5 = LazyHighCharts::HighChart.new('pie') do |f|
      f.chart({:backgroundColor=>"#FCFCFC", :defaultSeriesType=>"pie" , :margin=> [0, 0, 0, 0]} )
       f.title({
          align: 'center',
          verticalAlign: 'middle'
      })
       f.tooltip({ enabled: false }) 
        series = {
                   :type=> 'pie',
                   :data=> [
                      {
                         :name=> 'Submitted',    
                         :y=> 16.66,
                         :sliced=> @techandsol.Status_id == 1 ? true : false,
                         :selected=> true
                      },
                      
                      {
                         :name=> 'In Review',    
                         :y=> 16.66,
                         :sliced=> @techandsol.Status_id == 2 ? true : false,
                         :selected=> true
                      },

                      {
                         :name=> 'Approved',    
                         :y=> 16.66,
                         :sliced=> @techandsol.Status_id == 3 ? true : false,
                         :selected=> true
                      },

                      {
                         :name=> 'Future Development',    
                         :y=> 16.66,
                         :sliced=> @techandsol.Status_id == 4 ? true : false,
                         :selected=> true
                      },

                      {
                         :name=> 'In Progress',    
                         :y=> 16.66,
                         :sliced=> @techandsol.Status_id == 6 ? true : false,
                         :selected=> true
                      },

                      {
                         :name=> 'Completed',    
                         :y=> 16.66,
                         :sliced=> @techandsol.Status_id == 7 ? true : false,
                         :selected=> true
                      }
                   ]
          }
      f.series(series)
      f.options[:title][:text] = @techandsol.GetStatus
      f.legend(:layout=> 'vertical',:style=> {:left=> 'auto', :bottom=> 'auto',:right=> '50px',:top=> '100px'}) 
      f.plot_options(:pie=>{
        :innerSize=>'50%',
        :allowPointSelect=>true, 
        :cursor=>"pointer" , 
        :dataLabels=>{
          :enabled=>true,
          :color=>"black",
          :style=>{
            :font=>"13px Trebuchet MS, Verdana, sans-serif"
          }
        }
      })
  end

  end

  # GET /techandsols/new
  def new
    @techandsol = Techandsol.new
  end

  # GET /techandsols/1/edit
  def edit
  end

  # POST /techandsols
  # POST /techandsols.json
  def create
    @techandsol = Techandsol.new(techandsol_params)

    respond_to do |format|
      if @techandsol.save
        format.html { redirect_to @techandsol, notice: 'Techandsol was successfully created.' }
        format.json { render :show, status: :created, location: @techandsol }
      else
        format.html { render :new }
        format.json { render json: @techandsol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techandsols/1
  # PATCH/PUT /techandsols/1.json
  def update
    respond_to do |format|
      if @techandsol.update(techandsol_params)
        format.html { redirect_to @techandsol, notice: 'Techandsol was successfully updated.' }
        format.json { render :show, status: :ok, location: @techandsol }
      else
        format.html { render :edit }
        format.json { render json: @techandsol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techandsols/1
  # DELETE /techandsols/1.json
  def destroy
    @techandsol.destroy
    respond_to do |format|
      format.html { redirect_to techandsols_url, notice: 'Techandsol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techandsol
      @techandsol = Techandsol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def techandsol_params
      params.require(:techandsol).permit(:Name, :Summary, :Description, :Owner, :Reviewed, :Status_id, :Comments, :Action, :ImpOwner_id)
    end
end
