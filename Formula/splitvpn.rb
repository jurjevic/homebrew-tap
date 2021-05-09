class Splitvpn < Formula
  desc "Split Internet and VPN routing"
  homepage "https://github.com/jurjevic/SplitVPN"
  url "https://github.com/jurjevic/SplitVPN/archive/v0.9.7-beta.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "4f21ddfff70a0fe3df8cee30c3d49f2f150f9e4690f2b23bf7770b08004457f9" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/splitvpn"
  end
end
