with import <nixpkgs> { };

mkShell {
  nativeBuildInputs = [
    direnv
    texliveFull
  ];

  NIX_ENFORCE_PURITY = "1";

}
