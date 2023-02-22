load_packages <- function(packages) {
  # check if packages are installed
  not_installed <- packages[!packages %in% rownames(installed.packages())]
  # initiate installation part if any of the packages is not installed
  if(length(not_installed)>0){
    message("Installing packages:", paste(" ", not_installed))
    install.packages(not_installed) |> suppressMessages()
  }
  # load all packages
  message("Loading packages:", paste(" ", packages))
  lapply(X = packages, FUN = library, character.only = TRUE) |> invisible()
}