AirPassengers
head(AirPassengers)
start(AirPassengers)
end(AirPassengers)
AIRP=ts(AirPassengers, start = c(1949,1), end=c(1960,12),frequency = 12)
AIRP
head(AIRP)
plot(AIRP)
plot(log(AIRP))
plot(diff(log(AIRP)))
FIT=auto.arima(log(AIRP))
FIT
prediction=predict(FIT, n.ahead = 12)
prediction
prediction2=round(2.718^prediction$pred,0)
prediction2
ts.plot(AIRP, prediction2, col=c("red","blue"))

