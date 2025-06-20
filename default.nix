{ pkgs ? import <nixpkgs> { }, src ? ./. }:

let theSource = src; in
pkgs.rustPlatform.buildRustPackage rec {
  pname = "netscanner";
  version = "0.6.3";
  src = pkgs.lib.cleanSource "${theSource}";
  cargoLock.lockFile = "${theSource}/Cargo.lock";
}