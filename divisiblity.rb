a = gets.chomp.to_i

while a != 0
str = gets.chomp.split(' ').map( &: to_i)
n = str[0]
x = str[1]
y = str[2]
b = x
while b <= n
if b % y > 0
print b
print " "
end
b = b + x
end
a = a - 1
puts
end
