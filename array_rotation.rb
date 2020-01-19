def solution(a, k)
  len=a.length
    if (len>0)       
        if(k>=len)    
         k%=len
        end
     reverseArray(a,0,len-1)
     reverseArray(a,0,k-1)
     reverseArray(a,k,len-1)
    end
 return a
end



# Function for reversing array
def reverseArray(a,first,last)
  temp=0
  while(first<last)
    temp=a[first]
    a[first]=a[last]
    a[last]=temp
    first+=1
    last-=1
  end
  return a
end
