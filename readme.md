## shinySlides
Creates a beamer like template for ioslides that is compatible with shiny apps

### What it looks like
[Some screenshot / gif here]


### Usage

1. Set the working directory to the directory in which your .RMD file resides.
2. Run `shinySlides::new_beamer_style()`, this creates an 'assets' folder containing the stylesheet.
3. Suppose the stylesheet is named "tornino_style.css" and the corresponding javascript that applies the style is named "beamer.js", one needs to 
- add `css: assets/torino_style.css` to the header of the RMD file, and
- add `<script src = "assets/beamer.js"></script>` at the end of the RMD file. 

4. To include a shiny app, add `shiny::addResourcePath("assets", "assets/")` right before the ShinyApp. You only need to do this once for the entire document.

This document should have a structure as follows:
```
---
title: "..."
...other metadata ...
output: 
  ioslides_presentation:
    runtime: shiny
    css: assets/torino_style.css
---

## A slide

...Contents here...


## A shiny app

  ```{r, echo = FALSE}
  addResourcePath("assets", "assets/")   # Must include this line !
  shinyAppDir("DIRECTORY_CONTAINING_THE_SHINY_APP",
   options = list(width = "100%", height = 700)
  )
  ```

## Some other slides

...


<script src = "assets/beamer.js"></script>
```


### Known issue
Problem: The images and shiny app don't render properly in the second time if you render the exact same document twice consecutively. 

Why: (Guess) RStudio seems to do some sort of caching when a shiny app is rendered, causing some path issues.

Solution: Change the document by adding/removing a space anywhere, then knit the document. This will force a fresh rendering.
