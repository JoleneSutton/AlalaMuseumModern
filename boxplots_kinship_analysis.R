library('ggplot2')
library('stats')
stats(version)

#setwd("C:/Users/mbellinger/Documents/renee/2022/alala/kinship_michael/")

df <- read.table("data_may2022/Supplemental_file_1_p12.1e4.wFeps1e5.minInd3.minMaf0.05.linked.geno.9.geno_bootstrap_meanvalues.csv", header=TRUE, sep=",",na.strings="NaN")

head(df)

## Wilcoxon Rank Sum Test
wilcox.test(Kinship ~ Group, data=df)
# W = 18378, p-value = 0.6875

p<-ggplot(df, aes(x=Group, y=Kinship, color=Group)) +
  scale_colour_manual(values=c("#00BFC4", "#F8766D")) +
  geom_boxplot(lwd=1) +
  geom_point(position=position_jitterdodge()) +
  theme_bw()

  p
  
  ggsave(
    filename = "kinship_plot_600dpi.jpeg",
    plot = last_plot(),
    device = "jpeg",
    dpi = 600)

