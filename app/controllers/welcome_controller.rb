class WelcomeController < ApplicationController
  
  def index
    
    # get the ideas count
    @procandecos = Procandeco.all
    @knowandculs = Knowandcul.all
    @techandsols = Techandsol.all

    @ProcIdeas  = @procandecos.count
    @KnowIdeas  = @knowandculs.count
    @TechIdeas  = @techandsols.count

    @chart6 = LazyHighCharts::HighChart.new('pie') do |f|
      f.chart({:backgroundColor=>"#FFFFFF", :defaultSeriesType=>"pie" , :margin=> [0, 0, 0, 0]} )
      series = {
               :type=> 'pie',
               :name=> 'No. of Ideas',
               :data=> [
                  ['Knowledge and Culture', @KnowIdeas],
                  ['Process and Ecosystem', @ProcIdeas],
                  ['Technology and Solution', @TechIdeas]
               ]
      }
      f.series(series)
      f.options[:title][:text] = ""
      f.legend(:layout=> 'vertical',:style=> {:left=> 'auto', :bottom=> 'auto',:right=> '50px',:top=> '100px'}) 
      f.plot_options(:pie=>{
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
