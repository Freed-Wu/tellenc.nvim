{
  pkgs ? import <nixpkgs> { },
}:

with pkgs;
mkShell {
  name = "tellenc.nvim";
  buildInputs = [
    pkg-config

    xmake

    (luajit.withPackages (
      p: with p; [
        busted
        ldoc
      ]
    ))
  ];
}
