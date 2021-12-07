##### How to estimate Linkage Disequilibrium (LD) among populations of pawpaw (Asimina triloba)
## Will be finding LD using the full dataset (82 populations = 20 anthropogenic & 62 wild populations).



#################################### multi-locus LD using poppr

###### Step 1: Read in data 
## I find it easiest to import data as a '.csv' file, however you can import the data in whichever way you prefer. Below is an example of uploading the data as a '.csv' script

#Read in data:
pawpawFULL<-read.csv("pawpaw_LD.csv")


###### Step 2: Transform pawpawFULL format for poppr
## Transform the dataset (pawpawFull) into a genind object and name it 'obj2.' Two packages are required to use these commands: 'dplyr' and 'adegenet'
#install.packages("adegenet") # remove '#' if you do not have these packages already installed
#install.packages("dplyr") # remove '#' if you do not have these packages already installed
library(adegenet)
library(dplyr)
obj2<-df2genind(pawpawFULL, ploidy = 2, sep = "/") # the 'ploidy' argument is set to 2 since we know that it is a diploid species; the 'sep' argument is '"/"' since alleles are separated by a slash in each column of the dataset. 


###### Step 3: Calculating Ia and rbarD using poppr ######
## There are a couple of ways in poppr that you can get the Ia and rbarD values and their associated p-values:

## 3.1: Using function poppr()
# First, you can run the function poppr() which calculates indices of heterozygosity, evenness, and linkage. In this tutorial, we will only focus on the results of linkage, although this function automatically gives you the results for heterozygosity (e.g., H) and evenness (e.g., E.5) as well.
#install.packages("poppr") # remove '#' if you do not have these packages already installed
library(poppr)
poppr_pawpaw<-poppr(dat=obj2, total = FALSE, sample = 999)

#poppr also gives you the option to plot the data
#Values are same, histograms are different:
hist_ia<- poppr(dat=obj2, total = TRUE, sample = 1000, index = "Ia", plot = TRUE)
hist_rbarD<- poppr(dat=obj2, total = TRUE, sample = 1000, index = "rbarD", plot = TRUE)


## 3.2 Using function ia()
# Second, you can run the command ia() which calculates the index of association over all loci in the dataset. This command requires the data to be a genind or genclone object.
#install.packages("poppr") # remove '#' if you do not have these packages already installed
#library(poppr) # remove '#' if you have not already libraried 'poppr'
ia<-ia(gid = obj2, sample = 999, quiet = TRUE, valuereturn = TRUE) 
ia # to view the results of ia



#################################### single-locus LD using poppr
# To calculate single-locus LD, you will need to use the function pair.ia() which calculates the index of association in a pairwise manner among all loci. Input should be very similar to previous poppr functions. 
res<- pair.ia(obj2, sample = 999, valuereturn = TRUE)
res
plot(res, index = "Ia")
plot(res, index = "rbarD")




## Have questions about poppr or other packages/functions?
?poppr


## To find out citations necessary for poppr:
citation("poppr")
#To cite poppr in publications or presentations, please specify poppr version (in this case v.2.9.2) and the following citations:
#Kamvar, Z. N., Brooks, J. C., and Grünwald, N. J. 2015. Novel R tools for analysis of genome-wide population genetic data with emphasis on clonality. Frontiers in Genetics 6:208. https://doi.org/10.3389/fgene.2015.00208
#Kamvar, Z. N., Tabima, J. F., and Grünwald, N. J. 2014. Poppr: An R package for genetic analysis of populations with clonal, partially clonal, and/or sexual reproduction. PeerJ 2:e281 . https://doi.org/10.7717/peerj.281 
