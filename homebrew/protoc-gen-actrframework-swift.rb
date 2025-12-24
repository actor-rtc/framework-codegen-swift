class ProtocGenActrframeworkSwift < Formula
  desc "Swift protoc plugin for generating ACTR framework stubs"
  homepage "https://github.com/actor-rtc/framework-codegen-swift"
  version "0.1.2"
  url "https://github.com/actor-rtc/framework-codegen-swift/releases/download/v#{version}/protoc-gen-actrframework-swift-macos-arm64.zip"
  sha256 "be28d7b92822b2aba08ae35f28b04aa996b932e9b350d04efef8762e68ab9445"

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
