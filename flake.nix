{

  inputs.nixpkgs.url = "github:NixOS/Nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
      pkgs.mkShell {
        buildInputs = with pkgs; [
          pkg-config
          gtk3
        ];
        # LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [ ]);
      };
  };
}
