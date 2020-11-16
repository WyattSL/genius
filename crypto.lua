swap = function(t, v1, v2)
 z = t[v1]
 t[v1] = t[v2]
 t[v2] = z
end function
Encode = function(IN)
  OUT = ""
  a = {}
  for i in range(0,255)
    a[i] = i
  end for
  b = 0
  for c in a
    b = (b + a[i] + K[i % k.len]) % 256
    swap(a,i,b)
  end for 
  p1 = 0
  p2 = 0
  for i in range(0,IN.len)
    p1=(p1+1)%256
    p2=(p2+a[p1])%256
    swap(t,p1,p2)
    OUT=OUT+a[(a[p1]+a[p2])%256]
  end for
  return OUT
end function

Decode = function(password)
  actual = "3048814903"
  if Encode(actual) == Encode(password) then
    return actual
  else
    return 0
  end if
end function
 
if params.len > 0 then
  print("Result: " + Encode(params.join(" ")))
  print("Success: " + Decode(params.join(" ")))
end if
