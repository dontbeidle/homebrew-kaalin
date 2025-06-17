class CliTool < Formula
  include Language::Python::Virtualenv

  desc "Latin-to-Cyrillic converter CLI for the Karakalpak language"
  homepage "https://github.com/dontbeidle/kaalin-homebrew"
  url "https://github.com/dontbeidle/kaalin-homebrew/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  resource "kaalin" do
    url "https://github.com/dontbeidle/kaalin-python/archive/refs/tags/v3.1.0.tar.gz"
    sha256 "e0b8b500eb1ec3d4406e83238b99c6f0a67c7d94192ea25aaf53f37236466b31"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"test.txt").write("Сәлем әлем")
    system bin/"cyr2lat", "test.txt", "out.txt"
    assert_predicate testpath/"out.txt", :exist?
  end
end
