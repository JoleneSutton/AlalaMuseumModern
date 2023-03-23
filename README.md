# Alala: Museum & Modern
This repository houses the R code for the project: Blanchet G, Bellinger MR, Kearns AM, Cortes-Rodriguez N, Campana MG, Rutz C, Masuda BM,Fleischer RC, and Sutton JT. 2023. Reduction of genetic diversity in ‘Alalā (Hawaiian crow; *Corvus hawaiiensis*) between the late 1800s and the late 1900s.

## Description

- 01_FormatInputFile.Rmd formats the "hard-called genotypes" files for the following downstream analysis: rarefaction, polymorphic loci, private alleles, allele frequencies, heterozygosity. This script creates subsets of the data based on different missing data thresholds, then writes these to file for individual analysis.

- 02_Rarefaction_vMoreSimulations.Rmd performs the rarefaction. We randomly sampled one bird from each group (historical or modern) and counted the number of unique genotypes, then successively sampled each of the remaining individuals and recorded the number of new genotypes added each time until every individual per group had been sampled. We used 1,000 permutations of the sampling strategy, shuffling the order of samples during each permutation.

- 03_PolymorphicLoci_PrivateAlleles_AlleleFrequencies.Rmd compares the proportion of polymorphic loci and allelic richness (number of alleles) between historical and modern samples. To account for differences in sample sizes when comparing the proportions of polymorphic loci, used permutation by randomly sampling a subset of modern birds over a specified number of permutations to generate means and 95% confidence intervals.

- 04_Heterozygosity_WithWilcoxon.Rmd compares heterozygosity among loci between historical and modern samples, and compares heterozygosity per bird between historical and modern samples.

- 05_Figures.Rmd  generates the rarefaction figure and the boxplots of per-bird heterozygosities.

- boxplots_kinship_analysis.R creates the boxplot of pairwise kinship values between historical and modern samples