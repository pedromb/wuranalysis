---
title       : BRICS Universities Interactive Chart
author      : Pedro Magalhães Bernardo
job         : February 18, 2017
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
<style>

.title-slide {
  background-color: #FFFFFF;
}
</style>

## Introduction
<br/>
This work is the week 3 assignment for the Data Products course by John Hopkins University on Coursera, as part of their Data Science Specialization.  
<br/>
# BRICS 
<br/>
BRICS is the acronym for an association of five major emerging national economies: Brazil, Russia, India, China and South Africa.  
<br/>
The chart at the end of this slide aims to compare the Universities from this five countries, featured in the Center for World University Rankings.

---

## Data

The data used comes from the Center for World University Rankings and can be found <a href="https://www.kaggle.com/mylesoneill/world-university-rankings">here</a>.

The comparison performed here takes in account the following features:
  1. Publications
  2. Alumni Employment
  3. Final score
  
It is important to notice that in the original dataset, the features, except the final score, are ranked based, meaning that a lower value means a better rank. To make this analysis more intuitive, the features were scaled from 0 to 100, in which a higher value means a better rank.

--- 

## Chart



<iframe src="plotly.html" width=100% height=10% allowtransparency="true"> </iframe>
