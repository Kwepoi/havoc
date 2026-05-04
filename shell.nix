{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    pkg-config
    wayland-scanner
    gnumake
  ];

  buildInputs = with pkgs; [
    wayland
    wayland-protocols
    libxkbcommon
    fontconfig
  ];
}
