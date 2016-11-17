require 'csv'

begin
  file = File.dirname(__FILE__) << '/file.csv'
  output = File.dirname(__FILE__) << '/output.txt'

  record = CSV.readlines(file, headers: true, converters: :numeric).group_by {|x| x['Designation']}
  
  writer = File.open(output, 'w+')
  record.each_pair do |key, emp_list|
    heading = emp_list.size > 1 ? "#{key}s" : key
    writer.write("#{heading}\r")
    emp_list.sort_by {|item| item['EmpId']}.each do |emp|
      writer.write("\t#{emp['Name']} (EmpId: #{emp['EmpId']})\r")
    end
  end  
  writer.flush
  writer.close
rescue => exception
  p exception
end
