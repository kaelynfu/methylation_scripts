#Summarise quast output to identify outliers based on number of contigs,
#total length and GC content
library(ggplot2)

#Read in the quast output
q <- read.csv("QuastResult.csv")

#Calculate median and MAD for number of contigs
ncM <- median(q$contigs)
ncMad <- mad(q$contigs)

#Plot the distribution of GC content
gcM <- median(q$GC)
gcMad <- mad(q$GC)
ggplot(q, aes(x = GC)) + geom_histogram() + theme_classic()+ geom_vline(xintercept = gcM, colour = "red") + geom_vline(xintercept = c((gcM - (5*gcMad)), (gcM + (5*gcMad))), colour = "blue")
print(gcM - (5*gcMad))
print(gcM + (5*gcMad))

#Plot the distribution of total length
tlM <- median(q$Total_length)
tlMad <- mad(q$Total_length)
ggplot(q, aes(x = Total_length)) + geom_histogram() + theme_classic() + geom_vline(xintercept = tlM, colour = "red") + geom_vline(xintercept = c((tlM - (2*tlMad)), (tlM + (2*tlMad))), colour = "blue")
print(tlM - (2*tlMad))
print(tlM + (2*tlMad))

#Plot the distribution of number of contigs
ggplot(q, aes(x = contigs)) + geom_histogram(binwidth = 5) + theme_classic() + geom_vline(xintercept = ncM, colour = "red") + geom_vline(xintercept = c((ncM - (5 * ncMad)), (ncM + (5 * ncMad))), colour = "blue") + geom_vline(xintercept = 30, colour = "purple")
print(ncM + (5 * ncMad))
