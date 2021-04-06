using VMLS, CSV

coffee = CSV.read("coffee.csv")
println(coffee)

maxTempe = coffee[1:40, :2] #x
println("maxTempe: ", maxTempe)

icedCoffee = coffee[1:40, :3] #yd
println("icedCoffee: ", icedCoffee)

beta = 11.357
v = 41.442

ydhat = maxTempe * beta .+ v #prediction vector
println("ydhat: ", ydhat)
rd = icedCoffee - ydhat
println("rd: ", rd)
println("rms: ", rms(rd))