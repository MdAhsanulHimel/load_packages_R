# load_packages()

To use the function, run the following code in R-
```{r}
source("https://raw.githubusercontent.com/MdAhsanulHimel/load_packages_R/master/script.R")
```
This will source the function to your R global environment, and you will be able to use it. 

This function loads all the passed packages that are installed. If any of the packages are not installed, then it installs first and then loads to the environment.

**Arguments:**    
`packages`: A vector of packages that needs to be loaded   



Example:
```{r}
load_packages(packages = c("tidyverse","readxl"))
```

Thanks!
