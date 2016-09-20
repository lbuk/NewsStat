# NewsStat

## What is it?
NewsStat is an R package that allows you to extract text containing statistics from online news. Simply enter a URL and NewsStat will return sentences containing key stats including, but not limited to: percentages, use of data and references to outliers. It can also be used to extract stats from non-news sites such as websites and blogs. NewsStat is a work in progress - feel free to contribute, build on it and let me know if there are any issues.

## Install
To install and use NewsStat, use the code provided below. Note: NewsStat requires an R version >= 3.2.3 so you may need to [update your version](http://bioinfo.umassmed.edu/bootstrappers/bootstrappers-courses/courses/rCourse/Additional_Resources/Updating_R.html).
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
Install using the code above and select your URL. Here are a few example inputs:
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
If your URL begins with "https" rather than "http" then different rules apply. Some sites - The Guardian, The Washington Post and Buzzfeed - publish their content with a secure "https". This is where MoreNewsStat comes in. It works in much the same way as NewsStat:
```
MoreNewsStat("https://www.theguardian.com/business/2016/sep/04/morrisons-cut-food-prices-12-percent-uk-deflation")
```
## What can I use NewsStat for?
Looking for statistics in text can be a difficult and arduous task. NewsStat can make your life easier by quickly extracting key statistics from online news content. For example, if you're looking to find statistics from financial news or the latest political stories, NewsStat can quickly find and extract those key insights. You can use NewsStat for blogs, websites and other non-news sites as well. It was built following a 2016 Google Fellowship at BBC News Labs.

## What can't I use it for?
The package does not extract data visualisations, tables or other unsupported formats. It is best used for extracting stats from paragraphs in text. Bear in mind - you won't be able to use the package on news that's behind a paywall. If the news content is behind or linked to a paywall then in most cases it will return an error. 

## Running NewsStat in Python
If you'd rather use Python, try the code below:
```
import rpy2
import urllib2

from rpy2.robjects.packages import SignatureTranslatedAnonymousPackage

NewsStat_URL = urllib2.urlopen('https://raw.githubusercontent.com/lbuk/NewsStat_Test_Functions/master/R/NewsStat_function.R')
string = ''.join(NewsStat_URL.readlines())
NewsStat = SignatureTranslatedAnonymousPackage(string, "NewsStat")

MoreNewsStat_URL = urllib2.urlopen('https://raw.githubusercontent.com/lbuk/NewsStat_Test_Functions/master/R/MoreNewsStat_function.R')
more_string = ''.join(MoreNewsStat_URL.readlines())
MoreNewsStat = SignatureTranslatedAnonymousPackage(more_string, "MoreNewsStat")
```

## License
Copyright 2016 Liam Bolton

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)
