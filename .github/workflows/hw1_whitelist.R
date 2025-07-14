allowed_files <- c("hw1.md",
                  "hw1.Rmd",
                  "hw1.qmd",
                  "README.md",
                  "hw1.Rproj",
                  "hw1_whitelist.R",
                  ".gitignore")

files <- dir()
disallowed_files <- files[!(files %in% allowed_files)]
disallowed_files_wo_Rproj <- disallowed_files[!grepl("\\.Rproj", disallowed_files)]

if (length(disallowed_files_wo_Rproj != 0)) {
  cat("Disallowed files found:\n")
  cat("  (remove the following files from your repo)\n\n")
  
  for (file in disallowed_files_wo_Rproj)
    cat("*", file, "\n")
  
  quit("no", 1, FALSE)
}