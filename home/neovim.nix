{ flake, ... }:
{
  imports = [
    flake.inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.ayu.enable = true;
    options = {
      expandtab = true;
      shiftwidth = 4;
      smartindent = true;
      tabstop = 4;
    };
    plugins = {
      lightline.enable = true;
      treesitter.enable = true;
      lsp = {
        enable = true;
        servers = {
          hls.enable = true;
          marksman.enable = true;
          nil_ls.enable = true;
          rust-analyzer = {
            enable = true;
            installCargo = false;
            installRustc = false;
          };
        };
      };
    };
  };
}
