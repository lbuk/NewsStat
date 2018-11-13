NewsStat <- function(doc_html) {

  require(RCurl)
  require(stringr)
  require(XML)

  # Parse the URL
  doc_html <- getURL(doc_html)

  doc_html <- htmlTreeParse(doc_html, useInternal = TRUE)

  # Clean unstructured text
  news_text <- unlist(xpathApply(doc_html, "//p", xmlValue))
  news_text <- gsub('\\n', ' ', news_text)
  news_text <- paste(news_text, collapse = ' ')

  # Define statistical insights - here are some of the most common
  stat_insights = c("(%)|(percent)|(percentage)|(per cent)|(average)|(bias)|(billion)|(calculate)|
                    (causality)|(chi-square)|(correlation)|(data)|(distribution)|
                    (estimate)|(forecast)|(figure)|(frequency)|(hundred)|(hypothesis)|(inference)|
                    (regression)|(mean)|(median)|(metadata)|(million)|(normal distribution)|
                    (outlier)|(probability)|(p-value)|(pattern)|
                    (rate)|(skew)|(statistic)|(standard deviation)|(statistical model)|
                    (statistical significance)|(statistically significant)|(survey)|
                    (thousand)|(trend)|(trillion)|(1)|(2)|(3)|(4)|(5)|(6)|(7)|(8)|(9)|(0)")

    # Separate sentences in text
    sentences <- unlist(strsplit(news_text,split="\\. "))

    sentences[grep(stat_insights, sentences)]

  }
