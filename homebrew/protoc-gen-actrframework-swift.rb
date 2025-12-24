class ProtocGenActrframeworkSwift < Formula
  desc "Swift protoc plugin for generating ACTR framework stubs"
  homepage "https://github.com/actor-rtc/framework-codegen-swift"
  version "0.1.1"
  url "https://github.com/actor-rtc/framework-codegen-swift/releases/download/v#{version}/protoc-gen-actrframework-swift-macos-arm64.zip"
  sha256 "REPLACE_WITH_SHA256"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "protoc-gen-actrframework-swift"
  end

  def caveats
    <<~EOS
      This formula only supports Apple Silicon (arm64).
    EOS
  end
end
