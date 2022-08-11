require 'csv'
require 'colorize'

$high_temp=[]
$low_temp=[]

$file_name =ARGV[0]

class Wm_task3
    
    def q3

    CSV.foreach($file_name) {|row| $high_temp << row[1].to_i}
    CSV.foreach($file_name) {|row| $low_temp << row[3].to_i}

    @count=$high_temp.size-1

    i=0
    
    while i<@count
        print "#{i+1}  "
        j=0
        while j<$high_temp[i].to_i
            print "+".red
            # .red
            j=j+1
        end
        
        print "#{j}C"
        puts"\n"
        print "#{i+1}  "
        k=0
        while k<$low_temp[i].to_i
            print "+".blue
            # .blue
            k=k+1
        end
        print "#{k}C"
        puts "\n"

        i=i+1
    end
end
end

obj=Wm_task3.new
obj.q3
