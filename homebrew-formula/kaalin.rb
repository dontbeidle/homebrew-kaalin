class Kaalin < Formula
  include Language::Python::Virtualenv
  
  desc "Latin-to-Cyrillic converter CLI for the Karakalpak language"
  homepage "https://github.com/dontbeidle/kaalin-homebrew"
  url "https://github.com/dontbeidle/kaalin-homebrew/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  
  depends_on "python@3.9"
  
  def install
    virtualenv_install_with_resources
  end
  
  test do
    system bin/"kaalin", "--help"
  end
end
