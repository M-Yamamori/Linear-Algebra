using LinearAlgebra

function gram_schmidt(a; tol = 1e-10)
    q = []
    for i = 1:length(a)
        qtilde = a[i] #Orthogonalization
        for j = 1:i-1
            qtilde -= (q[j]'*a[i]) * q[j] #Orthogonalization
        end
        if norm(qtilde) < tol #Test for linear dependence
            println("Vectors are linearly dependent.")
            return q
        end
        push!(q, qtilde/norm(qtilde)) #add the next vector to the array, Normalization
    end;
    return q
end

#=
a = [ [-1, 1, -1, 1], [-1, 3, -1, 3], [1, 3, 5, 7] ]
#println(a)
q = gram_schmidt(a)
println("q : ", q)
println()

#test orthnormality
println("norm q[1] : ", norm(q[1]))
println("q[1]'*q[2] : ", q[1]'*q[2])
println("q[1]'*q[3] : ", q[1]'*q[3])
println("norm q[2] : ", norm(q[2]))
println("q[2]'*q[3] : ", q[2]'*q[3])
println("norm q[3] : ", norm(q[3]))
println()

#Example of early termination
b = [ a[1], a[2], 1.3*a[1] + 0.5*a[2] ]
q = gram_schmidt(b)
println()
=#


#20201007
function test(x, n)
    for i = 1:10
        println(i)
        a = []
        for j = 1:x #the number of vectors
            push!(a, rand(1:10, n)) #n-vector
        end
        println("a: ", a)
        q = gram_schmidt(a)
        println("q: ", q)
        println()
    end
    println()
end

test(3, 3)
test(5, 3)
test(5, 5)

