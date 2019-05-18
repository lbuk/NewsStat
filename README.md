# NewsStat

## What is it?
NewsStat is a set of functions that allow you to extract text containing statistics from online news. Simply enter a URL and NewsStat will return sentences containing key stats including, but not limited to: percentages, use of data and references to outliers. It can also be used to extract stats from non-news sites such as blogs. NewsStat is a work in progress - feel free to contribute, build on it and let me know if there are any issues.

## Install
To install NewsStat, run the code provided below. 

```
install.packages("devtools")
library("devtools")
```

```
devtools::source_url('https://raw.githubusercontent.com/lbuk/NewsStat/master/NewsStat_function.R')
```
Note: NewsStat requires an R version >= 3.2.3 so you may need to [update R or RStudio](http://bioinfo.umassmed.edu/bootstrappers/bootstrappers-courses/courses/rCourse/Additional_Resources/Updating_R.html).

## How do I use it?
Here is an example use of NewsStat:
```
NewsStat("https://www.huffingtonpost.co.uk/entry/should-we-worry-about-londons-air-pollution-following_uk_5b5a1a92e4b0eb29100e594e")
```

## What can I use NewsStat for?
NewsStat can make your life easier by quickly extracting key statistics from online news content. You can use NewsStat for blogs and other non-news sites as well. It is part of several experimental tools - including  SimText - that were created as part of a 2016 Google Fellowship at BBC News Labs to help the public and journalists mine online news text.

## What can't I use it for?
The package does not extract data visualisations, tables or other unsupported formats. It is best used for extracting stats after reading the text. You won't be able to use the function on news that's behind a paywall.
