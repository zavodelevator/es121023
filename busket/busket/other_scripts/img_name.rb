

path1="https://zavodelevator.github.io/img/shnek_trans/sh_t_"
path2=".jpg"

arr1=[]

temp = ""

20.times do |i|
    temp = path1 + i.to_s + path2 + ","
    
    arr1<<temp if i>0&&i<20
    temp=""
end


20.times do
    puts arr1.shuffle[0..5]
    puts
    puts
    puts
    puts
    puts
end
