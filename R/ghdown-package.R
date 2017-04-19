#' Create a Github styled HTML document
#'
#' [rmarkdown::github_document()] can create a temporary HTML preview of an
#' RMarkdown file in order to show what a markdown document would look like on
#' Github. This function is a wrapper [rmarkdown::html_document()] that uses the
#' Github CSS style used in the HTML previews created by `github_document()`.
#'
#' @param ... parameters passed onto [rmarkdown::html_document()]
#' @return R Markdown output format to pass to [rmarkdown::render()]
#' @export
github_html_document <- function(...) {
  css <- system.file("github.css", package = "ghdown")

  # call the base html_document function
  rmarkdown::html_document(..., css = css)
}
