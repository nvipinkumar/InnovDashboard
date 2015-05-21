class KnowandculsController < ApplicationController
  before_action :set_knowandcul, only: [:show, :edit, :update, :destroy]

  # GET /knowandculs
  # GET /knowandculs.json
  def index
    @knowandculs = Knowandcul.all
  end

  # GET /knowandculs/1
  # GET /knowandculs/1.json
  def show

    @chart5 = LazyHighCharts::HighChart.new('pie') do |f|
        f.chart({:defaultSeriesType=>"pie" , :margin=> [50, 120, 60, 170]} )
        series = {
                 :type=> 'pie',
                 :name=> 'Browser share',
                 :data=> [
                    ['Firefox',   45.0],
                    ['IE',       26.8],
                    {
                       :name=> 'Chrome',    
                       :y=> 12.8,
                       :sliced=> true,
                       :selected=> true
                    },
                    ['Safari',    8.5],
                    ['Opera',     6.2],
                    ['Others',   0.7]
                 ]
        }
        f.series(series)
        f.options[:title][:text] = "THA PIE"
        f.legend(:layout=> 'vertical',:style=> {:left=> 'auto', :bottom=> 'auto',:right=> '50px',:top=> '100px'}) 
        f.plot_options(:pie=>{
          :innerSize=>'70%',
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

  # GET /knowandculs/new
  def new
    @knowandcul = Knowandcul.new
  end

  # GET /knowandculs/1/edit
  def edit
  end

  def GetStatus
    return ImpOwner.find(:Status_id)
  end

  # POST /knowandculs
  # POST /knowandculs.json
  def create
    @knowandcul = Knowandcul.new(knowandcul_params)

    respond_to do |format|
      if @knowandcul.save
        format.html { redirect_to @knowandcul, notice: 'Knowandcul was successfully created.' }
        format.json { render :show, status: :created, location: @knowandcul }
      else
        format.html { render :new }
        format.json { render json: @knowandcul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knowandculs/1
  # PATCH/PUT /knowandculs/1.json
  def update
    respond_to do |format|
      if @knowandcul.update(knowandcul_params)
        format.html { redirect_to @knowandcul, notice: 'Knowandcul was successfully updated.' }
        format.json { render :show, status: :ok, location: @knowandcul }
      else
        format.html { render :edit }
        format.json { render json: @knowandcul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knowandculs/1
  # DELETE /knowandculs/1.json
  def destroy
    @knowandcul.destroy
    respond_to do |format|
      format.html { redirect_to knowandculs_url, notice: 'Knowandcul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knowandcul
      @knowandcul = Knowandcul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def knowandcul_params
      params.require(:knowandcul).permit(:Name, :Summary, :Description, :Owner, :Reviewed, :Status_id, :Comments, :Action, :ImpOwner_id)
    end

end
