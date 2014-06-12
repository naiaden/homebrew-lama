require "formula"

class Timblserver < Formula
  homepage ""
  url "http://software.ticc.uvt.nl/timblserver-1.8.tar.gz"
  sha1 "97c48a87c924cfe8421fa151223da792a12d9363"

  depends_on 'pkg-config' => :build
  depends_on 'ticcutils' => :build
  depends_on 'libxml2' => :build
  depends_on 'timbl' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
