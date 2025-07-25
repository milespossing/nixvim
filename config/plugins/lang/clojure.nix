{ pkgs, lib, ... }:
{
  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        clojure = [ "cljfmt" ];
      };

      formatters.cljfmt = {
        command = lib.getExe pkgs.cljfmt;
      };
    };

    lsp.servers.clojure_lsp = {
      enable = true;
    };

    treesitter.settings.ensure_installed = [ "clojure" ];
  };

  extraPackages = with pkgs; [
    clj-kondo
  ];
}
