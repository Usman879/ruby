# require 'csv'
#  CSV.foreach("/home/usman/weatherman/Dubai_weather/Dubai_weather_2004_Aug.csv") do |row|
#      puts row.inspect


#  end

#  table= CSV.read("/home/usman/weatherman/Dubai_weather/Dubai_weather_2004_Aug.csv") 

#  yr= p table

#  table = CSV.read("/home/usman/weatherman/Dubai_weather/Dubai_weather_2004_Aug.csv", headers: true)

# yr1 = p table['yearl']

# yr1.each do |date|
#   Date.strptime(date, '%m/%d/%Y')
# end
# year=[]
# month

# mode = "r+"
# file = File.open("friend-list.txt", mode)
# puts file.inspect
# puts file.read


# file.close







file = File.open("/home/usman/weatherman/Dubai_weather/Dubai_weather_2004_Aug.csv" ,"r+" ,headers: true)

# p file.readlines
file.rewind # try commenting out this line to see what happens!
            # can you guess why this happens?

year = ""
 file.read(9, year)
 p year

file.close



table = CSV.parse(File.read("/home/usman/weatherman/Dubai_weather/Dubai_weather_2004_Aug.txt"), headers: true)
    i=0
      loop do
    #    for i in 0..size     
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