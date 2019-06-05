library("neuralnet")


output <- as.data.frame(runif(50, min = 1, max = 10))
input <- log(output^2)

trainingData <- cbind(input, output)
colnames(trainingData) <- c("Input", "Output")

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
maxmindf <- as.data.frame(lapply(trainingData, normalize))

net.price <- neuralnet(Output~Input, maxmindf, hidden = c(4, 5, 3), threshold = 0.01)

plot(net.price)