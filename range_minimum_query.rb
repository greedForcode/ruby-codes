
class SegmentTree
def initialize(arr, n)
@arr = arr
@n = n
@tree = Array.new(2 * n, 0)
end
def build(node, l, r)

if l == r
#leaf node
@tree[node] = @arr[l-1]
elsif
m = (l + r) / 2
build(2 * node, l, m)
build(2 * node + 1, m + 1, r)
@tree[node] = op(@tree[2 * node], @tree[2 * node + 1])

end
end

def update(node, start, last, idx, value)

if start == last
@arr[idx-1] = value
@tree[node] = value
else
  mid = (start + last) / 2
if start <= idx and idx <= mid
update(2 * node, start, mid, idx, value)
else
  update(2 * node + 1, mid + 1, last, idx, value)
end
@tree[node] = op(@tree[2 * node], @tree[2 * node + 1])
end

end
def query(node, l, r, start, last)
if r < start or last < l
return 1000000007
elsif l <= start and last <= r
return @tree[node]
else
  m = (start + last) / 2
a = query(2 * node, l, r, start, m)
b = query(2 * node + 1, l, r, m + 1, last)
return op(a, b)
end

end

def op(a, b)
    if a.to_i > b.to_i
return b.to_i
else
   a.to_i
   end 
end

def output()
print @tree
end

end
n=gets.chomp.split(' ').map(&:to_i)
arr=Array.new(n[0],0)

q=n[1]
arr= gets.chomp.split(' ').map(&:to_i)

seg_tree = SegmentTree.new(arr, n[0])
seg_tree.build(1, 1, n[0])
while q!=0
operation=gets.chomp.split(" ")                                                                                 
                                                                                                                    
    if operation[0]=="u" 
    seg_tree.update(1,1,n[0],operation[1].to_i,operation[2].to_i)                                                                                                                                          
    else                                                                                                            
      puts  seg_tree.query(1,operation[1].to_i,operation[2].to_i,1,n[0])                                                                                               
    end  
    q=q-1                                                                                                           
end                                                                                                                 
          


