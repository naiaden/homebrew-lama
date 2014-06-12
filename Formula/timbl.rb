require 'formula'

class Timbl < Formula
  homepage 'http://ilk.uvt.nl/timbl/'
  url 'http://software.ticc.uvt.nl/timbl-6.4.5.tar.gz'
  sha1 'de8e241dedb1fd413ba885c81f8ffa63a575f419'

  head "https://github.com/proycon/timbl.git"

  depends_on 'pkg-config' => :build
  depends_on 'ticcutils' => :build
  depends_on 'libxml2' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
