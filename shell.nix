with import <nixpkgs> { };

mkShell {
  nativeBuildInputs = [ direnv texliveFull latexindent ];

  NIX_ENFORCE_PURITY = "1";

}
