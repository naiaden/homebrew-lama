require 'formula'

class Wopr < Formula
  homepage 'http://ilk.uvt.nl/wopr'
  url 'http://software.ticc.uvt.nl/wopr-1.36.1.tar.gz'
  sha1 '572dcdea1fcd3e50981ce52a0fbe037e2f4b6401'

  depends_on 'pkg-config' => :build
  depends_on 'timbl' => :build

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
