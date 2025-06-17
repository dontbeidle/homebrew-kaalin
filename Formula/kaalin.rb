class Kaalin < Formula
  include Language::Python::Virtualenv
  
  desc "Latin-to-Cyrillic converter CLI for the Karakalpak language"
  homepage "https://github.com/dontbeidle/kaalin-homebrew"
  url "https://github.com/dontbeidle/kaalin-homebrew/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a33d7842734e314d31788d22f611839d2bdb6ee40a491c2f08822e4b5fb02fd8"
  license "MIT"
  
  depends_on "python@3.9"
  
  def install
    virtualenv_install_with_resources
  end
  
  test do
    system bin/"kaalin", "--help"
  end
end
