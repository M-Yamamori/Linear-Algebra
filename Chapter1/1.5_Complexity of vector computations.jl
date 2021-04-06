#Floating point operations
a = rand();
b = rand();
lhs = (a+b) * (a-b)
rhs = a^2 - b^2
println(lhs - rhs)
println()

#Sparse vectors
using SparseArrays
a = sparsevec([123456, 123457], [1.0, -1.0], 10^6) #10^6entries / a[123456] = 1.0 / a[123457] = -1.0
println("nnz: ", nnz(a)) #the number of nonzero entries



