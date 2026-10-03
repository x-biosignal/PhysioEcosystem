#' PhysioEcosystem: One Entry Point for the Physio Ecosystem
#'
#' A meta-package. Attaching it loads and re-exports the public API of the
#' foundation and the core analysis packages, so a single `library()` call gives
#' you the whole working stack. It is the umbrella that the former monolithic
#' `PhysioExperiment` package used to provide; `library(PhysioExperiment)` now
#' attaches the data model only.
#'
#' @section What attaching this package gives you:
#' The following packages are loaded and their exports re-exported (see the
#' `Depends` field):
#' \itemize{
#'   \item \pkg{PhysioExperiment} -- the shared data model (the
#'     `PhysioExperiment` class, containers, accessors, provenance).
#'   \item \pkg{PhysioIO} -- reading and writing files and databases.
#'   \item \pkg{PhysioPreprocess} -- filtering, referencing, resampling, ICA.
#'   \item \pkg{PhysioAnalysis} -- spectral/time-frequency analysis, epoching,
#'     connectivity, statistics and visualization.
#' }
#'
#' @section Launchers provided by this package:
#' \itemize{
#'   \item [launchGUI()] -- start the web/desktop GUI (blocking).
#'   \item [startAPIServer()] -- start the REST API in the background.
#'   \item [checkGUIDependencies()] -- report whether the GUI/REST
#'     dependencies are available.
#' }
#'
#' @section Where to go next:
#' For a given task, read the help of the owning package: data model and
#' accessors in \pkg{PhysioExperiment}; I/O in \pkg{PhysioIO}; preprocessing in
#' \pkg{PhysioPreprocess}; analysis and plotting in \pkg{PhysioAnalysis}. Domain
#' packages (EEG, ECG, EMG, EDA, MoCap, cross-modal, clinical, ...) are
#' installed separately from the same r-universe. See the `vignette("intro",
#' package = "PhysioEcosystem")` for a guided tour.
#'
#' @examples
#' # The whole stack is available after a single library(PhysioEcosystem).
#' # Here we build a tiny PhysioExperiment from the re-exported constructor.
#' set.seed(1)
#' pe <- PhysioExperiment(
#'   assays = list(raw = matrix(rnorm(400 * 2), nrow = 400, ncol = 2)),
#'   samplingRate = 200
#' )
#' samplingRate(pe)
#' nChannels(pe)
#'
#' @keywords internal
"_PACKAGE"
