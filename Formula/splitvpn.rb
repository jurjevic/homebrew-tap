class Splitvpn < Formula
  desc "Split Internet and VPN routing"
  homepage "https://github.com/jurjevic/SplitVPN"
  url "https://github.com/jurjevic/SplitVPN/archive/v0.9.5-beta.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "b33d8e9dae273521f2a80eb81a3e2e2b08d0e4fa81ddb27f501a00c19c2283d1" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/splitvpn"
  end
end
