h = 0.01
m = 1
eta = 1
A = [1 h ; 0 1-h*eta/m]
B = [0 ; h/m ]
x1 = [0, 0]
K = 600 #6(sec)/0.01
f = zeros(K)
f[50:99] .= 1.0 #each element
f[100:139] .= -1.3
X = [x1 zeros(2, K-1)] #parentheses 2*K-1 matrix

for k = 1:K-1
    X[:, k+1] = A*X[:, k] + B*f[k]
end

using Plots
plot(X[1, :], xlabel="k", ylabel="Position", legend=false)
savefig("Position.pdf")
plot(X[2, :], xlabel="k", ylabel="Velocity", legend=false)
savefig("Velocity.pdf")