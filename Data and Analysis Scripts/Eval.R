results <- read.csv(Results.csv",head=TRUE,sep=";")
results$Indentation <- sub("^", "Indent ", results$Indentation )
generalInfos <- read.csv(file="GeneralInfo.csv",head=TRUE,sep=";", colClasses="character")
ratingReal <- read.csv(file="RatingsRealIndentations.csv",head=TRUE,sep=";")
ratingEqual <- read.csv(file="RatingsEqualIndentations.csv",head=TRUE,sep=";")


ogama <- read.csv(file="D:\CalculatedGaze.csv",head=TRUE,sep=";")

ogama_log <- ogama
ogama_log$FixationDurationMean <- log(ogama$FixationDurationMean)
ogama_log$FixationDurationMedian <- log(ogama$FixationDurationMedian)
ogama_log$FixationCountPerSec <- log(ogama$FixationCountPerSec)
ogama_log$SaccadeRatio <- log(ogama$SaccadeRatio)
ogama_log$SaccadeLengthAverage <- log(ogama$SaccadeLengthAverage)


#fixations <- read.csv(file="D:\\Dokumente\\ba\\PythonCode\\GazeData\\Fixations.csv",head=TRUE,sep=";")
#saccades <- read.csv(file="D:\\Dokumente\\ba\\PythonCode\\GazeData\\Saccades.csv",head=TRUE,sep=";")

#generalInfos <- merge(rightAnswersperSubject, generalInfos, by="SubjectID")

# print(summary(results))
# print(summary(generalInfos))
# print(summary(ratingEqual))
# print(summary(ratingReal))

# y <- log(rightResults$Time)

# qqnorm(y)
# qqline(y)
# print(shapiro.test(y))
# print( ks.test(y,"pexp"))


# x <- timesPerSubject
# iq <- IQR(x$Time)
# fq <- as.numeric(quantile(x$Time, .25))
# tq <- as.numeric(quantile(x$Time, .75))
# test <- x[x$Time > (fq - 1.5 * iq) & x$Time < (tq + 1.5*iq),]

library(ez)

anovData <- results_info
anovData$Indentation <- sub("^", "Indent ", anovData$Indentation )
anovData$Number <-sub("^", "Pos ", anovData$Number)
anovData$Time <- log(anovData$Time)


anovaTimeIndent <- ezANOVA(
   data=anovData,
   dv=.(Time),
   wid=.(SubjectID),
   within=.(Indentation),
)



anovaTimeClass <- ezANOVA(
  data=anovData,
  dv=.(Time),
  wid=.(SubjectID),
  within=.(Snippet),
)


anovaFixCOuntIndent <- ezANOVA(
  data=ogama,
  dv=.(FixationCount),
  wid=.(SubjectID),
  within=.(Indentation),
)

anovaFixDurationMeanIndent <- ezANOVA(
  data=ogama,
  dv=.(FixationDurationMean),
  wid=.(SubjectID),
  within=.(Indentation),
)

anovaFixDurationMedianIndent <- ezANOVA(
  data=ogama,
  dv=.(FixationDurationMedian),
  wid=.(SubjectID),
  within=.(Indentation),
)

anovaFixRateIndent <- ezANOVA(
  data=ogama,
  dv=.(FixationCountPerSec),
  wid=.(SubjectID),
  within=.(Indentation),
)


anovaSaccAmIndent <- ezANOVA(
  data=ogama_log,
  dv=.(SaccadeLengthAverage),
  wid=.(SubjectID),
  within=.(Indentation),
)


# Friedman
friedman.test(FixationCountPerSec ~ Indentation | SubjectID, ogama)
