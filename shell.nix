let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    gnumake wget

    # keep this line if you use bash
    bashInteractive
  ];
}
