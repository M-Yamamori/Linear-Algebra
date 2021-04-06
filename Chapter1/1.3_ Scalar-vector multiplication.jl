#Scalar-vector multiplication and division
x = [0, 2, -1];
println("x: ", x)
println("2.2 * x: ", 2.2 * x);
println()

#Scalar-vector addition
println([ 1.1, -3.7, 0.3 ] .- 1.4 ) #add scalar and vector
println()

#Elementwise operations with a scalar
w = [1, 2, 2];
z = [1, 2, 3];
println(w == z)
println(w .== z)
println()

#Linear combination
a = [1, 2];
b = [3, 4];
alpha = -0.5;
beta = 1.5;
c = alpha*a + beta*b #c[1] = -0.5 + 4.5
println("c", c)
c = a
println("c", c)
a[1] = 5
println("c", c)

function lincomb(coeff, vectors)
    n = length(vectors[1])
    a = zeros(n);
    for i = 1:length(vectors)
        a = a + coeff[i] * vectors[i];
    end
    return a
end
println(lincomb((-0.5, 1.5), ([1, 2], [3, 4])))
println()

#check the distributive property
a = rand(3)
b = rand(3)
beta = randn()
lhs = beta * (a + b)
rhs = beta * a + beta * b
println("lhs: ", lhs)
println("rhs: ", rhs)
println(lhs-rhs)



