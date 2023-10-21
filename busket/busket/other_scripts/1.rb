input = File.open "1.txt", "r"
@b = []

    while line=input.gets
       
        @b<<line
    end
@b2 = []

# p @b

@b.each do |d|
    s = d.split('*')
    @b2<<s
end

@b2.each do |frrr|
    p frrr[15]
end
