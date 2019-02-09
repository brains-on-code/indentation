# Data repository for results of paper "Indentations - A Simple Matter of Style or Program Comprehension?"

This repository contains the data we collected during our experiment examining the effect of indentation on program comprehension and visual effort.

### Paper Abstract
Based on the positive findings of a study by [Miara and  others],  we  reexamine  the  effect  of  code  indentation on  program  comprehension.  Our  aim  is  to  provide  empirical evidence  for  the  suggested  level  of  indentation  made  by  many style  guides.  Following  Miara  and  others,  we  also  included  the perceived difficulty, and we extended the original design to gain additional  insights  into  the  influence  of  indentation  on  visual effort by employing an eye-tracker. In the course of our study, we asked 22 participants to calculate the output of Java code snippets with different levels of indentation, while we recorded their gaze behavior. We could not find any indication that the indentation levels affect program comprehension or visual effort, so we could not replicate the findings of Miara and others. Nevertheless, our modernization of the original experiment design are a promising starting point for future studies in this field.

## Descprition of Data
The data is splitted into the set of 22 participants that saw a randomized order of indentation and program snippet and the set which additionally contains those 17 participants that saw the same order. For our paper, we only included the set 22 'random' trials into our analysis.

For each set there are two folders *TrialData* and *Analysis*:

### Trial Data
The raw data contains for each participant with his/her *ID*:
* The eye tracking data in the file *Gaze_ID*
* General information such as age, gender, etc. about the participant and the trial in general in the file *GeneralInfo_ID*
* The positions of the snippets in the rating with equal and real indentations in *RatingsEqualIndentations_ID* and *RatingsRealIndentations_ID* respectively
* The result and time for each snippet in *Results_ID*

### Analysis data
These files contain the summarized information of all participants of the respective set:
* For the gaze analysis of our data, we imported the gaze data of the participants into [Ogama] and calculated the fixations and saccades with this tool. The result of this analysis is stored in *CalculatedGaze*
* The general info of all participants is stored in "GeneralInfo"
* The ratings with equal and real indentations are stored in *RatingsEqualIndentations* and *RatingsRealIndentation* respectively
* The results of all participants are stored in *Results*


## Analysis
The following table shows the results of the statistical analysis:

| Attribute | Test |  | 22 (random) | 39 (all) |
|---------------------------|------------------------------|------------|-----------|---------|
| FixationDurationMean(log-transformed) | ANOVA | F-value | 3,06 |  |
|  |  | p-value | 0,03 |  |
|  |  | eta-square | 0,04 |  |
|  |  |  |  |  |
|  | Shapiro-Wilk | W-value |  | 0,35 |
|  |  | p-value |  | 0,00 |
|  |  |  |  |  |
|  | Shapiro-Wilk (untransformed) | W-value | 0,99 | 0,79 |
|  |  | p-value | 0,57 | 0,00 |
|  |  |  |  |  |
|  | Friedman | Chi-square |  | 15,93 |
|  |  | p-value |  | 0,00 |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
| FixationDurationMedian | ANOVA | F-value | 2,85 | 1,64 |
|  |  | p-value | 0,04 | 0,18 |
|  |  | eta-square | 0,03 |  |
|  |  |  |  |  |
|  | Shapiro-Wilk | W-value |  | 0,61 |
|  |  | p-value |  | 0,00 |
|  |  |  |  |  |
|  | Shapiro-Wilk (original) | W-value | 0,98 | 0,50 |
|  |  | p-value | 0,18 | 0,00 |
|  |  |  |  |  |
|  | Friedman | Chi-square |  | 16,04 |
|  |  | p-value |  | 0,00 |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
| Time (log-transformed) | ANOVA | F-value | 0,44 | 2,24 |
|  |  | p-value | 0,72 | 0,09 |
|  |  |  |  |  |
|  | Shapiro-Wilk | W-value | 0,98 | 0,99 |
|  |  | p-value | 0,10 | 0,16 |
|  |  |  |  |  |
|  | Shapiro-Wilk (untransformed) | W-value |  | 0,87 |
|  |  | p-value |  | 0,00 |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
| SaccadicAmplitude(log-transformed) | ANOVA | F-value | 1,67 |  |
|  |  | p-value | 0,18 |  |
|  |  |  |  |  |
|  | Shapiro-Wilk | W-value | 0,98 | 0,87 |
|  |  | p-value | 0,11 | 0,00 |
|  |  |  |  |  |
|  | Shapiro-Wilk (untransformed) | W-value | 0,95 | 0,50 |
|  |  | p-value | 0,001 | 0,00 |
|  |  |  |  |  |
|  | Friedman | Chi-square |  | 13,61 |
|  |  | p-value |  | 0,00 |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
| Correctness | Friedman | Chi-square | 3,23 | 0,36 |
|  |  | p-value | 0,36 | 0,95 |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
| RatingReal | Friedman | Chi-square | 5,35 | 18,51 |
|  |  | p-value | 0,15 | 0,00 |
|  |  |  |  |  |
|  |  |  |  |  |
|  |  |  |  |  |
| FixationRate | Friedman | Chi-square | 7,36 | 14,88 |
|  |  | p-value | 0,06 | 0,00 |
|  |  |  |  |  |
|  | Shapiro-Wilk | W-value | 0,76 | 0,27247 |
|  |  | p-value | 0,00 | 0 |
|  |  |  |  |  |
|  | Shapiro-Wilk (log) | W-value | 0,56 | 0,71 |
|  |  | p-value | 0,00 | 0,00 |

The analysis was performed with **R**. See the *Eval.R" script for some examples.


   [Miara and  others]: <https://dl.acm.org/citation.cfm?id=358437>
   [Ogama]: <http://www.ogama.net/>
   


