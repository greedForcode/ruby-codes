 #the maximum possible sum of digits of a product of two different elements of the sequence A
 
 def digit_sum(n)
 sum = 0
 while n != 0
 sum = sum + n % 10
 n = n / 10
 end
 return sum
 end

 t = gets.chomp.to_i

 while t != 0
 n = gets.chomp.to_i
 arr = Array.new(n, 0)
 arr = gets.chomp.split(' ').map( &: to_i)
 ans = -1
 for i in 0..n - 1
 for j in i + 1..n - 1
 x = arr[i] * arr[j]
 y = digit_sum x
 if ans < y
 ans = y
 end
 end
 end
 puts ans
 t = t - 1
 end
