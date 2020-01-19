# cook your code here
# cook your code here
class Node 
    attr_accessor :left, :right, :val, :pos
    
    def initialize(val, pos)  
        @val = val 
        @left = nil
        @right = nil
        @pos = pos
    end
end


def insertNode(head, pos, value)
    if head == nil
        puts pos
        return Node.new(value,pos)
    end
    if value < head.val
        head.left = insertNode(head.left,2*pos,value)
    else
        head.right = insertNode(head.right,(2 * pos)+1,value)
    end
    return head
end

def smallestNodeinRST(node)
    curr = node 
    while curr.left != nil 
        curr = curr.left  
    end
    return curr
end

def deleteNode(head, value)
    if head == nil
        return head
    end
    if value == head.val
        puts head.pos
        if head.left == nil
            temp = head.right
            head = nil
            return temp
        end
        if head.right == nil
            temp = head.left
            head = nil
            return temp
        end
        
        temp=smallestNodeinRST(head.right)
        head.val = temp.val
        
        head.right = deleteNode(head.right,temp.val)
        return head
    elsif value < head.val
        head.left = deleteNode(head.left,value)
    else
        head.right = deleteNode(head.right,value)
    end
    return head
end

root = nil  
t = gets.to_i 

t.times do |itr|
    op = gets.split(" ")
    if(op[0] == 'i')
        root = insertNode(root, 1, op[1].to_i)
    else 
        root = deleteNode(root, op[1].to_i )
    end
end
