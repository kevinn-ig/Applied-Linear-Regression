hitters = read.csv("hitters.csv")
salary = hitters$Salary

hist(salary)

plot(hitters$Salary, hitters$CRBI, col = 15, xlab = "Salary", ylab = "CRBI", main = "CRBI vs. Salary")

league1 = hitters[hitters$NewLeague == "1",]
league0 = hitters[hitters$NewLeague == "0",]
boxplot(league0$Salary,league1$Salary,
        main = "Salary per League",
        ylab = "Salary",
        names = c("League 0", "League 1"), col = c("pink","yellow"))
?summary.lm
