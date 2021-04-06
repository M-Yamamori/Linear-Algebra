using VMLS, Plots

beta = [148.73, -18.85];
v = 54.40; #set parameters
y_hat(x) = x'*beta + v; #regression model

x = [0.846, 1];
y = 115;
println("y_hat: ", y_hat(x), "\t", "y: ", y)

x = [1.324,2];
y = 234.50;
println("y_hat: ", y_hat(x), "\t", "y: ", y)
println()

#example
D = house_sales_data();
price = D["price"]
area = D["area"]
beds = D["beds"]
v = 54.4017;
beta = [148.7251, -18.8534];
predicted = v .+ beta[1] * area + beta[2] * beds;
scatter(price, predicted, lims = (0,800));
plot!([0, 800], [0, 800], linestyle = :dash);
plot!(xlims = (0,800), ylims = (0,800), size = (500,500));
plot!(xlabel = "Actual price", ylabel = "Predicted price");
savefig("salePrices.pdf")
