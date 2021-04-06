Rot(theta) = [cos(theta) -sin(theta); sin(theta) cos(theta)]
R = Rot(pi/3) #rotate pi/3

points = []
for j = 1:5 #the number of points
    push!(points, rand(0:5, 2)) #2-D
end
rpoints = [R*p for p in points]

println("points: ", points)
println("rpoints: ", rpoints)

using Plots
scatter([c[1] for c in points], [c[2] for c in points])
scatter!([c[1] for c in rpoints], [c[2] for c in rpoints])
plot!(xlims = (-10.1, 10.1), ylims = (-10.1, 10.1), size = (500,500), legend = false, grid = true)
savefig("rotation.pdf")