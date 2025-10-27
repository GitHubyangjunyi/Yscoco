// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Yscoco",
	defaultLocalization: "en",
	platforms: [.iOS(.v15), .macOS(.v15), .watchOS(.v11), .tvOS(.v18), .visionOS(.v2)],
    products: [
        .library(name: "Yscoco", targets: ["Yscoco"]),
		.library(name: "YscocoOC", targets: ["YscocoOC"]),
    ],
	dependencies: [
		.package(url: "https://github.com/devxoul/Then", branch: "master"),
		.package(url: "https://github.com/ReactiveX/RxSwift", branch: "main"),
		.package(url: "https://github.com/SnapKit/SnapKit", branch: "develop"),
		.package(url: "https://github.com/airbnb/lottie-ios", branch: "master"),
		.package(url: "https://github.com/SDWebImage/SDWebImage", branch: "master"),
		.package(url: "https://github.com/SVProgressHUD/SVProgressHUD", branch: "master"),
		.package(url: "https://github.com/nicklockwood/SwiftFormat", branch: "main"),
	],
    targets: [
        .target(name: "Yscoco"),
		.target(name: "YscocoOC",
				dependencies: [],
				path: "Sources/YscocoOC",
				exclude: [],
				resources: [],
				publicHeadersPath: ".",
				cSettings: []),
		.testTarget(name: "YscocoTests", dependencies: ["Yscoco", "YscocoOC"]),
		.testTarget(name: "YscocoOCTests", dependencies: ["Yscoco", "YscocoOC"]),
    ],
	swiftLanguageModes: [.v6]
)
