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

    @Status = @procandeco.Status_id

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
        f.options[:title][:text] = @procandeco.GetStatus
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
          f.options[:title][:text] = @procandeco.GetStatus
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
