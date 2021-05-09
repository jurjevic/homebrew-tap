class Splitvpn < Formula
  desc "Split Internet and VPN routing"
  homepage "https://github.com/jurjevic/SplitVPN"
  url "https://github.com/jurjevic/SplitVPN/archive/v0.9.7-beta.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "b61aafdb6bded2d8ff8187a35c27fce2b5afda0df98ca9d5c4fa939acb47989b" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/splitvpn"
  end
end
