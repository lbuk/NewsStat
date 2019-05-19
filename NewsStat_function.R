NewsStat <- function(doc_html) {

  require(RCurl)
  require(stringr)
  require(XML)

  # Parse the URL
  doc_html <- getURL(doc_html, followlocation = TRUE)

  doc_html <- htmlParse(doc_html, asText=TRUE)

  # Clean unstructured text
  news_text <- xpathSApply(doc_html, "//p", xmlValue)

  # Define statistical insights - here are some of the most common
  stat_insights = c("(%)|(percent)|(percentage)|(per cent)|(average)|(bias)|(billion)|(calculate)|
                    (causality)|(chi-square)|(correlation)|(data)|(distribution)|
                    (estimate)|(forecast)|(frequency)|(hundred)|(hypothesis)|(inference)|
                    (regression)|(mean)|(median)|(metadata)|(million)|(normal distribution)|
                    (outlier)|(probability)|(p-value)|
                    (rate)|(skew)|(statistic)|(standard deviation)|(statistical model)|
                    (statistical significance)|(statistically significant)|(survey)|
                    (thousand)|(trend)|(trillion)|(1)|(2)|(3)|(4)|(5)|(6)|(7)|(8)|(9)|(0)")

    # Separate sentences in text
    sentences <- unlist(strsplit(news_text, split="\\. "))

    sentences[grep(stat_insights, sentences)]

  }
