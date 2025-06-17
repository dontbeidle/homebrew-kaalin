class CliTool < Formula
  include Language::Python::Virtualenv

  desc "Latin-to-Cyrillic converter CLI for the Karakalpak language"
  homepage "https://github.com/dontbeidle/kaalin-homebrew"
  url "https://github.com/dontbeidle/kaalin-homebrew/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  resource "kaalin" do
    url "https://files.pythonhosted.org/packages/2e/7d/kaalin-3.1.0.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
