#' torino-style ioslides
#' @param ... Extra parameters to pass to `rmarkdown::ioslides_presentation`.
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
