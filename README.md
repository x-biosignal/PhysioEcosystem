# PhysioEcosystem

[![r-universe](https://x-biosignal.r-universe.dev/badges/PhysioEcosystem)](https://x-biosignal.r-universe.dev/PhysioEcosystem)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

**One entry point for the Physio ecosystem.**

Attaching `PhysioEcosystem` loads and re-exports the public API of the foundation
and the core analysis packages — [PhysioExperiment](https://github.com/x-biosignal/PhysioExperiment)
(the shared data model), [PhysioIO](https://github.com/x-biosignal/PhysioIO),
[PhysioPreprocess](https://github.com/x-biosignal/PhysioPreprocess) and
[PhysioAnalysis](https://github.com/x-biosignal/PhysioAnalysis) — and provides the
GUI and REST launchers (`launchGUI()`, `startAPIServer()`,
`checkGUIDependencies()`).

> This package took over the umbrella role that `PhysioExperiment` used to play.
> Code that called `library(PhysioExperiment)` to obtain the whole stack should
> call `library(PhysioEcosystem)` instead; `library(PhysioExperiment)` now
> attaches the data model only.

## Installation

The containers build on Bioconductor, so its repositories have to be on the list
as well — without them the install stops at `SummarizedExperiment`.

```r
install.packages("BiocManager", repos = "https://cloud.r-project.org")
install.packages("PhysioEcosystem",
  repos = c("https://x-biosignal.r-universe.dev", BiocManager::repositories()))
```

## Quick start

```r
library(PhysioEcosystem)

pe <- PhysioExperiment(
  assays = list(raw = matrix(rnorm(1000), 500, 2)),
  samplingRate = 250
)
samplingRate(pe)
```

Domain packages — EEG, ECG, EMG, EDA, MoCap, cross-modal, MSK-Net, OpenSim,
clinical — are installed separately from the same r-universe.

## License

MIT. Author and maintainer: Yusuke Matsui (Nagoya University).
