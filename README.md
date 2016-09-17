# NewsStat

## What is it?
NewsStat is an R package and set of functions that allow you to extract text containing statistics from online news. Simply enter a URL and NewsStat will return sentences containing key stats including, but not limited to: percentages, use of data and references to outliers. It can also be used to extract stats from websites and blogs. NewsStat is a work in progress - feel free to contribute, build on it and let me know if there are any issues.

## Install
To install and use NewsStat, please use the code provided below. Note: NewsStat requires an R version >= 3.2.3 so you may need to [update your version](http://bioinfo.umassmed.edu/bootstrappers/bootstrappers-courses/courses/rCourse/Additional_Resources/Updating_R.html).
```
install.packages("devtools")
library("devtools")

devtools::install_github("lbuk/NewsStat")
library(NewsStat)
```
Alternatively, if there are any issues then running these two lines of code will do the trick:
```
devtools::source_url('https://raw.githubusercontent.com/lbuk/NewsStat_Test_Functions/master/R/NewsStat_function.R')
devtools::source_url('https://raw.githubusercontent.com/lbuk/NewsStat_Test_Functions/master/R/MoreNewsStat_function.R')
```
## How do I use it?
Install using the code above and select your URL. Here are a few  example inputs:
```
NewsStat("http://www.bbc.co.uk/news/uk-37345436")
```
```
NewsStat("http://www.digitaltrends.com/business/equal-pay-pledge-tech/")
```
```
NewsStat("http://uk.reuters.com/article/us-usa-stocks-idUKKCN11J19G")
```
### MoreNewsStat
If your URL begins with "https" rather than "http" then different rules apply. Some sites - The Guardian, The Washington Post and Buzzfeed, for example - publish their content with a secure "https". This is where MoreNewsStat() comes in. It works in much the same way as NewsStat:
```
MoreNewsStat("https://www.theguardian.com/business/2016/sep/04/morrisons-cut-food-prices-12-percent-uk-deflation")
```
## What can I use NewsStat for?
Looking for statistics in text can be a difficult and arduous task. NewsStat can make your life easier by quickly extracting key statistics from online news content. For example, if you're looking to find statistics from financial news or the latest political stories, NewsStat can quickly find and extract those key insights. You can use NewsStat for blogs, websites and other non-news as well. It was built following a project undertaken as part of a Google Fellowship at BBC News Labs.

## What can't I use it for?
The package does not extract data visualisations, tables or other unsupported formats. It is best used for extracting stats from paragraphs in text. You won't be able to use NewsStat if the news is behind a paywall.

## License
Copyright 2016 Liam Bolton

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)
