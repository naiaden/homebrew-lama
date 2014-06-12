require "formula"

class Ucto < Formula
  homepage ""
  url "http://software.ticc.uvt.nl/ucto-0.5.5.tar.gz"
  sha1 "e268b3dff8e287745f66587c59a832a32f4d31fa"

  depends_on 'pkg-config' => :build
  depends_on 'ticcutils' => :build
  depends_on 'icu4c' => :build
  depends_on 'libfolia' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
