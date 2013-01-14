nums = [*(1..16)]
nums.each do |num|
   p nums[((num-4)...num)] if num % 4 == 0
end
puts "-------"
nums.each_slice(4) { |slice| p slice }
