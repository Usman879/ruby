require 'csv'
filenames_Dubai = Dir.chdir("/home/usman/weatherman/Dubai_weather") { Dir.entries(".") }
filenames_Murree = Dir.chdir("/home/usman/weatherman/Murree_weather") { Dir.entries(".") }
filenames_lahore = Dir.chdir("/home/usman/weatherman/lahore_weather") { Dir.entries(".") }


filenames_Dubai.sort!
filenames_Murree.sort!
filenames_lahore.sort!

 filenames_Dubai
 puts "Enter  Year: "
 year = gets.chomp

cities = ["lahore","Dubai","Murree"]
month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]



min_temp=1000
min_temp_date=""


file_path = "" 
file_name=""

countLahore=0
countDubai=0
countMurree=0
cities.each do |city|
    month.each do |mon|
        
        file_path = "/home/usman/weatherman/#{city}_weather/" 
        if city == "Dubai"
             
            
            file_name = "#{city}weather#{year}_#{mon}.txt"
            if filenames_Dubai.include?(file_name) 
                file_path = file_path << file_name
                 file_path
                file = File.open(file_path,"r+")
                 file.inspect
                 file.read


                csv = CSV.read(file_path, :headers=>true)
                size = csv['Min TemperatureC'].size
                
                for i in 0...size
                    # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                        min_temp = csv['Min TemperatureC'][i]
                        min_temp_date= csv['GST'][i]
                        # puts "min"
                    end
                end
            elsif
                puts "no file exist in Dubai"  
            end
        
        elsif city == "lahore"
               "Lahore"
             file_name = "#{city}weather#{year}_#{mon}.txt"
            if filenames_lahore.include?(file_name) 
                file_path = file_path << file_name
                 file_path
                file = File.open(file_path,"r+")
                 file.inspect
                 file.read


                csv = CSV.read(file_path, :headers=>true)
                size = csv['Min TemperatureC'].size
                
                for i in 0...size
                    # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                        min_temp = csv['Min TemperatureC'][i]
                        min_temp_date= csv['PKT'][i]
                        # puts "min"
                    end
                end
            elsif
                puts "no file exist in lahore"  
            end

        elsif city == "Murree"
          
          file_name = "#{city}weather#{year}_#{mon}.txt"
            if filenames_Murree.include?(file_name) 
                file_path = file_path << file_name
                 file_path
                file = File.open(file_path,"r+")
                 file.inspect
                 file.read


                csv = CSV.read(file_path, :headers=>true)
                size = csv['Min TemperatureC'].size
                
                for i in 0...size
                    # puts "in loop"    # ... tells ruby to exclude the last number (here 10 if we .. only then it includes the last num)
                    if min_temp.to_i > csv['Min TemperatureC'][i].to_i
                        min_temp = csv['Min TemperatureC'][i]
                        min_temp_date= csv['PKT'][i]
                        # puts "min"
                    end
                end
            elsif
                puts "no file exist in Murree"  
            end
         end
    end
            # count+=1
        
    # file = File.open(file_open,"r+")

end

puts "Min Temperature: #{min_temp}"
puts "ON Date: #{min_temp_date}"