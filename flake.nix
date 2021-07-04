{

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
      pkgs.mkShell {
        buildInputs = with pkgs; [
          pkg-config
          gtk3
          rustc
          cargo
        ];
        # LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [ ]);
      };
  };
}
