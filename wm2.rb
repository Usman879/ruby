require 'csv'

filenames_Dubai = Dir.chdir("/home/usman/weatherman/Dubai_weather") { Dir.entries(".") }
filenames_Murree = Dir.chdir("/home/usman/weatherman/Murree_weather") { Dir.entries(".") }
filenames_lahore = Dir.chdir("/home/usman/weatherman/lahore_weather") { Dir.entries(".") }

filenames_Dubai.sort!
filenames_Murree.sort!
filenames_lahore.sort!

# puts filenames_Dubai
puts "Enter the year name"
year = gets.chomp
cities = ["lahore","Dubai","Murree"]
month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]

max_temp=500
max_temp_date=""

file_path = " " 
file_name=" "

cnt_Lahore=0
cnt_Dubai=0
cnt_Murree=0

cities.each do |city|
    month.each do |mon|
        
        file_path = "/home/usman/weatherman/#{city}_weather/" 
        if city == "Dubai"
        
            cnt_Dubai = cnt_Dubai+1
            file_name = "#{city}_weather_#{year}_#{mon}.txt"
            if filenames_Dubai.include?(file_name) 
                file_path = file_path << file_name
                puts file_path
                file = File.open(file_path,"r+")
                puts file.inspect
                puts file.read
            end
        end
    end


                #  csv = CSV.read(file_path, :headers=>true)
                #  size = csv['Max TemperatureC'].size
                
                #  for i in 0...size
                             
                #              if max_temp.to_i < csv['Max TemperatureC'][i].to_i
                #                  max_temp = csv['Max TemperatureC'][i]
                #                  max_temp_date= csv['GST'][i]
                #                  # puts "max"
                #              end
                #          end
                 table = CSV.parse(File.read(file_path), headers: true)
     i=0
       loop do
        # for i in 0..size     
 max_temp=table[i][1]
 min_temp=table[i][3]
 day=table[i][0]
 max_humid=table[i][7]
 
 i=i+1

 puts "The Maximium temperature in #{i}th index is --> #{max_temp} on #{day}"
 puts "The Minimum temperature in #{i}th index is  --> #{min_temp} on #{day}"
 puts "The Maximum Humidity in #{i}th index is     --> #{max_humid}on #{day}"
 puts "\n"
    
    end
   
  
        if city == "lahore"
    
             cnt_Lahore+=1
             file_name = "#{city}_weather_#{year}_#{mon}.txt"
             if filenames_lahore.include?(file_name) 
            
                 file_path = file_path << file_name
                 puts file_path
                 file = File.open(file_path,"r+")
                 puts file.inspect
                 puts file.read

                  csv = CSV.read(file_path, :headers=>true)
                  size = csv['Max TemperatureC'].size
             end
        
        end

                # table = CSV.parse(File.read(file_path), headers: true)
    # i=0
    #   loop do
     for i in 0...size

 max_temp=table[i][1]
 min_temp=table[i][3]
 day=table[i][0]
 max_humid=table[i][7]
 
 i=i+1

 puts "The Maximium temperature in #{i}th index is --> #{max_temp} on #{day}"
 puts "The Minimum temperature in #{i}th index is  --> #{min_temp} on #{day}"
 puts "The Maximum Humidity in #{i}th index is     --> #{max_humid}on #{day}"
 puts "\n"
   
      end
             
       
       
        if city == "Murree"
    
         cnt_Murree+=1
             file_name = "#{city}_weather_#{year}_#{mon}.txt"
             if filenames_Murree.include?(file_name) 
            
                 file_path = file_path << file_name
                 puts file_path
                 file = File.open(file_path,"r+")
                 puts file.inspect
                 puts file.read

                  csv = CSV.read(file_path, :headers=>true)
                  size = csv['Max TemperatureC'].size
             end
        end   


                table = CSV.parse(File.read(file_path), headers: true)
    # i=0
    #   loop do
        for i in 0...size     
 max_temp=table[i][1]
 min_temp=table[i][3]
 day=table[i][0]
 max_humid=table[i][7]
 
 i=i+1

 puts "The Maximium temperature in #{i}th index is --> #{max_temp} on #{day}"
 puts "The Minimum temperature in #{i}th index is  --> #{min_temp} on #{day}"
 puts "The Maximum Humidity in #{i}th index is     --> #{max_humid}on #{day}"
 puts "\n"
   
end
end

# puts max_temp 
# puts max_temp_date