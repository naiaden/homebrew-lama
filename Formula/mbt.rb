require "formula"

class Mbt < Formula
  homepage "http://ilk.uvt.nl/mbt/"
  url "http://software.ticc.uvt.nl/mbt-3.2.10.tar.gz"
  sha1 "a8d3f22a868ce8de364bed5a987cdd36b00939b7"

  depends_on "ticcutils" => :build
  depends_on "timbl" => :build
  depends_on "timblserver" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
