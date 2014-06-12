require "formula"

class Ticcutils < Formula
  homepage "https://github.com/proycon/ticcutils"
  url "http://software.ticc.uvt.nl/ticcutils-0.5.tar.gz"
  sha1 "ca77927ae76adde34d244c2073be66d4e7dc3034"

  head "https://github.com/proycon/ticcutils.git"

  depends_on 'pkg-config' => :build
  depends_on 'libtar' => :build
  depends_on 'icu4c' => :build
  depends_on 'libxml2' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
    system "make check"
  end
end
