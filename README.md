# Dissertation Project

This project contains all the necessary files to compile the dissertation document. It includes chapters, figures, fonts, frontmatter content, resources, and configuration files.

## Project Structure

```shell

.
├── chapters          # Contains all chapter files including introduction and conclusion
│   ├── chapter1.tex  # Chapter files
│   ├── ...
│   └── conclusion.tex
├── figures           # Directory for figures used in the document
│   └── example.png
├── fonts             # Custom fonts used in the dissertation
│   ├── 'EB Garamond'
│   ├── Lato
│   └── 'Source Code Pro'
├── frontmatter       # Preliminary pages of the dissertation
│   ├── abbr.tex      # Abbreviations page
│   ├── abstract.tex  # Abstract of the dissertation
│   ├── ...
│   └── thanks.tex    # Acknowledgements
├── resources         # Additional resources such as university logos
│   ├── unipd-bn.png
│   └── unipd-light.jpg
├── Dissertate.cls    # Custom class file for dissertation formatting
├── dissertation.tex  # Main LaTeX file for the dissertation
├── references.bib    # Bibliography file
├── README.md         # This file
└── shell.nix         # Nix shell file with project dependencies

```

## Compilation Instructions

The dissertation document is compiled using `arara`, ensuring a streamlined compilation process. For users with a Nix environment, a `shell.nix` file is provided to encapsulate all the required software dependencies.

### Using Nix Shell

1. Ensure you have Nix installed on your system.
2. Navigate to the project directory.
3. Enter the Nix shell by running:

   ```bash
   nix-shell
   ```

4. Once inside the Nix shell, you can compile the dissertation with `arara`:

   ```bash
   arara dissertation.tex

   ```

### Using Visual Studio Code

For those using Visual Studio Code (VS Code) with the LaTeX Workshop extension, the project can be compiled with the `latexmk(xelatex)` recipe.

1. Open the project in VS Code.
2. Ensure the LaTeX Workshop extension is installed.
3. Compile the project using the `latexmk(xelatex)` recipe through the extension's built-in commands.

## Custom Fonts

This project uses custom fonts:

- EB Garamond
- Lato
- Source Code Pro

Ensure these fonts are installed on your system or included in the project directory if required by your LaTeX compilation setup.

## Figures

Place all figures used in the dissertation in the `figures` directory. Refer to these figures in your `.tex` files relative to the project root.

##  Credits

Fork of <https://github.com/mychele/unipd-latex-template> (<https://github.com/suchow/Dissertate>)
