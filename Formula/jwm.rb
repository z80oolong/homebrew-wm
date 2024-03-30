class Jwm < Formula
  desc "Lightweight window manager for X11"
  homepage "https://joewing.net/projects/jwm/"
  url "https://github.com/joewing/jwm/releases/download/v2.4.3/jwm-2.4.3.tar.xz"
  sha256 "ee3b4ee0c452ef31fcb9303ab50aaf496cf5bdf7b5f1fdc9a1251b7175ca67ab"

  depends_on "pkg-config" => :build
  depends_on "libx11"
  depends_on "libxext"
  depends_on "libxrender"
  depends_on "libxft"
  depends_on "libxinerama"
  depends_on "cairo"
  depends_on "librsvg"

  def install
    #system "./configure", "--prefix=#{prefix}"
    system "./configure", "--disable-silent-rules", *std_configure_args 
    system "make", "install"
  end

  test do
    system "#{bin}/jwm", "--version"
  end
end
