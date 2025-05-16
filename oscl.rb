class Oscl < Formula
  desc "A minimal OSC command-line toolkit written in Common Lisp"
  homepage "https://github.com/ogrew/oscl"
  url "https://github.com/ogrew/oscl/releases/download/v0.2.0/oscl-macos-arm64-v020.zip"
  sha256 "5ffb29718ed96cd1d01bc05db7c69b4cc89626e1d314a01ebf6703c660fe9de9"
  license "MIT"

  if Hardware::CPU.intel?
    odie "oscl is only supported on Apple Silicon Macs (arm64). Sorry!"
  end

  def install
    bin.install "oscl"
  end
end
