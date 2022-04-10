# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kitsch < Formula
  desc ""
  homepage "https://kitschprompt.com"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jwalton/kitsch/releases/download/v0.0.10/kitsch_Darwin_x86_64.tar.gz"
      sha256 "33bbfe5f5a86049d5ea5a6a1afb41ca6ae5d98aafe188c8af2ebe78bca07fbc2"

      def install
        bin.install "kitsch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jwalton/kitsch/releases/download/v0.0.10/kitsch_Darwin_arm64.tar.gz"
      sha256 "bdf0a7d8ab108ebee0fbd591a7bda286b8b699e0a3a9aff7de4784ec6b5a2583"

      def install
        bin.install "kitsch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jwalton/kitsch/releases/download/v0.0.10/kitsch_Linux_x86_64.tar.gz"
      sha256 "9e554d8b5c0c936c2deade54c3257673cd27a472076465f04b10a2f66a545be8"

      def install
        bin.install "kitsch"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jwalton/kitsch/releases/download/v0.0.10/kitsch_Linux_arm64.tar.gz"
      sha256 "ebfe44976645349d61af9d00a7b33bf79586781435551798f9d836b2b626af48"

      def install
        bin.install "kitsch"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jwalton/kitsch/releases/download/v0.0.10/kitsch_Linux_armv6.tar.gz"
      sha256 "323c8e95f4726e530b51ba2922aa5b3754e1166ee7d29dbdba2a57c835071e3e"

      def install
        bin.install "kitsch"
      end
    end
  end

  def caveats; <<~EOS
    ***************************************************************************

      Please run "kitsch setup" for details about how to configure your shell
      to use kitsch.

    ***************************************************************************
  EOS
  end
end
