require "formula"

class Ticcutils < Formula
  homepage "https://github.com/proycon/ticcutils"
  url "http://software.ticc.uvt.nl/ticcutils-0.4.tar.gz"
  sha1 "093e79800c74d9b228c2e5fac8a55d5eba78132b"

  head "https://github.com/proycon/ticcutils.git"

  depends_on 'pkg-config' => :build
  depends_on 'icu4c' => :build
  depends_on 'libxml2' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
