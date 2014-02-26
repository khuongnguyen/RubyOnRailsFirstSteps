class Print
  def hello_world
    puts "Hello World!";
  end   
  
  def hello_x(x)
    puts "Hello #{x}";
  end 
  
end


class People
  
  def initialize(name,address)
    @name,@address=name,address     
  end
  #get name
  def getName
    @name
  end
  #get address
  def getAddress
    @address
  end  
end

class User < People
    def getName
      @newName="is "+@name
      puts "Name #@newName"
    end
    def getAddress
      @newAddress="is "+@address
      puts "Address #@newAddress"
    end
end




