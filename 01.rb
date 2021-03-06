### part 1 ###

sum = 0

File.open("inputs/01").each do |line|
    sum += line.to_i
end

puts sum.to_s

### part 2 ###

arr = Hash.new
sum = 0
found = false

while !found do
    File.open("inputs/01").each do |line|
        sum += line.to_i
        unless arr[sum].nil?
            found = true
            break
        end
        arr[sum] = "seen"
    end
end

puts sum