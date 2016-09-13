#' NewsStat
#'
#' NewsStat allows you to extract key statistics from a range of online content such as news, websites and blogs.
#' @param doc_html input query string
#' @keywords
#' News
#' Text
#' Statistics
#' @export
#' @examples
#' NewsStat()
#' NewsStat("http://www.digitaltrends.com/business/equal-pay-pledge-tech/")
NewsStat <- function(doc_html) {
  require(RCurl)
  require(XML)
  require(stringr)
  
  # Parse the URL
  doc_html <- htmlTreeParse(doc_html, useInternal = TRUE)
  
  # Clean unstructured text
  news_text <- unlist(xpathApply(doc_html, "(//p)|(//ul)", xmlValue))
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