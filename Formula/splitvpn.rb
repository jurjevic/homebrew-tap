class Splitvpn < Formula
  desc "Split Internet and VPN routing"
  homepage "https://github.com/jurjevic/SplitVPN"
  url "https://github.com/jurjevic/SplitVPN/archive/v0.9.1-alpha.tar.gz"
  sha256 "df6435b6c8fa4e12e13ba5af4bad61eac066fddedafe54cbc38e109e3512b62e"
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end
