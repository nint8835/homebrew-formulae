# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DeployKeychain < Formula
  desc "Command-line tool to permit the easy usage of multiple GitHub deploy keys simultaneously."
  homepage "https://github.com/nint8835/deploy-keychain"
  version "1.0.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nint8835/deploy-keychain/releases/download/v1.0.0/deploy-keychain_1.0.0_macos_amd64.tar.gz"
    sha256 "22eea0b0207377ab842534f3e7b0c9f0921878285e04a1c0b2ebb52cf1ee0580"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nint8835/deploy-keychain/releases/download/v1.0.0/deploy-keychain_1.0.0_macos_arm64.tar.gz"
    sha256 "7d386f32aa3ce447f5dab9f3addaeb0a1f4963c7361384fc1560ddd9015275ee"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nint8835/deploy-keychain/releases/download/v1.0.0/deploy-keychain_1.0.0_linux_amd64.tar.gz"
    sha256 "cda4bbde54d05898a0714c8adfc7688a84adb47fab633f3563f0154385fac218"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nint8835/deploy-keychain/releases/download/v1.0.0/deploy-keychain_1.0.0_linux_arm64.tar.gz"
    sha256 "29932ce76cb77167ac776d54a97b91f5eff9b9400a6ef8b898777ba8f933b761"
  end

  def install
    bin.install "deploy-keychain"
  end
end
