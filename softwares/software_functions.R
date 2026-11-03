# Print an HTML card for a Quarto extension/template hosted on GitHub.
# Use in a chunk with `results='asis'`.
quarto_extension <- function(
  repo,
  title,
  description,
  owner = "ResearchInfuser",
  img = NULL
) {
  repo_url <- paste0("https://github.com/", owner, "/", repo)
  if (is.null(img)) {
    img <- paste0(repo_url, "/raw/main/", repo, ".jpg")
  }
  cat(
    "<div class='template-card'>\n<a href='",
    repo_url,
    "' class='template-card-img-link'><img src='",
    img,
    "' class='template-card-img' alt='",
    title,
    " example'></a>\n<div class='template-card-body'>\n\n#### [",
    title,
    "](",
    repo_url,
    ")\n\n",
    description,
    "\n\n<pre class='template-card-cmd'><code>quarto use template ",
    owner,
    "/",
    repo,
    "</code></pre>\n</div>\n</div>\n\n",
    sep = ""
  )
}
