# sdaccel-builder v0.18.7-dirty

## Features

## Bugfixes

# sdaccel-builder v0.18.6

## Features
 - Simulations now post an FPGA resource utilisation report to platform

## Bugfixes

# sdaccel-builder v0.18.5

## Features

* Use new compiler update, which introduces ll2ll LLVM optimisation phase
  (eTeak #661)
* Removed support for reco-check under Windows to simplify the build process,
  since it is not being actively used by any customers (#238, eTeak #668)

## Bugfixes

# sdaccel-builder v0.18.3

## Features

* Phased migration to new compiler.
  * Use new compiler as the default for the histogram array example (#232)
  * Add additional reporting for post P&R system clock speed (#233)

## Bugfixes

# sdaccel-builder v0.18.1

## Features

## Bugfixes

# sdaccel-builder v0.18.0

## Features

## Bugfixes

# sdaccel-builder v0.17.6

## Features

## Bugfixes

# sdaccel-builder v0.17.5

## Features

## Bugfixes

# sdaccel-builder v0.17.4

## Features

## Bugfixes

# sdaccel-builder v0.17.3

## Features

## Bugfixes

# sdaccel-builder v0.17.1

## Features

## Bugfixes

# sdaccel-builder v0.17.0

## Features

## Bugfixes

# sdaccel-builder v0.16.4

## Features

## Bugfixes

# sdaccel-builder v0.16.3

## Features

## Bugfixes

# sdaccel-builder v0.16.2

## Features

## Bugfixes

# sdaccel-builder v0.16.1

## Features

## Bugfixes

# sdaccel-builder v0.16.0

## Features

## Bugfixes

# sdaccel-builder v0.15.0

## Features

## Bugfixes

# sdaccel-builder v0.18.2

## Features

## Bugfixes

# sdaccel-builder v0.14.0

## Features

## Bugfixes

# sdaccel-builder v0.17.2

## Features

## Bugfixes

# sdaccel-builder v0.13.1

## Features

## Bugfixes

# sdaccel-builder v0.13.0

## Features

## Bugfixes

# sdaccel-builder v0.12.8

## Features

## Bugfixes

# sdaccel-builder v0.12.7

## Features

## Bugfixes

# sdaccel-builder v0.12.6

## Features

## Bugfixes

# sdaccel-builder v0.12.5

## Features

## Bugfixes

# sdaccel-builder v0.12.5

## Features

## Bugfixes

# sdaccel-builder v0.12.4

## Features

## Bugfixes

# sdaccel-builder v0.12.3

## Features

## Bugfixes

# sdaccel-builder v0.12.2

## Features

## Bugfixes

# sdaccel-builder v0.12.1

## Features

## Bugfixes

# sdaccel-builder v0.12.0

## Features

* Added support for intermediate graph generation

## Bugfixes

# sdaccel-builder v0.11.0

## Features

* Added a 15 minute time limit for simulation
* Added a 5 hour time limit for builds

## Bugfixes

* Fixed usage reports crashing when only half a BRAM block was used
# sdaccel-builder v0.10.0

## Features

## Bugfixes

# sdaccel-builder v0.9.1

## Features

## Bugfixes

# sdaccel-builder v0.9.0

## Features

## Bugfixes

# sdaccel-builder v0.8.0

## Features

## Bugfixes

# sdaccel-builder v0.7.0

## Features

## Bugfixes

# sdaccel-builder v0.6.1

## Features

## Bugfixes

# sdaccel-builder v0.6.0

## Features

## Bugfixes

# sdaccel-builder v0.5.0

## Features

## Bugfixes

# sdaccel-builder v0.4.0

## Features

* Bump compiler to v0.7.0

## Bugfixes

# sdaccel-builder v0.3.0

## Features

* Bump compiler to v0.6.0
* Add `MemoryReader` & `MemoryWriter` to `xcl` with corresponding `io.Reader` & `io.Writer` instances.

## Bugfixes

* Fix possible segfaults in `xcl`.

# sdaccel-builder v0.2.1

## Features

## Bugfixes

* Fix compatibility for latest compiler.

# sdaccel-builder v0.2.0-dirty

## Features

## Bugfixes

# sdaccel-builder $Vjosh-test

## Features

    * Update compiler to v0.5.0

## Bugfixes

    * Fix reliability of build process by reducing network calls

# sdaccel-builder v0.1.1

## Features

## Bugfixes

   * Display builds that were being filtered
   * Work with more Jarvice accounts

# sdaccel-builder v0.1.0

## Features

   * Initial implementation.
   * Include `reco-jarvice` tool for deploying workloads on https://xilinx-cloud.jarvice.com

## Bugfixes
