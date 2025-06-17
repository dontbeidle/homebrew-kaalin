class Kaalin < Formula
  include Language::Python::Virtualenv
  
  desc "Latin-to-Cyrillic converter CLI for the Karakalpak language"
  homepage "https://github.com/dontbeidle/kaalin-homebrew"
  url "https://github.com/dontbeidle/kaalin-homebrew/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1ba115565a47e228f6c40feec4e5d8ee55728edaf6bc278eea71cd9f8dbe7601"
  license "MIT"
  
  depends_on "python@3.11"
  
  resource "kaalin" do
    url "https://files.pythonhosted.org/packages/source/k/kaalin/kaalin-3.1.0.tar.gz"
    sha256 "4183fe43a90693a44cc846c667248aac50a50a86145456fb7ea8d3cf736ea9bf"
  end
  
  def install
    virtualenv_install_with_resources
    
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"cyr2lat", "--help"
    system bin/"lat2cyr", "--help"
  end
end
