pkgs:
with pkgs;
# Map from homebrew package names to nixpkgs packages.
# To add a new package:
# 1. Find the package in nixpkgs:
#   * Use https://search.nixos.org/packages or `nix search` to find the package by name or description;
#   * Use https://mynixos.com/ or `nix-index`/`nix-locate` to find the package by files contained therein;
# 2. If some changes to the package are needed to be compatible with the homebrew one, make an override in the let binding below;
# 3. Add it to the list. Keep the quotation marks around the homebrew package name, even if not needed, and sort the list afterwrads.
let

  # Please keep this list sorted alphabetically and one-line-per-package
in pkgs // {
  "autoconf" = pkgsBuildBuild.autoconf;
  "cairo" = cairo.dev;
  "expat" = expat.dev;
  "gmp" = gmp.dev;
  "gtk+3" = gtk3.dev;
  "gtksourceview3" = gtksourceview3.dev;
  "libxml2" = libxml2.dev;
  "proctools" = procps;
  "zlib" = zlib.dev;
}
