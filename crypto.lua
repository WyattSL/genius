swap = function(t, v1, v2)
 z = t[v1]
 t[v1] = t[v2]
 t[v2] = z
end function
a = {}
for i in range(0,255)
  a[i] = i
end for
b = 0
for c in a
  b = (b + a[i] + K[i % k.len]) % 256
  swap(a,i,b)
end for
