require 'formula'

class Timbl < Formula
  homepage 'http://ilk.uvt.nl/timbl/'
  url 'http://software.ticc.uvt.nl/timbl-6.4.4-1.tar.gz'
  sha1 '2e87a8eb79c53528e3cf809ec99382d0df2cfdf6'

  head "https://github.com/proycon/timbl.git"

  depends_on 'pkg-config' => :build
  depends_on 'ticcutils' => :build
  depends_on 'libxml2' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
