class Golf < Formula
  desc "Go Language Facilitator"
  homepage "https://github.com/jurjevic/golf"
  url "https://github.com/jurjevic/golf/archive/v0.10.0.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "9a2d49332fabb25e1984150e71cea96ed08b7405c53565529f855ff594a7fd1d" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/golf"
  end
end
