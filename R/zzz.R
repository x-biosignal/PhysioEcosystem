.onAttach <- function(libname, pkgname) {
  stack <- c("PhysioExperiment", "PhysioIO", "PhysioPreprocess", "PhysioAnalysis")
  packageStartupMessage(
    "PhysioEcosystem ", utils::packageVersion("PhysioEcosystem"),
    " -- umbrella for the Physio ecosystem.\n",
    "  Re-exports: ", paste(stack, collapse = ", "), "."
  )
}
