# make R help output appear in separate X-window
xthelp <- function() {
    tdir <- tempdir()
    pgr <- paste(tdir, "/pgr", sep="")
    con <- file(pgr, "w")
    cat("#! /bin/bash\n", file=con)
    cat("export HLPFIL=`mktemp ", tdir, "/R_hlp.XXXXXX`\n", sep="", file=con)
    cat("cat > $HLPFIL\nxterm -e less $HLPFIL &\n", file=con)
    close(con)
    system(paste("chmod 755 ", pgr, sep=""))
    options(pager=pgr)
}

# compare installed packages to master list and install missing packages
check_packages <- function(){
    local_packs <- dimnames(utils::installed.packages())[[1]]
    load("~/system/R/package_list.RData")
    a <- package_list[!(package_list %in% local_packs)]
    if (length(a)){
        cat("The following packages are not installed on this system:\n")
        cat(a, "\n")
        cat('To update all packages, enter command "install.packages(pkgs)".\n')
    } else{
        cat("Packages up-to-date with master list.\n")
    }
}

# update master package list on quit
.Last <- function(){
    cat("Updating package list.\n")
    package_list <- dimnames(utils::installed.packages())[[1]]
    save(package_list, file="~/system/R/package_list.RData")
}
