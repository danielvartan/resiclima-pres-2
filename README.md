# resiclima-pres-2

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![License: GPLv3](https://img.shields.io/badge/license-GPLv3-bd0000.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/license-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
<!-- badges: end -->

## Overview

This repository contains the slides from the presentation _Explorando efeitos climáticos com modelos baseados em agentes_ ([`pt-BR`](https://en.wikipedia.org/wiki/List_of_ISO_639_language_codes)), delivered on November 7, 2025, at the [2nd Meeting on Multidisciplinary Perspectives on Climate Change](https://resiclima.com.br/15/10/2025/recife-recebe-encontro-multidisciplinar-sobre-mudancas-climaticas/) of the [Resiclima Network](https://resiclima.com.br).

The slides are available [here](https://danielvartan.github.io/resiclima-pres-2/).

## Usage

This presentation was created using the [Quarto](https://quarto.org/) publishing system and the [R](https://www.r-project.org/) programming language. To build the slides locally, you will need to have these tools installed on your computer.

The [`renv`](https://rstudio.github.io/renv/) R package is used to manage the R package dependencies. To install the required packages, run the following commands in your R console before rendering the slides:

```r
# install.packages("renv")
renv::restore()
```

After installing the dependencies, you can render the slides by executing the following command at the project root directory in your terminal:

```bash
quarto render
```

This will generate the slides in the `docs` directory.

## Citation

To cite this work, please use the following format:

Vartanian, D. (2025). *Explorando efeitos climáticos com modelos baseados em agentes* \[Presentation\].
<https://danielvartan.github.io/resiclima-pres-2>

A BibLaTeX entry for LaTeX users is:

``` latex
@online{vartanian2025,
  title = {Explorando efeitos climáticos com modelos baseados em agentes},
  author = {{Daniel Vartanian}},
  year = {2025},
  url = {https://danielvartan.github.io/resiclima-pres-2},
  langid = {pt-BR},
  note = {Presentation}
}
```

## License

[![License: GPLv3](https://img.shields.io/badge/license-GPLv3-bd0000.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/license-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

The code in this repository is licensed under the [GNU General Public License Version 3](https://www.gnu.org/licenses/gpl-3.0), while the presentation is available under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

``` text
Copyright (C) 2025 Daniel Vartanian

The code in this repository is free software: you can redistribute it and/or
modify it under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see <https://www.gnu.org/licenses/>.
```

## Acknowledgments

<table>
  <tr>
    <td width="30%">
      <br/>
      <br/>
      <p align="center">
        <a href="https://www.fsp.usp.br/sustentarea/">
          <img src="images/sustentarea-logo.svg" width="125"/>
        </a>
      </p>
      <br/>
    </td>
    <td width="70%">
      <p>
        This work was developed with support from the
        <a href="https://www.fsp.usp.br/sustentarea/">Sustentarea</a>
        Research and Extension Center at the University of São Paulo (<a href="https://www5.usp.br/">USP</a>).
      </p>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td width="30%">
      <br/>
      <br/>
      <p align="center">
        <a href="https://www.fsp.usp.br/sustentarea/">
          <img src="images/resiclima-logo.svg" width="125"/>
        </a>
      </p>
      <br/>
    </td>
    <td width="70%">
      <p>
        This work was developed with support from the
        <a href="https://resiclima.com.br/">Resiclima Network</a>
        , an international collaboration for the multidimensional and interdisciplinary study of global climate change.
      </p>
    </td>
  </tr>
</table>

<table>
  <tr>
    <td width="30%">
      <br>
      <p align="center">
        <br> <a href="https://fapesp.br/"><img src="images/fapesp-logo.svg" width="160em"/></a>
      </p>
      <br>
    </td>
    <td width="70%">
      This study was financed, in part, by the São Paulo Research Foundation (<a href="https://fapesp.br/">FAPESP</a>), Brazil. Process Number <a href="https://bv.fapesp.br/en/bolsas/231507/geospatial-data-science-applied-to-food-policies/">2025/17879-2</a>.
    </td>
  </tr>
</table>
