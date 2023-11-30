load_packages <- function(packages) {
  
  # check if packages are installed
  not_installed <- packages[!packages %in% rownames(installed.packages())]
  # check packages that are not already loaded but installed
  not_loaded_packages <- packages[!(packages %in% .packages()) & 
                                   (packages %in% rownames(installed.packages()))]
  
  if(length(not_installed)>0){
    # initiate installation part if any of the packages is not installed
    message("Installing packages:", paste(" ", not_installed))
    install.packages(not_installed) |> suppressMessages()
    message("Loading installed package(s):", paste(" ", not_installed))
    lapply(X = not_installed, FUN = library, character.only = TRUE) |> invisible()
  }
  
  if(length(not_loaded_packages)>0){
    # initiate loading part if packages are not loaded
    message("Loading package(s):", paste(" ", not_loaded_packages))
    lapply(X = packages, FUN = library, character.only = TRUE) |> invisible()
  }
}

