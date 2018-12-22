#' Create beamer style-sheet
#' This function creates an 'assets' folder at the working directory.
#' The folder contains a stylesheet and other auxiliary files to be applied
#' to an ioslide-document.
#' @export
new_beamer_style <- function() {
  if (dir.exists("assets"))
    stop("Directory 'assets' already exists. Use overwrite = T if you'd like to overwrite it.")

  file.copy(
    from = system.file("torino_uom_template/", package = "shinySlides"),
    to = getwd(),
    recursive = T
  )

  file.rename("torino_uom_template", "assets")
}
