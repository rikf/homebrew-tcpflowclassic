require "formula"

class TcpflowClassic < Formula
  homepage "http://www.circlemud.org/jelson/software/tcpflow/"
  url "https://github.com/rikf/tcpflow-classic/archive/v0.22-osx.tar.gz"
  sha256 "3faf35c7a01811c9b159742c9ab42e4ad54207989105c525547cf56b02185503"
  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
