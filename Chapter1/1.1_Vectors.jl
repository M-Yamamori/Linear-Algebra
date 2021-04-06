#Block or stacked vectors
x = [ 1, -2 ];
y = [ 1, 1, 0 ];
z = [ x; y ]
println("z: ", z)

v = vcat(x, y)
println("v: ", v)
println()

x = [ 9, 4, 3, 0, 5 ];
println("x: ", x)
y = x[2:4]
println("y: ", y)
x[ 4:5 ] = [ -2, -3 ];
println("x: ", x)
println()

#Vector of first differences
x = [ 1, 0, 0, -2, 2 ];
d = x[2:end] - x[1:end-1]   #[0-1, 0-0, -2-0, 2+2]
println("d: ", d)
println()

#Lists of vectors
x = [ 1.0, 0 ];
y = [ 1.0, -1.0 ];
z = [ 0, 1.0 ];
list = [ x, y, z ] #array of vectors
println(list)
list = [ x; y; z ] #array of numbers obtained by concatenation
println(list)
list = ( x, y, z ) #tuple or list
println(list)

#Zero vectors, ones vectors
println("zero vector: ", zeros(3))
println("ones vector: ", ones(4))
println()

#Plotting
using Plots
temps = [ 71, 71, 68, 69, 68, 69, 68, 74, 77, 82, 85, 86, 88, 86, 85, 86, 84, 79, 77, 75, 73, 71, 70, 70, 69, 69, 69, 69, 67, 68, 68, 73, 76, 77, 82, 84, 84, 81, 80, 78, 79, 78, 73, 72, 70, 70, 68, 67 ];
plot(temps, marker = :circle, legend = false, grid = false)
savefig("temperature.pdf")