class KnowandculsController < ApplicationController
  before_action :set_knowandcul, only: [:show, :edit, :update, :destroy]

  # GET /knowandculs
  # GET /knowandculs.json
  def index
    @knowandculs = Knowandcul.all

    #draw the bar graph here
    @Submitted  = 0
    @Reviewed   = 0
    @Cancelled  = 0
    @InProgress = 0
    @Approved   = 0
    @Completed  = 0
    @FutDev     = 0

    @knowandculs.each do |knowandcul|
      
      if knowandcul.Status_id == 1
        @Submitted = @Submitted + 1
      elsif knowandcul.Status_id == 2
        @Reviewed = @Reviewed + 1
      elsif knowandcul.Status_id == 3
        @Approved = @Approved + 1
      elsif knowandcul.Status_id == 4
        @FutDev = @FutDev + 1
      elsif knowandcul.Status_id == 5
        @Cancelled = @Cancelled + 1
      elsif knowandcul.Status_id == 6
        @InProgress = @InProgress + 1
      elsif knowandcul.Status_id == 7
        @Completed = @Completed + 1
      end

    end

    @chart6 = LazyHighCharts::HighChart.new('column') do |f|
       f.chart({:backgroundColor=>"#FCFCFC", :borderColor=>'#CCC',:borderWidth=>2} )
       f.series(:name=>'Ideas',:data=> [@Submitted, @Reviewed, @Approved, @FutDev, @Cancelled, @InProgress, @Completed])
       f.title({ :text=>"Summary View"})
       f.legend({:align => 'right', 
                :x => -100, 
                :verticalAlign=>'top',
                :y=>20,
                :floating=>"true",
                :backgroundColor=>'#FCFCFC',
                :borderColor=>'#CCC',
                :borderWidth=>1,
                :shadow=>"false"
                })
       f.options[:chart][:defaultSeriesType] = "column"
       f.options[:xAxis] = {:plot_bands => "none", :title=>{:text=>"Idea Status"}, :categories => ["Submitted", "In Review", "Approved", 
        "Future Development", "Cancelled", "In Progress", "Completed"]}
       f.options[:yAxis][:title] = {:text=>"No. of Ideas"}
    end

  end

  # GET /knowandculs/1
  # GET /knowandculs/1.json
  def show

    @Status = @knowandcul.Status_id

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
                           :sliced=> @Status == 1 ? true : false,
                           :selected=> true
                        },
                        
                        {
                           :name=> 'In Review',    
                           :y=> 16.66,
                           :sliced=> @Status == 2 ? true : false,
                           :selected=> true
                        },

                        {
                           :name=> 'Approved',    
                           :y=> 16.66,
                           :sliced=> @Status == 3 ? true : false,
                           :selected=> true
                        },

                        {
                           :name=> 'Future Development',    
                           :y=> 16.66,
                           :sliced=> @Status == 4 ? true : false,
                           :selected=> true
                        },

                        {
                           :name=> 'In Progress',    
                           :y=> 16.66,
                           :sliced=> @Status == 6 ? true : false,
                           :selected=> true
                        },

                        {
                           :name=> 'Completed',    
                           :y=> 16.66,
                           :sliced=> @Status == 7 ? true : false,
                           :selected=> true
                        }
                     ]
            }
        f.series(series)
        f.options[:title][:text] = @knowandcul.GetStatus
        f.legend(:layout=> 'vertical',:style=> {:left=> 'auto', :bottom=> 'auto',:right=> '50px',:top=> '100px'}) 
        f.plot_options(:pie=>{
          :innerSize=>'40%',
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

    if @Status == 5
        @chart5 = LazyHighCharts::HighChart.new('pie') do |f|
          f.chart({:backgroundColor=>"#FCFCFC", :defaultSeriesType=>"pie" , :margin=> [60, 60, 60, 60]} )
           f.title({
              align: 'center',
              verticalAlign: 'middle'
          })
           f.tooltip({ enabled: false }) 
            series = {
                       :type=> 'pie',
                       :dataLabels=>false,
                       :data=> [
                          {
                             :name=> 'Cancelled',
                             :color=>"#D9230F",    
                             :y=> 100,
                             :selected=> true
                          }
                       ]
              }
          f.series(series)
          f.options[:title][:text] = @knowandcul.GetStatus
          f.legend(:layout=> 'vertical',:style=> {:left=> 'auto', :bottom=> 'auto',:right=> '50px',:top=> '100px'}) 
          f.plot_options(:pie=>{
            :innerSize=>'80%',
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
