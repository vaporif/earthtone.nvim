{
  description = "earthtone.nvim - a warm, earthy light colorscheme for Neovim";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    forAllSystems = nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
  in {
    packages = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.vimUtils.buildVimPlugin {
        pname = "earthtone.nvim";
        version = "unstable";
        src = self;
      };
    });

    overlays.default = _final: _prev: {
      vimPlugins =
        (_prev.vimPlugins or {})
        // {
          earthtone-nvim = _final.vimUtils.buildVimPlugin {
            pname = "earthtone.nvim";
            version = "unstable";
            src = self;
          };
        };
    };

    devShells = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.mkShell {
        packages = with pkgs; [
          selene
          stylua
          typos
          just
        ];
      };
    });
  };
}
