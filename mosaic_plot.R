dat <- data.frame(
  "Human" = c(number1, number2),
  "Animal" = c(number3, number4),
  row.names = c("Gene Present", "Gene Absent"),
  stringsAsFactors = FALSE
)
colnames(dat) <- c("Human", "Animal")

dat
mosaicplot(dat,
           main = "geneName",
           color = c("dodgerblue", "firebrick")
)
