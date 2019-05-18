# NewsStat

## What is it?
NewsStat is an R function that allow you to extract text containing statistics from online news. Simply enter a URL and NewsStat will extract sentences containing statistical text. It can also be used to extract stats from non-news sites such as blogs. 

Note: NewsStat is an experimental tool that may not work if the website has a paywall.

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
NewsStat("https://www.theplanner.co.uk/news/%E2%80%98affordable-housing%E2%80%99-on-the-rise-in-london-says-gla")
```

## What can I use NewsStat for?
NewsStat is an R function that can be used to extract statistial text from webpages. It is an experimental tools that was created as part of a 2016 Google Fellowship at BBC News Labs to help the public and journalists mine online news text.

## What can't I use it for?
The package does not extract data visualisations, tables or other unsupported formats. It is best used for extracting stats after reading the text. You won't be able to use the function on pages that are behind a paywall.
