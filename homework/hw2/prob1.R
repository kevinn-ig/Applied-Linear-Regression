lmErupt = lm(faithful$eruptions ~ faithful$waiting, data = faithful)
summary(lmErupt)$r.squared

plot(faithful$waiting, faithful$eruptions, xlab = "Waiting Time (min.)", ylab = "Eruption Duration (min.)", col = "pink")
abline(lmErupt, col = "blue")
