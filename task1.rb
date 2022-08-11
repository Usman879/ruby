require 'csv'

$high_temp=[]
$low_temp=[]
$max_humid=[]
#max_temp_date=[]

# $high=[]
# $low=[]

$file_name =ARGV[0]

class Wm_task1
    def q1
        
        CSV.foreach($file_name) do |row| 
            $high_temp << row[1].to_i
            $low_temp << row[3].to_i
            $max_humid << row[7].to_i
        end

        high=$high_temp.max
        low=$low_temp.min(4)
        humid=$max_humid.max
        # max_temp_date= csv['GST'][i]

        puts "Highest Temperature: #{high}"
        puts "Lowest Temperature : #{low}"
        puts "Highest Humidity   : #{humid}%"
    end
end


obj=Wm_task1.new
obj.q1

# table = CSV.parse(File.read(file_path), headers: true)
#      i=0
#        loop do
#         # for i in 0..size     
#  max_temp=table[i][1]
#  min_temp=table[i][3]
#  day=table[i][0]
#  max_humid=table[i][7]
 
#  i=i+1

#  puts "The Maximium temperature in #{i}th index is --> #{max_temp} on #{day}"
#  puts "The Minimum temperature in #{i}th index is  --> #{min_temp} on #{day}"
#  puts "The Maximum Humidity in #{i}th index is     --> #{max_humid}on #{day}"
#  puts "\n"
    
#     end
