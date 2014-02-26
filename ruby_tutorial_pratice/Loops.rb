load "Classes.rb";


puts "----For loop"
for i in 0..5
     
   #print "value:#{i} \n"
   if(i>2) then     
        puts "Value of local variable is #{i}"
  end
   
end


puts "----While loop"
i = 0
num = 5
while i < num  do
   puts("Inside the loop i = #{i}" )
   i +=1
end

puts "----Until loop"
$i = 0
$num = 5

until $i == $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end

