class Golf < Formula
  desc "Go Language Facilitator"
  homepage "https://github.com/jurjevic/golf"
  url "https://github.com/jurjevic/golf/archive/v0.9.10-alpha.tar.gz" # ### ftoken[3] = "\"" + Download + "\""; Join(ftoken, " ")
  sha256 "36a99d718a46cb7f24e1193061c341f275180792c52db94955aca9d2191f3f43" # ### ftoken[3] = "\"" + Hash + "\""; Join(ftoken, " ")
  license "MIT"

  depends_on "go@1.16" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/golf"
  end
end
