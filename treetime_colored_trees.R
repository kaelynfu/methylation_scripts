library(ggplot2)
library(ggtree)
library(treeio)
library(ape)

#Import tree
t <- read.beast("annotated_tree.nexus")

#Plot tree
pdf("pdfName.pdf")
p <- ggtree(t, aes(color = geneName)) + scale_color_discrete(type = c("green4", "purple")) + geom_treescale(x = 145, y = 330)
print(p)
dev.off()
