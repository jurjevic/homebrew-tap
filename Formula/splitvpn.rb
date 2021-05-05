class Splitvpn < Formula
  desc "Split Internet and VPN routing"
  homepage "https://github.com/jurjevic/SplitVPN"
  url "https://github.com/jurjevic/SplitVPN/archive/v0.9.4-beta.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "e8bb9b7bf1d9489b5c23ab745e76ed7a306a4b3aca3fba4385cef9fd1680f1e5" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/splitvpn"
  end
end
