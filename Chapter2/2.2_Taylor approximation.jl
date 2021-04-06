f(x) = x[1] + exp(x[2]-x[1]); #function
grad_f(z) = [1-exp(z[2]-z[1]), exp(z[2]-z[1])]; #gradient

f_hat(x) = f(z) + grad_f(z)'*(x-z); #approximate at z
#z = [1, 2];
println("f: ", f([1,2]), "\t", "f_hat: ", f_hat([1,2]))
#z = [1, 2];
println("f: ", f([0.96,1.98]), "\t", "f_hat: ", f_hat([0.96,1.98]))
z = [1, 2];
println("f: ", f([1.10,2.11]), "\t", "f_hat: ", f_hat([1.10,2.11]))
z = [1, 2];