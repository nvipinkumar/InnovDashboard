class WelcomeController < ApplicationController
  
  def index

  	@procandeco = Procandeco.find(2)
  	@knowandcul = Knowandcul.find(1)
  	@Status = @procandeco.Status_id

  	@chart5 = LazyHighCharts::HighChart.new('pie') do |f|
        f.chart({:backgroundColor=>"#FCFCFC", :defaultSeriesType=>"pie" , :margin=> [50, 50, 50, 50]} )
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
          :innerSize=>'60%',
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

    @chart6 = LazyHighCharts::HighChart.new('pie') do |f|
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
  
  end

end
