# PhysioEcosystem 1.0.1

## Documentation

* `?PhysioEcosystem` now answers: a package help page gives one paragraph on what the
  package is for, the main entry points grouped by task, and where to go next.
* Runnable `@examples` added or corrected across 4 help pages. Each runs
  offline in seconds, writes nothing outside `tempdir()`, and is executed by
  `R CMD check`; anything needing a device, a download or an optional backend is
  fenced with the reason stated.

# PhysioEcosystem 1.0.0

* First release. This package takes over the umbrella role that the
  `PhysioExperiment` package used to play: attaching it loads and re-exports the
  public API of the foundation (`PhysioExperiment`) together with `PhysioIO`,
  `PhysioPreprocess` and `PhysioAnalysis`, and it provides the GUI/REST
  launchers (`launchGUI()`, `startAPIServer()`, `checkGUIDependencies()`).

* Code that previously called `library(PhysioExperiment)` to obtain the whole
  stack should call `library(PhysioEcosystem)` instead. `library(PhysioExperiment)`
  now attaches the shared data model only, without pulling in I/O, preprocessing
  or analysis.
