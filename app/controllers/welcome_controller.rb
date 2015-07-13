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


    @chart7 = LazyHighCharts::HighChart.new('solidgauge') do |f|
      f.chart({:backgroundColor=>"#FFFFFF",  :margin=> [0, 0, 0, 0]} )
      f.pane({
            :center=>['50%', '85%'],
            :size=>'140%',
            :startAngle=> -90,
            :endAngle=> 90,
            :background=> {
                :backgroundColor =>"#FFFFFF",
                :innerRadius=> '60%',
                :outerRadius=> '100%',
                :shape=> 'arc'
            }
        })
      f.tooltip({
            enabled: false
        })
      f.yAxis({
            :min=>0,
            :max=>200,
            :title=>{
                :text=>'Speed'
            },
            :stops=> [
                [0.1, '#55BF3B'], 
                [0.5, '#DDDF0D'], 
                [0.9, '#DF5353'] 
            ],
            :lineWidth=>0,
            :minorTickInterval=>'null',
            :tickPixelInterval=>400,
            :tickWidth=> 0,
            :title=>{
                :y=>-70
            },
            :labels=>{
                :y=>16
            }
        })
      f.plotOptions({
            :solidgauge=>{
                :dataLabels=>{
                    :y=>5,
                    :borderWidth=>0,
                    :useHTML=>true
                }
            }
        })

      series = {
            :name=>'Speed',
            :data=>[120],
            :tooltip=>{
                :valueSuffix=>' km/h'
            }
        }
      f.series(series)
    end

  
  end

end
