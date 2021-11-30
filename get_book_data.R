if(!dir.exists(here::here('ma_book_data'))) {
  library(curl)
  url <- "ftp://ftp.wiley.com/public/sci_tech_med/multivariate_analysis_3e/multivariate_analysis%20-%203rd%20Ed.zip"

  temp_file <- tempfile(fileext = ".zip")

  curl_download(url, destfile = temp_file)
  unzip(temp_file, exdir = here::here())
  file.rename(here::here('multivariate_analysis - 3rd Ed/'),
              here::here('ma_book_data'))
}

