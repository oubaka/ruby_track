require 'csv'

class Task 

  def initialize(file, output)
    @file = file
    @output = output
  end 

  def run
    record = CSV.readlines(@file, headers: true, converters: :numeric)
    record = record.sort_by {|x| x['Designation']}.group_by {|x| x['Designation']}
    
    writer = File.open(@output, 'w+')
    record.each_pair do |key, emp_list|
      heading = emp_list.size > 1 ? "#{key}s" : key
      writer.write("#{heading}\r")
      emp_list.sort_by {|item| item['Name']}.each do |emp|
        writer.write("\t#{emp['Name']} (EmpId: #{emp['EmpId']})\r")
      end
    end  

    writer.flush
    writer.close
  end  

end