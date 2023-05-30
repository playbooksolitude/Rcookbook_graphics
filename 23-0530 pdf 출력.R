#

runif(10, min = 1, max = 10)
floor(runif(10, 1,100))
ceiling(runif(10, 1, 20))

#svg 파일 안된다
library(tidyverse)
mpg

#pdf 파일
diamonds |> group_by(cut) |> summarise(n = n()) |> 
  ggplot(aes(cut, n)) + geom_bar(stat = "identity") #-> a

diamonds |> group_by(color) |> summarise(n = n()) |> 
  ggplot(aes(color, n)) + geom_bar(stat = "identity") + 
  theme(axis.title = element_text(size = 100),
        axis.text = element_text(size = 100)) -> b

diamonds |> group_by(clarity) |> summarise(n = n()) |> 
  ggplot(aes(clarity, n)) + geom_bar(stat = "identity") -> c


ggsave("ggsave.png")
getwd()

svg("svgtest.svg")
a
dev.off()

pdf("pdftest.pdf", width = 100, height = 100)
a
b
c
dev.off()
