class Icewm < Formula
  desc "Lightweight window manager for X11"
  homepage "https://ice-wm.org/"
  url "https://github.com/ice-wm/icewm/releases/download/3.4.7/icewm-3.4.7.tar.lz"
  sha256 "5aa044743dd69923c722bc9e65385f637253ff971fbb5954a56d26ac384e2c30"

  depends_on "pkg-config" => :build
  depends_on "cmake"
  depends_on "libx11"
  depends_on "libxext"
  depends_on "libxft"
  depends_on "libxinerama"
  depends_on "libxpm"
  depends_on "libsm"
  depends_on "libice"
  depends_on "libxrandr"
  depends_on "libxcursor"
  depends_on "libxcomposite"
  depends_on "libxrender"
  depends_on "libxfixes"
  depends_on "libxcomposite"
  depends_on "z80oolong/dep/libxss@1.2.4"
  depends_on "libxau"
  depends_on "libxdmcp"
  depends_on "libxdamage"
  depends_on "imlib2"
  depends_on "freetype"
  depends_on "fribidi"
  depends_on "glib"
  depends_on "fontconfig"
  depends_on "libjpeg-turbo"
  depends_on "libpng"
  depends_on "xz"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "#{bin}/icewm", "--version"
  end
end
