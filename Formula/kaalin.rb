class Kaalin < Formula
  include Language::Python::Virtualenv
  
  desc "Latin-to-Cyrillic converter CLI for the Karakalpak language"
  homepage "https://github.com/dontbeidle/kaalin-homebrew"
  url "https://github.com/dontbeidle/kaalin-homebrew/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1ba115565a47e228f6c40feec4e5d8ee55728edaf6bc278eea71cd9f8dbe7601"
  license "MIT"
  
  depends_on "python@3.9"
  
  def install
    virtualenv_install_with_resources
  end
  
  test do
    system bin/"kaalin", "--help"
  end
end
