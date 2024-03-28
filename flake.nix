{
  description = "Flake for development workflows.";

  inputs = {
    rainix.url = "github:rainprotocol/rainix";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {self, flake-utils, rainix }:
    flake-utils.lib.eachDefaultSystem (system:
      rec {
        packages = rainix.packages.${system} // {
            static-check = rainix.pkgs.${system}.writeShellScriptBin "static-check" ''
                prettier --check .
            '';
        };
        devShells.default = rainix.devShells.${system}.default // {
            packages = [packages.static-check];
        };
      }
    );

}