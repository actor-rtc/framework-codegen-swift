# framework-codegen-swift

Swift `protoc` plugin that generates ACTR framework service stubs.

Binary name: `protoc-gen-actrframework-swift`.

## Requirements

- macOS 13+ (arm64 only)
- Swift 6+ (for building from source)
- `protoc`

## Install (Homebrew)

```bash
brew tap actor-rtc/tap
brew install protoc-gen-actrframework-swift
```

## Install (Build from source)

```bash
swift build -c release --product protoc-gen-actrframework-swift --arch arm64
cp .build/arm64-apple-macosx/release/protoc-gen-actrframework-swift /usr/local/bin/
```

## Usage

Ensure `protoc-gen-actrframework-swift` is on your `PATH`, then run:

```bash
protoc --actrframework-swift_out=. path/to/your.proto
```

The plugin generates `*.actor.swift` files.

## Release

- Tag `vX.Y.Z` to trigger the GitHub Actions release workflow.
- Use `scripts/build-release.sh` for local packaging.
- Homebrew formula template: `homebrew/protoc-gen-actrframework-swift.rb`.
- Release checklist: `docs/release.md`.
