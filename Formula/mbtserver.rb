require "formula"

class Mbtserver < Formula
  homepage ""
  url "http://software.ticc.uvt.nl/mbtserver-0.8.tar.gz"
  sha1 "b610cb0f2a1c01136499ea23b2ab0d958c486bd8"

  depends_on 'ticcutils' => :build
  depends_on 'timbl' => :build
  depends_on 'timblserver' => :build
  depends_on 'mbt' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
