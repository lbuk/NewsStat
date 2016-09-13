# NewsStat

## What is it?
NewsStat is an R package that allows you to extract text containing statistics from online news. Simply enter a URL and NewsStat will return sentences containing key stats including, but not limited to: percentages, use of data and references to outliers.

## Install
```
install.packages("devtools")
library("devtools")

devtools::install_github("lbuk/NewsStat")
library(NewsStat)
```
Note: NewsStat requires an R version >= 3.2.3

## How do I use it?
Install the packages using the code above, select your URL. Below you'll find an example.
```
NewsStat("http://www.digitaltrends.com/business/equal-pay-pledge-tech/")
```
```
NewsStat("NewsStat("http://uk.reuters.com/article/us-usa-stocks-idUKKCN11J19G")
```
## What can I use NewsStat for?
Whether you're working in news, finance, policy or just an interested reader, statistics are an important part of life. However, looking for statistics in text can be a difficult and arduous task. NewsStat can make your life easier by quickly extracting key statistics from online news content. For example, if you're looking to find statistics from a financial news story or the latest political stories, NewsStat can quickly find and extract those key insights. 

## License
Copyright 2016 Liam Bolton.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this except in compliance with the License.