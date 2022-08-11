require 'csv'

  $high_temp=[]
  $low_temp=[]
  $mean_humid=[]

  $file_name =ARGV[0]
    
class Wm_task2
    
    def high_temp_func
  
       CSV.foreach($file_name) {|row| $high_temp << row[1].to_i}
       
       arr_sz=$high_temp.size-1
       total_high_temp=$high_temp.inject(0) {|sum,num| sum=sum+num}
       high_avg_temp=total_high_temp/arr_sz
       
       puts "Highest Average: #{high_avg_temp}"
  
    end
  
    def low_temp_func
  
       CSV.foreach($file_name) {|row| $low_temp << row[3].to_i}
       
       arr_sz=$low_temp.size-1
       total_low_temp=$low_temp.inject(0)  {|sum,num| sum=sum+num}
       low_avg_temp=total_low_temp/arr_sz
       
       puts "Lowest Average: #{low_avg_temp}"
  
    end

    def humid_func
  
        CSV.foreach($file_name) {|row| $mean_humid << row[8].to_i}
        
        arr_sz=$mean_humid.size-1
        total_mean_humid=$mean_humid.inject(0)  {|sum,num| sum=sum+num}
        avg_humid=total_mean_humid/arr_sz
        
        puts "Average Humidity: #{avg_humid}%"
   
     end

end
  
  wm=Wm_task2.new
  
  wm.high_temp_func
  wm.low_temp_func
  wm.humid_func