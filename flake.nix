{
  description = "OpenJDK 20 EA binaries";
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11"; };
  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux = with nixpkgs.legacyPackages.x86_64-linux;
      stdenv.mkDerivation rec {
        name = "jdk-20+${version}";
        version = "32";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-x64_bin.tar.gz";
          sha256 =
            "d512d0c5bfbde4b2346f3621c14aaac435c37802278da117f3f2c886c6d6cfbd";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-20 $out
        '';
        meta = with lib; { platforms = platforms.linux; };
      };

    defaultPackage.x86_64-darwin = with nixpkgs.legacyPackages.x86_64-darwin;
      stdenv.mkDerivation rec {
        name = "jdk-20+${version}";
        version = "32";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_darwin-x64_bin.tar.gz";
          sha256 =
            "5711830113cd7c1cac88c8a2a9b3fa7084944e8b38af29774bdc1c8f771c136f";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-20 $out
        '';
        meta = with lib; { platforms = platforms.darwin; };
      };

    defaultPackage.aarch64-linux = with nixpkgs.legacyPackages.aarch64-linux;
      stdenv.mkDerivation rec {
        name = "jdk-20+${version}";
        version = "32";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_linux-aarch64_bin.tar.gz";
          sha256 =
            "6b2eed07f28c6044c249ddf660781540983a90c269d8c1dce073881b5d0a75da";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-20 $out
        '';
        meta = with lib; { platforms = platforms.linux; };
      };
    defaultPackage.aarch64-darwin = with nixpkgs.legacyPackages.aarch64-darwin;
      stdenv.mkDerivation rec {
        name = "jdk-20+${version}";
        version = "32";
        src = pkgs.fetchurl {
          url =
            "https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_darwin-aarch64_bin.tar.gz";
          sha256 =
            "843455b131af9cf05708ad77fdafde30038af82b187f5e6e5b5bd0cf59f890c1";
        };
        sourceRoot = ".";
        installPhase = ''
          cp -r jdk-20 $out
        '';
        meta = with lib; { platforms = platforms.darwin; };
      };
  };
}
