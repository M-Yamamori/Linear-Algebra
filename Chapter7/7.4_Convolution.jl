function toeplitz(b,n)
    m = length(b)
    T = zeros(n+m-1,n) #make zero matrix
    for i = 1:m
        T[i : n+m : end] .= b[i] #each element
    end
    return T
end

b = rand(1:5, 3) #3-vector
a = rand(1:5, 4) #4-vector
Tb = toeplitz(b, length(a))
#println(length(Tb))
println(Tb)
#println(Tb[1:5])
println(Tb[:])
println(Tb[:,:])
println(Tb[1:3])
println(Tb[1:7])