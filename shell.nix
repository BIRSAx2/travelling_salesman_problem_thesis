{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Tectonic for LaTeX compilation
    tectonic
    texpresso

    # Biber for bibliography processing
    biber
  ];

  shellHook = ''
    echo "Tectonic development environment loaded"
    echo "Available tools: tectonic, biber, texlive, python3, make, ghostscript, librsvg, imagemagick, aspell"
    fish
  '';
}