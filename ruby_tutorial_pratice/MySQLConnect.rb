require "mysql";

class DataBaseExecution  

  def openConnect
    @con = Mysql.new '127.0.0.1', 'kurt', 'kurt@123456789', 'test'
    puts "Connected to MySQL"
  end
  
  def query    
    rs = @con.query('select * from user')    
    rs.each_hash { |h| puts " #{h['Id']}  #{h['Name']}"}
  end 
  
  def closeConnect
    @con.close
  end
    
end

connection =DataBaseExecution.new
connection.openConnect
connection.query
connection.closeConnect


