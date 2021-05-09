class Splitvpn < Formula
  desc "Split Internet and VPN routing"
  homepage "https://github.com/jurjevic/SplitVPN"
  url "https://github.com/jurjevic/SplitVPN/archive/v0.9.7-beta.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "e4a903b64c696faaed42cc16c4dde66ac3fdc32430938b392924619ea39028df" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/splitvpn"
  end
end
