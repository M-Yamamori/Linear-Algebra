using LinearAlgebra, VMLS

#Angle
ang(x,y) = acos(x'*y/(norm(x)*norm(y)));
a = [1, 2, -1];
b = [2, 0, -3];
println("angle: ", ang(a,b))
println()

#Correlation coefficient
function correl_coef(a,b)
    a_tilde = a .- avg(a)
    b_tilde = b .- avg(b)
    return (a_tilde'*b_tilde)/(norm(a_tilde)*norm(b_tilde))
end
a = [4.4, 9.4, 15.4, 12.4, 10.4, 1.4, -4.6, -5.6, -0.6, 7.4];
b = [6.2, 11.2, 14.2, 14.2, 8.2, 2.2, -3.8, -4.8, -1.8, 4.2];
println("Correlation coefficient: ", correl_coef(a,b))

