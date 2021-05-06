class Golf < Formula
  desc "Go Language Facilitator"
  homepage "https://github.com/jurjevic/golf"
  url "https://github.com/jurjevic/golf/archive/v0.10.0.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "a33d8f762b79b82b2c89fe01339ce5bfea18c0b481b5eedbbdf5015e652471f7" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/golf"
  end
end
