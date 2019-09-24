#' torino-style ioslides
#' @param ... Extra parameters to pass to `rmarkdown::ioslides_presentation`.
#' @note The original torino style is designed by Marco Barisione, see references for more details.
#' @references https://github.com/bbatsov/beamer-torino-theme
#' @references https://blog.barisione.org/2007/09/18/torino-a-pretty-theme-for-latex-beamer/
#' @export
torino <- function(...) {
  # locations of resource files in the package
  pkg_resource <- function(...) {
    path <- "rmarkdown/templates/torino/"
    system.file(file.path(path, ...), package = "shinySlides")
  }
  template <- pkg_resource("torino.html")

  # call the base html_document function
  rmarkdown::ioslides_presentation(
    includes = rmarkdown::includes(after_body = template),
    ...
  )
}


#' TUDelft-style ioslides
#' @param ... Extra parameters to pass to `rmarkdown::ioslides_presentation`.
#' @export
TUDelft <- function(...) {
  # locations of resource files in the package
  pkg_resource <- function(...) {
    path <- "rmarkdown/templates/TUDelft/"
    system.file(file.path(path, ...), package = "shinySlides")
  }
  template <- pkg_resource("TUDelft.html")

  # call the base html_document function
  rmarkdown::ioslides_presentation(
    includes = rmarkdown::includes(after_body = template),
    ...
  )
}
