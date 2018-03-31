person =[]
i = 0

def summary(a,num)
    puts "#{num+1}번"
    puts "name: #{a[num][:name]}"
    puts "number #{a[num][:number]}"
    puts "gender: #{a[num][:gender]}"
    puts ""
end


loop do
    x = 0
    print "0 to exit "
    cmd =gets.chomp
    break if  cmd == "0"
    
    person << Hash.new
    puts person.length
 
    
    puts "you're name? "
    person[i][:name] =gets.chomp
    
    puts "you're number?"
    person[i][:number] =gets.chomp
    
    puts "you're gender?"
    person[i][:gender] =gets.chomp
    puts ""
    
    if person[i][:gender] != "male" && person[i][:gender]!="female"
        person[i][:gender] = "both"
    end
    
    while x<person.length
        summary(person,x)
        x+=1
        
    end
    i+=1
    
end


