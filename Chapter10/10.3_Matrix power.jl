using CSV, LinearAlgebra, VMLS, Plots

bData = CSV.read("birthRate.csv")
println(bData)
b = bData[1:19, :1] * 0.5

dData = CSV.read("deathRate.csv")
println(dData)
d = dData[1:18, :1]

x1Data = CSV.read("pop2014.csv")
println(x1Data)
x1 = x1Data[1:19, :1]

A = [b'; diagonal(1 .- d) zeros(18, 1)] #block matrix
println(A)

cf = ones(19)' * (A^10) #10 * 5 year
println(A^10)
println(cf)

plot(cf', legend = false, xlabel = "Age", ylabel = "Factor")
savefig("contributionFactor.pdf")


