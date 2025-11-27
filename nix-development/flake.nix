{
  description = "OMERO parade-crossfilter dev env
    This provides tooling to deploy a omero-server running as a docker container and the following, editable omero-web features:
      - omero-web
      - omero-figure
      - omero-iviewer
      - omero-py
      - parade-crossfilter
  ";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }: let 
      system = "x86_64-linux"; 
      pkgs = import nixpkgs { inherit system; };
      lib = pkgs.lib;
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          # Get python through uv to have everything in the venv
          pkgs.uv
          # Allows to use pre-linked binaries that expect a traditional linux fs layout
          pkgs.nix-ld

          # JavaScript toolchain
          pkgs.nodejs_20
          pkgs.yarn

          # Container tools
          pkgs.podman
          pkgs.podman-compose

          # Misc
          pkgs.git
          # pkgs.postgresql_15
          pkgs.jdk11
          pkgs.ant # omero-iviewer
          
        ];

        NIX_LD_LIBRARY_PATH = lib.makeLibraryPath [
          #zeroc-ice dependencies
          pkgs.gcc.cc.lib
          pkgs.libgcc
          pkgs.libz
          pkgs.zlib
          pkgs.openssl
        ];
        NIX_LD = lib.fileContents "${pkgs.stdenv.cc}/nix-support/dynamic-linker";
        OMERO_DB_USER="db_user";
        OMERO_DB_PASS="db_password";
        OMERO_DB_NAME="omero_database";
        OMERO_ROOT_PASS="omero_root_password";
        OMERO_DATA_DIR="/OMERO";
        # PGPASSWORD="${OMERO_DB_PASS}";
        # OMERODIR="/opt/omero/server/OMERO.server";
        # VENV_SERVER="/opt/omero/server/venv3";

        # LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
        # Run once:
        # systemctl --user enable podman.socket
        # systemctl --user start podman.socket
        # Gives a global podman socket that looks like a docker socket
        shellHook = ''
          # npm doesn't like openssl1.1 anymore
          export NODE_OPTIONS=--openssl-legacy-provider
          export OMERODIR=$(pwd)
          alias docker=podman
          alias docker-compose=podman-compose
          echo "🐳 Podman is aliased as Docker"
          [ -d .venv ] && source .venv/bin/activate
        '';
    };
  };
}
