using VMLS, CSV

house = CSV.read("house.csv")
println(house)

dist = house[1:40, :2] #x1
println("dist: ", dist)
area = house[1:40, :3] #x2
println("area: ", area)
matX = [dist area]
println("matX", matX)

price = house[1:40, :4] #yd
println("price: ", price)

beta = [-1.16264, 0.040437]
v = 61.56242

ydhat = matX*beta .+ v
println("ydhat: ", ydhat)

rd = price - ydhat
println("rms: ", rms(rd))


