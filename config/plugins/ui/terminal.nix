{ pkgs, lib, ... }:
{
  plugins.toggleterm = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        cmd = "ToggleTerm";
        keys = [
          "<C-t>"
        ];
      };
    };
    settings = {
      open_mapping = "[[<C-t>]]";
      shell = lib.getExe pkgs.bash;
      hide_numbers = true;
      share_terminals = true;
      start_in_insert = true;
      terminal_mappings = true;
    };
  };
}
