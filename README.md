# NewsStat

## What is it?
NewsStat is a set of functions that allow you to extract text containing statistics from online news. Simply enter a URL and NewsStat will return sentences containing key stats including, but not limited to: percentages, use of data and references to outliers. It can also be used to extract stats from non-news sites such as websites and blogs. NewsStat is a work in progress - feel free to contribute, build on it and let me know if there are any issues.

## Install
To use NewsStat, run the code provided below. You can view the code [here](https://github.com/lbuk/NewsStat_Test_Functions/tree/master/R). Note: NewsStat requires an R version >= 3.2.3 so you may need to [update your version](http://bioinfo.umassmed.edu/bootstrappers/bootstrappers-courses/courses/rCourse/Additional_Resources/Updating_R.html) of R or R Studio.

```
install.packages("devtools")
library("devtools")
```

```
devtools::source_url('https://raw.githubusercontent.com/lbuk/NewsStat/master/NewsStat_function.R')
```

## How do I use it?
Install using the code above and copy your URL. Here are a few example uses:
```
NewsStat("http://www.bbc.co.uk/news/uk-37345436")
```
```
NewsStat("http://www.digitaltrends.com/business/equal-pay-pledge-tech/")
```
```
NewsStat("http://uk.reuters.com/article/us-usa-stocks-idUKKCN11J19G")
```

```
NewsStat("https://www.theguardian.com/business/2016/sep/04/morrisons-cut-food-prices-12-percent-uk-deflation")
```
## What can I use NewsStat for?
Looking for statistics in text can be a difficult and arduous task. NewsStat can make your life easier by quickly extracting key statistics from online news content. For example, if you're looking to find statistics from financial news or the latest political stories, NewsStat can quickly find and extract those key insights. You can use NewsStat for blogs, websites and other non-news sites as well. It is part of a handful of small tools - including [SimText](https://github.com/lbuk/simtext_function) and [StatIndex](https://github.com/lbuk/StatIndex) - that I created following a 2016 Google Fellowship at BBC News Labs to help the public and journalists mine online news text.

## What can't I use it for?
The package does not extract data visualisations, tables or other unsupported formats. It is best used for extracting stats from text. Bear in mind - you won't be able to use the package on news that's behind a paywall. If the news content is behind or linked to a paywall then in most cases it will return an error. 

## License
MIT License. Copyright 2016 Liam Bolton
