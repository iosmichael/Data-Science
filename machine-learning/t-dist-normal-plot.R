#author: Michael Liu
#t-dist-normal-plot

x = seq(-5, 5, by=0.001)
seq.t = seq(from = 1, to = 20, by = 4)
#normal
norm.y <- dnorm(x)
plot(x,norm.y,type="l",col="red", xlab = "X", ylab="P(X)")
#t-distribution with various degree of freedoms
for(i in seq.t){
  dt.y <- dt(x,i)
  lines(x, dt.y, col="blue")
}