num = rand(10)
print "random num: #{num}\n"
print "Guess a number between 1 and 10: "
ans = gets
if ans.to_i == num
  print "You won!! Nice job!"
else
  print "Loser!!!"
end
