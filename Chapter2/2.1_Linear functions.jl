#Functions in Julia
f(x) = x[1] + x[2] - x[4]^2
println(f([-1,0,1,2]))
println()

#Superposition
a = [-2, 0, 1, -3]
f(x) = a'* x 
e3 = [0, 0, 1, 0];
println("f(e3): ", f(e3))
println()

x = [2, 2, -1, 1];
y = [0, 1, -1, 0];
alpha = 1.5;
beta = -3.7;
lhs = f(alpha * x + beta * y)
println("lhs: ", lhs)
rhs = alpha * f(x) + beta * f(y)
println("rhs: ", rhs)
println()

#Examples
avg(x) = (ones(length(x)) / length(x))'*x;
x = [1, -3, 2, -1];
println(avg(x))
