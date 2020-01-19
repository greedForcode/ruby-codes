class Solve
def initialize(m, n)
@m = m
@n = n
end

def sieve()
size = (Math.sqrt(@n)).floor + 1
isPrime = Array.new(size, true)
isPrime[0] = false
isPrime[1] = false
count = 0
for i in 1..size
if isPrime[i] == true
j = 2 * i
while j <= size
isPrime[j] = false
j = j + i
end
count = count + 1
end
end
prime = Array.new(count)
idx = 0;
for i in 1..size
if isPrime[i] == true
prime[idx] = i
idx = idx + 1
end
end
return prime

end

def solve()
prime = sieve()

size = @n - @m + 1
mark = Array.new(size, false)
for i in 1..prime.length
loLim = (@n / prime[i - 1]).floor * prime[i - 1]
if loLim < @n
loLim += prime[i - 1]
end
if loLim = prime[i - 1]

loLim += prime[i - 1]
end
j = loLim
while j <= @n
mark[j - @m] = true
j = j + prime[i - 1]
end
end

for i in @m..@n
if mark[i - @m] == false && i > 1
puts i

end
end
end
end
a = gets.chomp.to_i

while a != 0
str = gets.chomp.split(' ').map( &: to_i)

solve = Solve.new(str[0], str[1])
solve.solve
a = a - 1
puts
end
