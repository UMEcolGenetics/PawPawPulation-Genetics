# PawPawPulation Genetics

![Image PawPAw](https://github.com/UMEcolGenetics/PawPawPulation/blob/main/Analyses/Home/pawpaw.png)

## Introduction

This repository contains an overview of select softwares and tutorials commonly used in population genetics. The purpose in designing this directory was to establish a helpful resource for those who are relatively new to the field, those who are looking to familiarize themselves with population genetic methods, or for those considering what analyses to use in their research. This repo was built out by graduate students at the University of Memphis as part of their final project in an Ecological Genetics course (BIOL 8752/7752) during Fall 2021. We welcome comments and suggestions!

A microsatellite dataset studying the influence of dispersal of the North American native *Asimina triloba* is used in each method demonstration[^fn1].

All workflows can be found under the [PawPawPulation Wiki](https://github.com/UMEcolGenetics/PawPawPulation/wiki).

## Analyses

Below are a list of methods, approaches, or softwares with links to each wiki. These analyses are some of the most commonly used methods used in population genetics recognizing there are numerous softwares that we did not include here.

### Analysis of MOlecular VAriance (AMOVA)

AMOVA is a popular method for calculating F-statistics to assess the presence of hierarchical population structure[^fn2]. An AMOVA will compare molecular variance across the different groups (i.e., populations in this case) by calculating the within and between-groups sums of squares from a matrix of squared Euclidean distances between all pairs of individuals. AMOVA can inform how genetic variation is partitioned within or among populations.

### Bottleneck

Bottleneck is a program for detecting recent effective population size reductions from allele data frequencies[^fn3].

### Barrier

A geographic distance matrix and genetic distance matrix can be used in the software Barrier[^fn4] to identify genetic barriers on a given landscape.

### Estimating population genetic structure with the software Structure  

Population genetic structure refers to differences in allele frequencies between populations due to non-random mating between individuals. Non-random mating may be caused by inbreeding, assortative mating, and isolation due to distance and geographic barriers. In these circumstances, genetic and phenotypic differences can accumulate between populations. Another consequence of population structure is reduced heterozygosity, as alleles have a higher chance of reaching fixation (p or q = 1) or being lost altogether (p or q = 0) within smaller subpopulations.

Studying population structure is important for understanding patterns of gene flow and inferring the demographic histories of populations. Once population structure for a species is known, it is possible to deduce the origins of unknown individuals and infer the presence of migration and admixture between subpopulations. There are many different ways to analyze population genetic structure, but the software Structure is a common approach.

### Fixation Index (F<sub>ST</sub>)

F<sub>ST</sub> is a measure of population genetic differentiation due to genetic structure and is one of the most common measures in population genetics. It ranges from 0 (populations are interbreeding freely) to 1 (populations do not share any genetic diversity).

### Hardy-Weinberg Equilibrium (HWE)

Hardy-Weinberg Equilibrium is fundamental to populations genetics, and states that in the absence of influence by outside forces, genotype frequencies in a population will remain unchanged between generations[^fn5]. This principle has become an instrumental part of population genetics and is used to identify genetic structure in populations and instances of non-random mating.

### Expected Heterozygosity (He)

Expected Heterozygosity (He or Hexp) is  describes the frequency of heterozygous genotypes that would be expected to be observed under Hardy-Weinberg equilibrium. Sometimes called gene diversity, it is a common statistic for assessing genetic variation within populations.

### Isolation by Distance (IBD) 

Isolation by Distance (IBD) describes patterns of population genetic variation as a result of spatially limited gene flow. In general terms, it is an increase in genetic dissimilarity among populations as the geographic distance between them increases.

### Linkage Disequalibrium (LD)

Linkage disequilibrium (LD), sometimes referred to as gametic phase disequilibrium, occurs when alleles of two or more loci (or genes) show nonrandom association in a population[^fn6]. When two loci are considered linked, or their inheritance is correlated, one may influence the evolutionary trajectory of the other locus/loci. This may occur either from their physical proximity on the chromosome or from a functional association.

### Principal Coordinates Analysis (PCoA)

Principal Coordinates Analysis (PCoA) is a complex mathematical process and the reader is encouraged to read more about the process. In short, the major axes of variation are located within a multidimensional data set based on your measures of genetic diversity and this is plotted in 2D or 3D space. When individuals are more genetically similar they will be closer in 2D/3D space.

## Software/Packages/Tools

Barrier
Bottleneck
GenAlEx
Genepop
GenoDive
R: poppr
R: geosphere
R: hierfstat
R: vegan
STRUCTURE


# Need help?
We want to make it super-easy for PawPawPulation Genetics users and contributors to talk to us and connect with each other, to share ideas, solve problems and help make PawPawPulation Genetics an awesome resource. Here are the main channels we're running currently, we'd love to hear from you on one of them:

# GitHub
If you spot any issues please raise an issue in the GitHub repository of the analysis in question. Furthermore if you have run an analysis not detailed here or you have improved an existing workflow, with the pawpaw data, please open a pull request and we'll be glad to consider your analysis for integration in the project!


[^fn1]: Wyatt, G. E., Hamrick, J. L., & Trapnell, D. W. (2021). The role of anthropogenic dispersal in shaping the distribution and genetic composition of a widespread North American tree species. Ecology and evolution, 11(16), 11515–11532. https://doi.org/10.1002/ece3.7944
[^fn2]: Excoffier L, Smouse PE, Quattro JM. Analysis of molecular variance inferred from metric distances among DNA haplotypes: application to human mitochondrial DNA restriction data. Genetics. 1992 Jun;131(2):479-91. https://10.1093/genetics/131.2.479. PMID: 1644282; PMCID: PMC1205020.
[^fn3]:Piry S, Luikart G, Cornuet JM. Computer note. BOTTLENECK: a computer program for detecting recent reductions in the effective size using allele frequency data. Journal of heredity. 1999 Jul 1;90(4):502-3.
[^fn4]:Manni F, Guérard E, Heyer E. Geographic patterns of (genetic, morphologic, linguistic) variation: how barriers can be detected by using Monmonier's algorithm. Human biology. 2004 Apr 1:173-90.
[^fn5]: Edwards, A. W. F. (2008). G. H. Hardy (1908) and hardy–weinberg equilibrium. Genetics, 179, 1143–1150. https://10.1534/genetics.104.92940
[^fn6]: Slatkin M. (2008). Linkage disequilibrium--understanding the evolutionary past and mapping the medical future. Nat Rev Genet. 9(6):477-85. https://10.1038/nrg2361. PMID: 18427557; PMCID: PMC5124487.
