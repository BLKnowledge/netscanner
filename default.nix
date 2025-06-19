{ lib, fetchFromGitHub, rustPlatform, pkgs }:

rustPlatform.buildRustPackage rec {
    pname = "netscanner";
    version = "0.6.3";
    buildInputs = with pkgs; [

    ];

    nativeBuildInputs = with pkgs; [

    ];

    src = fetchFromGitHub {
     owner = "Chleba";
     repo = pname;
     rev = version;
     hash = "sha256-ad2df332bb347eac96c0a5d22e9477f9a7fe4b05d565b90009cc1c3fb598b29f=";
    };

    cargoHash = "sha256-3d8b0c408f0272336c03e6039e0c4611b7c75ad3d298d2cba2fc33336add7def=";


    meta = with lib; {
        description = "Terminal Network scanner & diagnostic tool with modern TUI (terminal user interface). GitHub: https://github.com/Chleba/netscanner";
        homepage = "https://lib.rs/crates/netscanner";
        license = licenses.unlicense;
        maintainers = [];
    };
}