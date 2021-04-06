using CSV, LinearAlgebra, VMLS, Plots

b = CSV.read("birthRate.csv")
println(b)
b = b[1:19, :1] * 0.5 #women
d = CSV.read("deathRate.csv")
println(d)
x1 = CSV.read("pop2014.csv")
println(x1)

A = [b'; diagonal(1 .- d[1:18, :1]) zeros(18, 1)] #block matrix
#println(A)

K = 8 #5*K year
x = x1[1:19, :1]

for k = 1:K-1
    global x
    x = A*x
    println(x)
end

plot(x, xlabel = "Age", ylabel = "Population", legend=false)
savefig("Population.pdf")


