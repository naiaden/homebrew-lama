require "formula"

class Tscan < Formula
  homepage ""
  url "http://software.ticc.uvt.nl/tscan-0.3.tar.gz"
  sha1 "f18d423669ec2b7ae7bff4eb62eeb051e2702193"

  depends_on 'icu4c' => :build
  depends_on 'timbl' => :build
  depends_on 'timblserver' => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    system "./configure", "--disable-debug",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test tscan`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
