require "formula"

class Frog < Formula
  homepage ""
  url "http://software.ticc.uvt.nl/frog-0.12.17.tar.gz"
  sha1 "dd2bc4b7933802394ae7469d7585d2476e0423fd"

  depends_on 'gcc49' => :build
  depends_on 'timbl' => :build
  depends_on 'timblserver' => :build
  depends_on 'mbt' => :build
  depends_on 'ucto' => :build
  depends_on 'libfolia' => :build
  depends_on 'icu4c' => :build
  depends_on 'pkg-config' => :build
  depends_on 'libxml2' => :build
  depends_on 'ticcutils' => :build

  def install
    ENV.deparallelize
    system "./configure", "CC=/usr/local/bin/gcc-4.9",
                          "CXX=/usr/local/bin/g++-4.9",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
