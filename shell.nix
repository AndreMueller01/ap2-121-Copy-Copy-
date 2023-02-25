with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  buildInputs = [
    (python3.withPackages(p: [ p.notebook p.numpy p.matplotlib p.scipy p.pandas ]))
    jupyter
  ];
}
