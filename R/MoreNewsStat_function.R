#’ MoreNewsStat
#'
#' MoreNewsStat allows you to extract more stats from more news.
#' @param doc_html input query string
#' @import RCurl stringr XML
#' @keywords
#' News
#' Text
#' Statistics
#' @examples
#' MoreNewsStat()
#' MoreNewsStat("https://www.theguardian.com/small-business-network/2016/aug/16/how-the-ordnance-survey-is-mapping-out-a-future-for-geotech")
#' @export
#'

MoreNewsStat <- function(doc_html) {

  # Parse the URL
  doc_html <- getURL(doc_html)

  doc_html <- htmlTreeParse(doc_html, useInternal = TRUE)

  # Clean unstructured text
  news_text <- unlist(xpathApply(doc_html, "//p", xmlValue))
  news_text <- gsub('\\n', ' ', news_text)
  news_text <- paste(news_text, collapse = ' ')

  # Define statistical insights - here are some of the most common
  stat_insights = c("(%)|(percent)|(percentage)|(per cent)|(average)|(bias)|(calculate)|
                    (causality)|(chi-square)|(correlation)|(data)|(distribution)|
                    (estimate)|(forecast)|(figure)|(frequency)|(hypothesis)|(inference)|
                    (regression)|(mean)|(median)|(metadata)|(normal distribution)|
                    (outlier)|(probability)|(p-value)|(pattern)|
                    (rate)|(skew)|(statistic)|(standard deviation)|(statistical model)|
                    (statistical significance)|(statistically significant)|(survey)|
                    (trend)")

    # Separate sentences in text
    sentences <- unlist(strsplit(news_text,split="\\. "))

    sentences[grep(stat_insights, sentences)]

  }
