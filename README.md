# Travelling Salesman Thesis - LaTeX Source Code

This repository contains the LaTeX source code for my bachelor thesis titled **"Exploration of Solutions to the Travelling Salesman Problem: From Exact Algorithms to the Red-Black Ant Colony System"**. The thesis explores various algorithms for solving the Travelling Salesman Problem (TSP), including exact, heuristic, and metaheuristic approaches, with a focus on the Red-Black Ant Colony System (RB-ACS).

The repository structure includes LaTeX configuration files, chapter source files, and figures used in the thesis. The implemented algorithms discussed in the thesis are part of another repository called [`ibn-battuta`](https://github.com/yourusername/ibn-battuta).

## Repository Structure

```
.
├── Bibliography
│   ├── bibliography.bib           # Main bibliography file
│   └── bibliography_doi.bib       # Additional bibliography file with DOIs
├── Chapters
│   ├── Figures                    # Contains all figures used in the thesis
│   │   └── analysis               # Data analysis figures for algorithm comparison
│   ├── abstract-*.tex             # Abstracts in multiple languages (EN, FR, DE, IT, etc.)
│   ├── acknowledgements.tex       # Acknowledgements section
│   ├── acronyms.tex               # Acronyms used in the thesis
│   ├── annex*.tex                 # Annexes
│   ├── chapter*.tex               # Main thesis chapters (1 through 7)
│   ├── appendix*.tex              # Appendices
│   ├── dedicatory.tex             # Dedication
│   ├── glossary.tex               # Glossary
│   └── symbols.tex                # List of symbols
├── Config
│   ├── *.tex                      # Configuration files for the thesis
├── NOVAthesisFiles
│   ├── ChapStyles                 # Chapter styles for LaTeX formatting
│   ├── FontStyles                 # Font styles for LaTeX
│   ├── Schools                    # School-specific styles (e.g., ULisboa, UMinho)
│   ├── Strings                    # Multilingual strings (EN, FR, ES, etc.)
│   └── other                      # Other thesis-related files
├── LICENSE                        # License for this repository
├── Makefile                       # Makefile for building the thesis
├── novathesis.cls                 # Main class file for NOVAthesis format
├── template.tex                   # Main template file for the thesis
└── travelling_salesman_thesis.pdf # Final compiled thesis PDF
```

## How to Build

### Requirements
To build the thesis PDF from the `.tex` source files, you will need the following dependencies installed:
- LaTeX distribution (e.g., TeX Live or MiKTeX)
- `biblatex` for bibliography management
- `make` (if you want to use the provided Makefile)

### Steps
1. Clone the repository:
   ```
   git@github.com:BIRSAx2/travelling_salesman_problem_thesis.git
   cd travelling_salesman_problem_thesis
   ```
2. Run `make` to compile the PDF:
   ```
   make clean latexmk
   ```

3. The output PDF will be located in the root directory as `template.pdf`.

## Algorithms Implementation

The actual implementation of the algorithms described in the thesis, including the Red-Black Ant Colony System (RB-ACS) and other TSP solvers, can be found in the separate repository [`ibn-battuta`](https://github.com/BIRSAx2/ibn-battuta).

## License

This repository is licensed under the MIT License. See the `LICENSE` file for details.
