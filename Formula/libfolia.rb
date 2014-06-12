require "formula"

class Libfolia < Formula
  homepage ""
  url "http://software.ticc.uvt.nl/libfolia-0.11.tar.gz"
  sha1 "71623dd652dc5d1f036a026cd389ac2cb21698aa"

  depends_on 'icu4c' => :build
  depends_on 'ticcutils' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
