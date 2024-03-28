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
            static-check = rainix.mkTask.${system} {
                name = "static-check";
                body = ''
                    set -euxo pipefail
                    npm exec prettier -- --check .
                '';
            };

            prettier-fmt = rainix.mkTask.${system} {
                name = "prettier-fmt";
                body = ''
                    set -euxo pipefail
                    npm exec prettier -- --write .
                '';
            };
        };

        devShells.default = rainix.pkgs.${system}.mkShell {
          packages = [
            packages.static-check
            packages.prettier-fmt
          ];
          shellHook = ''
            npm install --verbose
          '';
          buildInputs = rainix.devShells.${system}.default.buildInputs ++ [];
          nativeBuildInputs = rainix.devShells.${system}.default.nativeBuildInputs;
        };
      }
    );

}