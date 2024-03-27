let
  pkgs = import
    (builtins.fetchTarball {
      name = "nixos-22.11";
      url = "https://github.com/nixos/nixpkgs/archive/44733514b72e732bd49f5511bd0203dea9b9a434.tar.gz";
      sha256 = "1cdk2s324yanzy7sz1pshnwrgm0cyp6fm17l253rbsjb6s6a0i3a";
    })
    { };

  prettier-check = pkgs.writeShellScriptBin "prettier-check" ''
    prettier --check .
  '';

  prettier-write = pkgs.writeShellScriptBin "prettier-write" ''
    prettier --write .
  '';

in
pkgs.stdenv.mkDerivation {
  name = "shell";
  buildInputs = [
    pkgs.nixpkgs-fmt
    pkgs.yarn
    pkgs.nodejs_18
    pkgs.jq
    pkgs.watch
    prettier-check
    prettier-write
  ];

  shellHook = ''
    export PATH=$( npm bin ):$PATH
    # keep it fresh
    npm install --verbose --fetch-timeout 3000000
  '';
}
